
{******************************************************}
{模块名称：销售退货统计分析模块                        }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    销售退货数据统计报表                        }
{日期：    2004年02月24日                              }
{******************************************************}
unit UnSaleStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB,
  ADODB, TeEngine, Series, TeeProcs, Chart, PrnDbgeh;

type
  TUnSaleFrm = class(TForm)
    Panel15: TPanel;
    Label13: TLabel;
    SBCust: TSpeedButton;
    SBPrdtName: TSpeedButton;
    SBType: TSpeedButton;
    SBBrand: TSpeedButton;
    CBXYear: TComboBox;
    ESPrdtName: TEdit;
    CBXCust: TComboBox;
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
    PrnGrid: TPrintDBGridEh;
    CbxSType: TComboBox;
    Label1: TLabel;
    CBXMonth: TComboBox;
    Label2: TLabel;
    SaleStatProc: TADOStoredProc;
    SBArea: TSpeedButton;
    cbxArea: TComboBox;
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
    procedure CbxSTypeChange(Sender: TObject);
    procedure SBExpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnSaleFrm: TUnSaleFrm;

implementation

{$R *.dfm}
uses Main, PubMessage, SerachCust, SetPrdt;

procedure TUnSaleFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SaleStatProc.Active := False;
  UnSaleFrm := nil;
  Action := caFree;
end;

procedure TUnSaleFrm.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
  I: integer;
begin
  Caption := LabTitle.Caption;
  WindowState := wsMaximized;
  cbxsType.ItemIndex := 0;
  Page.ActivePageIndex := 0;
  DeCodeDate(Date, Year, Month, Day);
  for I := Year downto (Year - 10) do
  begin
    CBXYear.Items.Add(IntToStr(I));
  end;
  CBXYear.ItemIndex := 0;
  CBXMonth.ItemIndex := 0;
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

procedure TUnSaleFrm.SBExtClick(Sender: TObject);
begin
  Close;
end;

procedure TUnSaleFrm.SBAddClick(Sender: TObject);
var
  I, lEnd, lStart: integer;
begin
  if not OperRights(SYS_OPR_ID, '02004', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if (cbxsType.ItemIndex = 3) and (cbxMonth.text = '不按月') then
  begin
    ShowMessage('请输入要查询的月份');
    cbxMonth.SetFocus;
    exit;
  end;
  ProcessData(True);
  //ShowHide(MSG_PROCESS_DATA);
  Grid.Columns.Clear;
  with SaleStatProc do
  begin
    Close;
    DisableControls;
    Parameters.ParamByName('@Flag').Value := cbxsType.ItemIndex;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear.Text);
    if cbxsType.ItemIndex = 3 then
      Parameters.ParamByName('@Month').Value := StrToInt(CBXMonth.Text);
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
      case cbxsType.ItemIndex of
        0: {按照客户统计}
          begin
            Columns[0].Width := 150;
            Columns[0].Title.Caption := '客户名称';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '合计';
            Columns[0].Title.TitleButton := True;
            for I := 1 to Columns.Count - 1 do
            begin
              Columns[I].Width := 80;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
            end;
            for I := 4 to Columns.Count - 1 do
            begin
              Columns[I].Title.Caption := IntToStr(I - 3) + '月';
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
            end;
            EnableControls;
            TStringGrid(Grid).FixedCols := 4;
          end;
        1: {按照区域统计}
          begin
            Columns[0].Width := 150;
            Columns[0].Title.Caption := '区域';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '合计';
            Columns[0].Title.TitleButton := True;
            for I := 1 to Columns.Count - 1 do
            begin
              Columns[I].Width := 80;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
            end;
            for I := 4 to Columns.Count - 1 do
            begin
              Columns[I].Title.Caption := IntToStr(I - 3) + '月';
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
            end;
            EnableControls;
            TStringGrid(Grid).FixedCols := 4;
          end;

        2: {月销量统计}
          begin
            Columns[0].Width := 150;
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '合计';
            Columns[0].Title.TitleButton := True;
            Columns[1].Width := 30;
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
            EnableControls;
            TStringGrid(Grid).FixedCols := 3;
          end;
        3: {日销量统计}
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
            EnableControls;
            TStringGrid(Grid).FixedCols := 2;
          end;
        4: {按照品牌统计}
          begin
            Columns[0].Visible := false;
            Columns[1].Visible := false;
            Columns[2].Width := Grid.Width - 27 - 260;
            Columns[2].Title.Caption := '商品类别';
            Columns[2].Footer.ValueType := fvtStaticText;
            Columns[2].Footer.Value := '合计';
            Columns[2].Title.TitleButton := True;
            Columns[3].Width := 100;
            Columns[3].Title.Caption := '商品品牌';
            Columns[3].Title.TitleButton := True;
            Columns[4].Title.Caption := '数量';
            Columns[4].width := 80;
            Columns[4].DisplayFormat := SYS_QTY_FORMAT;
            Columns[4].Footer.ValueType := fvtSum;
            Columns[4].Footer.FieldName := 'TQty';
            Columns[4].Footer.DisplayFormat := Columns[4].DisplayFormat;
            Columns[4].Title.TitleButton := True;
            Columns[5].Title.Caption := '金额';
            Columns[5].width := 80;
            Columns[5].DisplayFormat := SYS_PRICE_FORMAT;
            Columns[5].Footer.ValueType := fvtSum;
            Columns[5].Footer.FieldName := 'TAmt';
            Columns[5].Footer.DisplayFormat := Columns[5].DisplayFormat;
            Columns[5].Title.TitleButton := True;
            EnableControls;
          end;
        5: {按照类别统计}
          begin
            Columns[0].Visible := false;
            Columns[1].Width := Grid.Width - 27 - 220;
            Columns[1].Title.Caption := '商品类别';
            Columns[1].Footer.ValueType := fvtStaticText;
            Columns[1].Footer.Value := '合计';
            Columns[1].Title.TitleButton := True;
            Columns[2].Title.Caption := '数量';
            Columns[2].Width := 110;
            Columns[2].DisplayFormat := SYS_QTY_FORMAT;
            Columns[2].Footer.ValueType := fvtSum;
            Columns[2].Footer.FieldName := 'TQty';
            Columns[2].Footer.DisplayFormat := Columns[2].DisplayFormat;
            Columns[2].Title.TitleButton := True;
            Columns[3].Title.Caption := '金额';
            Columns[3].Width := 110;
            Columns[3].DisplayFormat := SYS_PRICE_FORMAT;
            Columns[3].Footer.ValueType := fvtSum;
            Columns[3].Footer.FieldName := 'TAmt';
            Columns[3].Footer.DisplayFormat := Columns[3].DisplayFormat;
            Columns[3].Title.TitleButton := True;
            EnableControls;
          end;
      end; //end of case
    end; //end of Grid
  end; //end of PrdtProc
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TUnSaleFrm.CBXTypeChange(Sender: TObject);
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

