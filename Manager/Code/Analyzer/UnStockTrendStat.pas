
{******************************************************}
{模块名称：采购退货趋势分析模块                        }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    采购退货趋势变动分析                        }
{日期：    2004年02月23日                              }
{******************************************************}
unit UnStockTrendStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB,
  ADODB, TeEngine, Series, TeeProcs, Chart, PrnDbgeh, Menus;

type
  TUnStockTrendStatFrm = class(TForm)
    Panel15: TPanel;
    SBPrdtName: TSpeedButton;
    SBType: TSpeedButton;
    SBBrand: TSpeedButton;
    ESPrdtName: TEdit;
    CBXType: TComboBox;
    CBXBrand: TComboBox;
    LabTitle: TLabel;
    DS: TDataSource;
    SBExt: TSpeedButton;
    SBPrn: TSpeedButton;
    SBAdd: TSpeedButton;
    Page: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGridEh;
    Chart1: TChart;
    CBXYear: TComboBox;
    Label13: TLabel;
    CBXMonth: TComboBox;
    Label2: TLabel;
    Series1: TFastLineSeries;
    PrnGrid: TPrintDBGridEh;
    Label1: TLabel;
    cbxUpDown: TComboBox;
    Label3: TLabel;
    CBXMons: TComboBox;
    Label4: TLabel;
    CbxTrend: TComboBox;
    PrdtProc: TADOStoredProc;
    SBArea: TSpeedButton;
    cbxArea: TComboBox;
    SBCust: TSpeedButton;
    CBXCust: TComboBox;
    SBExp: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SBExtClick(Sender: TObject);
    procedure SBAddClick(Sender: TObject);
    procedure CBXTypeChange(Sender: TObject);
    procedure SBCustClick(Sender: TObject);
    procedure GridTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure PageChange(Sender: TObject);
    procedure SBPrnClick(Sender: TObject);
    procedure CbxTrendChange(Sender: TObject);
    procedure SBExpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnStockTrendStatFrm: TUnStockTrendStatFrm;

implementation

{$R *.dfm}
uses Main, PubMessage, SetPrdt, SerachCust;

procedure TUnStockTrendStatFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PrdtProc.Active := False;
  UnStockTrendStatFrm := nil;
  Action := caFree;
end;

procedure TUnStockTrendStatFrm.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
  I: integer;
begin
  Caption := LabTitle.Caption;
  WindowState := wsMaximized;
  Page.ActivePageIndex := 0;
  cbxTrend.ItemIndex := 0;
  DeCodeDate(Date, Year, Month, Day);
  for I := Year downto (Year - 10) do
  begin
    CBXYear.Items.Add(IntToStr(I));
  end;
  CBXYear.ItemIndex := 0;
  CBXMonth.ItemIndex := Month - 1;
  CBXUpDown.ItemIndex := 0;
  CBXMons.ItemIndex := 2;
  {添加区域列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cAreaName From AreaInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxArea, MainFrm.AdoTmp, True); //区域
  {添加商品类别}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cTypeAbbr From PrdtType');
  end;
  Application.ProcessMessages;
  AddCombo(CBXType, MainFrm.AdoTmp, True);

end;

procedure TUnStockTrendStatFrm.SBExtClick(Sender: TObject);
begin
  Close;
end;

procedure TUnStockTrendStatFrm.SBAddClick(Sender: TObject);
var
  I, lEnd, lStart: integer;
