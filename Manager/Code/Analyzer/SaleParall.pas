
{******************************************************}
{模块名称：客户分析模块                                }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    销售数据在指定年份之间进行对比              }
{日期：    2003年11月20日                              }
{******************************************************}

unit SaleParall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, TeeProcs, Chart, Grids, DBGridEh, StdCtrls,
  Buttons, ExtCtrls, PrnDbgeh, DB, ADODB;

type
  TSaleParallFrm = class(TForm)
    Panel15: TPanel;
    Label13: TLabel;
    SBPrdtName: TSpeedButton;
    SBType: TSpeedButton;
    SBBrand: TSpeedButton;
    LabTitle: TLabel;
    SBExt: TSpeedButton;
    SBPrn: TSpeedButton;
    SBAdd: TSpeedButton;
    Label1: TLabel;
    CBXYear: TComboBox;
    ESPrdtName: TEdit;
    CBXType: TComboBox;
    CBXBrand: TComboBox;
    CbxSType: TComboBox;
    Grid: TDBGridEh;
    SaleParall: TADOStoredProc;
    DS: TDataSource;
    PrnGrid: TPrintDBGridEh;
    Label2: TLabel;
    CBxQtr: TCheckBox;
    cbxPerYear: TComboBox;
    Splitter: TSplitter;
    Chart1: TChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    SBArea: TSpeedButton;
    cbxArea: TComboBox;
    SBCust: TSpeedButton;
    CBXCust: TComboBox;
    SBExp: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBExtClick(Sender: TObject);
    procedure SBPrnClick(Sender: TObject);
    procedure SBAddClick(Sender: TObject);
    procedure SBCustClick(Sender: TObject);
    procedure CBXTypeChange(Sender: TObject);
    procedure SaleParallAfterScroll(DataSet: TDataSet);
    procedure GridTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure SBExpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaleParallFrm: TSaleParallFrm;

implementation

{$R *.dfm}
uses Main, PubMessage, SerachCust, SetPrdt;

procedure TSaleParallFrm.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
  I: integer;
begin
  Caption := LabTitle.Caption;
  WindowState := wsMaximized;
  cbxsType.ItemIndex := 0;
  DeCodeDate(Date, Year, Month, Day);
  for I := Year downto (Year - 10) do
  begin
    CBXYear.Items.Add(IntToStr(I));
    CBXPerYear.Items.Add(IntToStr(I));
  end;
  CBXYear.ItemIndex := 0;
  CBXPerYear.ItemIndex := 1;
  {添加区域列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cAreaName From AreaInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxArea, MainFrm.AdoTmp, True); //区域
  {添加客户列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cCustName From CustInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxCust, MainFrm.AdoTmp, True); //销售单
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

procedure TSaleParallFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SaleParallFrm := nil;
  Action := caFree;
end;

procedure TSaleParallFrm.SBExtClick(Sender: TObject);
begin
  Close;
end;

procedure TSaleParallFrm.SBPrnClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02011', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Ds.DataSet.Active then PrnGrid.Preview;
end;

procedure TSaleParallFrm.SBAddClick(Sender: TObject);
var
  I, lEnd, lStart: integer;
begin
  if not OperRights(SYS_OPR_ID, '02011', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if cbxYear.Text = cbxPerYear.Text then
  begin
    ShowMessage('基本年份与比较年份相同');
    exit;
  end;
  if (cbxsType.ItemIndex = 2) and (CbxType.Text = '全部') then
  begin
    ShowMessage('请选择要统计的商品类别');
    CbxType.SetFocus;
    Exit;
  end;
  ProcessData(True);
  Grid.Columns.Clear;
  with SaleParall do
  begin
    AfterScroll := nil;
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear.Text);
    Parameters.ParamByName('@Flag').Value := cbxsType.ItemIndex;
    Parameters.ParamByName('@PerYear').Value := StrToInt(CBXPerYear.Text);
    Parameters.ParamByName('@Querter').Value := cbxqtr.Checked;
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
    if cbxsType.ItemIndex = 2 then
      Parameters.ParamByName('@cTypeName').Value := CbxType.Text;
    if CBXBrand.Text = '全部' then
      Parameters.ParamByName('@cBrandName').Value := '%'
    else
      Parameters.ParamByName('@cBrandName').Value := '%' + CbxBrand.Text + '%';
    Parameters.ParamByName('@cPrdtName').Value := '%' + ESPrdtName.Text + '%';
    lStart := GetTickCount;
    Open;
    lEnd := GetTiCkCount;
    AfterScroll := SaleParallAfterScroll;
    first;
  end;
  if cbxsType.ItemIndex = 0 then
    Grid.Visible := False
  else
    Grid.Visible := True;
  case cbxsType.ItemIndex of
    0: {按照销售额统计}
      begin
        Chart1.Series[0].Clear;
        Chart1.Series[1].Clear;
        for I := 0 to (DS.DataSet.FieldCount - 1) do
        begin
          Application.ProcessMessages;
          if (I mod 2) = 0 then
            Chart1.Series[0].Add(DS.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clRed)
          else
            Chart1.Series[1].Add(DS.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clBlue);
        end;
      end;
    1: {按照销售类别统计}
      begin
        Grid.Columns.Add;
        Grid.Columns[0].FieldName := ds.DataSet.Fields[0].FieldName;
        Grid.Columns[0].Title.TitleButton := True;
        Grid.Columns[0].Title.Caption := '商品类别';

      end;
    2: {按照销售品牌统计}
      begin
        Grid.Columns.Add;
        Grid.Columns[0].FieldName := ds.DataSet.Fields[0].FieldName;
        Grid.Columns[0].Title.TitleButton := True;
        Grid.Columns[0].Title.Caption := '商品品牌';
      end;
    3: {按照客户名称统计}
      begin
        Grid.Columns.Add;
        Grid.Columns[0].FieldName := ds.DataSet.Fields[0].FieldName;
        Grid.Columns[0].Width := 150;
        Grid.Columns[0].Title.TitleButton := True;
        Grid.Columns[0].Title.Caption := '客户名称';
      end;
  end;
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TSaleParallFrm.SBCustClick(Sender: TObject);
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
      Page.ActivePageIndex := 1;
      Page.Pages[1].TabVisible := True;
      BtnAdd.Caption := '新建客户(&W)';
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

procedure TSaleParallFrm.CBXTypeChange(Sender: TObject);
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

procedure TSaleParallFrm.SaleParallAfterScroll(DataSet: TDataSet);
var
  i: integer;
begin
  Chart1.Series[0].Clear;
  Chart1.Series[1].Clear;
  for I := 1 to (DS.DataSet.FieldCount - 1) do
  begin
    Application.ProcessMessages;
    if (I mod 2) = 0 then
      Chart1.Series[1].Add(DS.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clBlue)
    else
      Chart1.Series[0].Add(DS.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clRed);
  end;
end;

procedure TSaleParallFrm.GridTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TSaleParallFrm.SBExpClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02011', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if ExportToXLS(Grid, LabTitle.Caption + '(' + cbxSType.Text + ')') then
    ShowMessage(MSG_EXPT_DOON);

end;

end.