procedure TUnSaleFrm.SBCustClick(Sender: TObject);
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

procedure TUnSaleFrm.GridTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TUnSaleFrm.PageChange(Sender: TObject);
var
  vp, I: integer;
  Bar: TBarSeries;
  FastLine: TFastLineSeries;
  Pie: TPieSeries;
  ColorArray: array[1..7] of Tcolor;
begin
  ColorArray[1] := clRed;
  ColorArray[2] := clLime;
  ColorArray[3] := clYellow;
  ColorArray[4] := clBlue;
  ColorArray[5] := clFuchsia;
  ColorArray[6] := clAqua;
  ColorArray[7] := clWhite;
  if (Page.ActivePageIndex = 1) and (DS.DataSet.Active) then
  begin
    Chart1.SeriesList.Clear;
    Chart1.Title.Text.Clear;
    Chart1.Title.Text.Add(DS.DataSet.fields[0].Value);
    case cbxSType.ItemIndex of
      0, 1, 2: {柱状图}
        begin
          Bar := TBarSeries.Create(nil);
          Bar.ParentChart := Chart1;
          Bar.ShowInLegend := False;
          Bar.Marks.Style := smsValue;
          Bar.BarWidthPercent := 70;
          vp := 4;
        end;
      3: {按照日线统计} {折线图}
        begin
          FastLine := TFastLineSeries.Create(nil);
          FastLine.ParentChart := Chart1;
          FastLine.ShowInLegend := False;
          FastLine.Marks.Visible := False;
          vp := 3;
        end;
      4, 5: {饼图}
        begin
          Chart1.Title.Text.Clear;
          Chart1.Title.Text.Add('商品品牌和类别销售饼图');
          Pie := TPieSeries.Create(nil);
          Pie.ParentChart := Chart1;
          Pie.ShowInLegend := False;
          Pie.Marks.Style := smsLabelPercent;
        end;
    end;
    with Chart1.Series[0] do
    begin
      Clear;
      case cbxSType.ItemIndex of
        0, 1, 2, 3: {柱状图}
          begin
            for I := vp to (DS.DataSet.FieldCount - 1) do
            begin
              {Application.ProcessMessages;}
              Add(DS.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clRed);
            end;
          end;
        4:
          begin
            i := 1;
            Ds.DataSet.First;
            while not Ds.DataSet.Eof do
            begin
              Application.ProcessMessages;
              Pie.AddPie(Ds.DataSet.FieldByName('TAmt').value,
                Ds.DataSet.fieldByName('cBrandAbbr').Value, ColorArray[I]);
              Inc(I);
              if I > 7 then I := 1;
              Ds.DataSet.next;
            end
          end;
        5:
          begin
            i := 1;
            Ds.DataSet.First;
            while not Ds.DataSet.Eof do
            begin
              Application.ProcessMessages;
              Pie.AddPie(Ds.DataSet.FieldByName('TAmt').value,
                Ds.DataSet.fieldByName('cTypeAbbr').Value, ColorArray[I]);
              Inc(I);
              if I > 7 then I := 1;
              Ds.DataSet.next;
            end
          end;
      end;
    end;
  end;
end;

procedure TUnSaleFrm.SBPrnClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02004', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Ds.DataSet.Active then PrnGrid.Preview;
end;

procedure TUnSaleFrm.CbxSTypeChange(Sender: TObject);
begin
  if cbxsType.ItemIndex <> 3 then
    with cbxMonth do
    begin
      ItemIndex := 0;
      Enabled := False;
    end
  else cbxMonth.Enabled := True;
  Page.ActivePageIndex := 0;
end;
procedure TUnSaleFrm.SBExpClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02004', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if ExportToXLS(Grid, LabTitle.Caption + '(' + cbxSType.Text + ')') then
    ShowMessage(MSG_EXPT_DOON);
end;

end.