begin
  if not OperRights(SYS_OPR_ID, '02012', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ShowHide(MSG_PROCESS_DATA);
  Grid.Columns.Clear;
  with PrdtProc do
  begin
//    DisableControls;
    Close;
    Parameters.ParamByName('@Flag').Value := cbxTrend.ItemIndex;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear.Text);
    Parameters.ParamByName('@Month').Value := StrToInt(CBXMonth.Text);
    Parameters.ParamByName('@Mons').Value := StrToInt(CBXMons.Text);
    Parameters.ParamByName('@Updown').Value := CBXUpdown.ItemIndex;
    if CbxArea.Text = '全部' then
      Parameters.ParamByName('@cAreaName').Value := '%'
    else
      Parameters.ParamByName('@cAreaName').Value := '%' + CbxArea.Text + '%';
    if CbxCust.Text = '全部' then
      Parameters.ParamByName('@cCustName').Value := '%'
    else
      Parameters.ParamByName('@cCustName').Value := '%' + CbxCust.Text + '%';
    if CbxType.Text = '全部' then
      Parameters.ParamByName('@cTypeName').Value := '%'
    else
      Parameters.ParamByName('@cTypeName').Value := '%' + CbxType.Text + '%';
    if CBXBrand.Text = '全部' then
      Parameters.ParamByName('@cBrandName').Value := '%'
    else
      Parameters.ParamByName('@cBrandName').Value := '%' + CbxBrand.Text + '%';
    Parameters.ParamByName('@cPrdtName').Value := '%' + ESPrdtName.Text + '%';
    lStart := GetTickCount;
    Open;
    lEnd := GetTiCkCount;
    with Grid do
    begin
      Columns.AddAllColumns(True);
      case cbxTrend.ItemIndex of
        1: {按照客户统计}
          begin
            Columns[0].Width := 150;
            Columns[0].Title.Caption := '客户名称';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '合计';
            Columns[0].Title.TitleButton := True;
            for I := 1 to Columns.Count - 1 do
            begin
              Columns[I].Width := 70;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
            end;
            ChgGridWidth(Grid);
          end;
        0: {商品销售趋势统计}
          begin
            Columns[0].Width := 150;
            Columns[0].Title.Caption := '商品名称';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '合计';
            Columns[0].Title.TitleButton := True;
            Columns[1].Width := 30;
            Columns[1].Title.Caption := '单位';
            Columns[1].Title.TitleButton := True;
            Columns[1].Alignment := taCenter;
            for I := 2 to Columns.Count - 1 do
            begin
              Columns[I].Width := 70;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
            end;
            ChgGridWidth(Grid);
          end;
        2: {按照区域统计}
          begin
            Columns[0].Width := 150;
            Columns[0].Title.Caption := '区域';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '合计';
            Columns[0].Title.TitleButton := True;
            for I := 1 to Columns.Count - 1 do
            begin
              Columns[I].Width := 70;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
            end;
            ChgGridWidth(Grid);
          end;
      end;
  //      EnableControls;
    end;
    ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
  end;
end;

procedure TUnStockTrendStatFrm.CBXTypeChange(Sender: TObject);
var
  SQLStr, ComboText: string;
begin
  {根据商品类别更新商品品牌}
  ComboText := Trim((Sender as TComboBox).Text);
  if ComboText = '全部' then
    SqlStr := '%'
  else
    SqlStr := ComboText + '%';
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select cBrandAbbr From PrdtBrand where cTypeID ');
    Sql.Add(' in (Select cTypeID From PrdtType where cTypeAbbr like :cTypeAbbr)');
    Parameters.ParamByName('cTypeAbbr').DataType := ftString;
    Parameters.ParamByName('cTypeAbbr').size := 20;
    Parameters.ParamByName('cTypeAbbr').Value := SqlStr;
  end;

  AddCombo(cbxBrand, MainFrm.ADOTmp, True);
end;

procedure TUnStockTrendStatFrm.SBCustClick(Sender: TObject);
begin
  if Sender = SBArea then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 4;
      Page.Pages[4].TabVisible := True;
      BtnAdd.Caption := '新建区域(&W)';
      BtnPre.Enabled := False;
      BtnFindClick(Sender);
      ShowModal;
      if Name <> '' then cbxArea.Text := Name;
      Release;
    end;
  end;
  if Sender = SBCust then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 0;
      Page.Pages[0].TabVisible := True;
      BtnAdd.Caption := '新建供应商(&W)';
      BtnFindClick(Sender);
      ShowModal;
      if Name <> '' then cbxCust.Text := Name;
      Release;
    end;
  end;
  if (sender = SBType) or (sender = SBBrand) or (sender = SBPrdtName) then
  begin
    Application.CreateForm(TSetPrdtFrm, SetPrdtFrm);
    with SetPrdtFrm do
    begin
      BtnSel.Enabled := True;
      ShowModal;
      if PrdtID <> '' then
      begin
        {商品采购类别选择}
        if sender = SBType then
        begin
          CbxType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXTypeChange(CbxType);
        end;
        if sender = SBBrand then CbxBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBPrdtName then ESPrdtName.Text := PrdtQry.FieldByName('cName').AsString;
        Release;
      end;
    end;
  end;
end;

procedure TUnStockTrendStatFrm.GridTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TUnStockTrendStatFrm.PageChange(Sender: TObject);
var
  I: integer;
begin
  if (Page.ActivePageIndex = 1) and (ds.DataSet.RecordCount >= 1) then
    with Series1 do
    begin
      Chart1.Title.Text.Clear;
      Chart1.Title.Text.Add(ds.DataSet.fields[0].Value);
      Clear;
      Application.ProcessMessages;
      for I := 1 to (ds.DataSet.FieldCount - 1) do
      begin
        try
          Add(ds.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clRed);
        except
        end;
      end;
    end;
end;

procedure TUnStockTrendStatFrm.SBPrnClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02012', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Ds.DataSet.Active then PrnGrid.Preview;
end;

procedure TUnStockTrendStatFrm.CbxTrendChange(Sender: TObject);
begin
  Page.ActivePageIndex := 0;
end;

procedure TUnStockTrendStatFrm.SBExpClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02012', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if ExportToXLS(Grid, LabTitle.Caption + '(' + cbxTrend.Text + ')') then
    ShowMessage(MSG_EXPT_DOON);
end;

end.

