unit CustAnas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, PrnDbgeh, DB, ADODB,
  Series, Chart, Grids, DBGridEh, Spin, TeEngine, TeeProcs;

type
  TCustAnasFrm = class(TForm)
    Panel15: TPanel;
    SBCust: TSpeedButton;
    SBPrdtName: TSpeedButton;
    LabTitle: TLabel;
    Page: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ESPrdtName: TEdit;
    Page0: TPageControl;
    TabSheet1: TTabSheet;
    Grid0: TDBGridEh;
    TabSheet2: TTabSheet;
    Chart0: TChart;
    SaleStatProc: TADOStoredProc;
    DS0: TDataSource;
    PrnGrid: TPrintDBGridEh;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    CBXType: TComboBox;
    CBXBrand: TComboBox;
    SBType: TSpeedButton;
    SBBrand: TSpeedButton;
    cbxCust: TComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CbxSType0: TComboBox;
    CBXYear0: TComboBox;
    Label13: TLabel;
    CBXMonth0: TComboBox;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    CbxTrend: TComboBox;
    Label3: TLabel;
    CBXYear1: TComboBox;
    Label5: TLabel;
    CBXMonth1: TComboBox;
    Label6: TLabel;
    CBXMons1: TComboBox;
    Label7: TLabel;
    cbxUpDown1: TComboBox;
    DS1: TDataSource;
    Page1: TPageControl;
    TabSheet9: TTabSheet;
    Grid1: TDBGridEh;
    TabSheet10: TTabSheet;
    Chart1: TChart;
    Series1: TFastLineSeries;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    CbxAlarm: TComboBox;
    Label9: TLabel;
    CBXYear2: TComboBox;
    Label10: TLabel;
    CBXMonth2: TComboBox;
    Label11: TLabel;
    cbxUpDown2: TComboBox;
    Label12: TLabel;
    SEPercent: TSpinEdit;
    Label14: TLabel;
    Grid2: TDBGridEh;
    AlarmProc: TADOStoredProc;
    DS2: TDataSource;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    CbxSType: TComboBox;
    CBXYear3: TComboBox;
    Label16: TLabel;
    cbxPerYear3: TComboBox;
    Label17: TLabel;
    CBxQtr: TCheckBox;
    SaleParall: TADOStoredProc;
    DS3: TDataSource;
    Grid3: TDBGridEh;
    Splitter: TSplitter;
    Chart2: TChart;
    BarSeries1: TBarSeries;
    Series2: TBarSeries;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cbxSType2: TComboBox;
    cbxYear4: TComboBox;
    cbxMonth4: TComboBox;
    Page2: TPageControl;
    TabSheet11: TTabSheet;
    Grid4: TDBGridEh;
    TabSheet12: TTabSheet;
    Chart4: TChart;
    UnSaleStatProc: TADOStoredProc;
    DS4: TDataSource;
    GroupBox6: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    cbxUnTrend: TComboBox;
    cbxUnYear: TComboBox;
    cbxUnMonth: TComboBox;
    cbxUnMons: TComboBox;
    cbxUnUpDown: TComboBox;
    Page3: TPageControl;
    TabSheet13: TTabSheet;
    Grid5: TDBGridEh;
    TabSheet14: TTabSheet;
    Chart3: TChart;
    FastLineSeries1: TFastLineSeries;
    unPrdtProc: TADOStoredProc;
    DS5: TDataSource;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    cbxUnAlarm: TComboBox;
    cbxUnAYear: TComboBox;
    cbxUnAMonth: TComboBox;
    cbxUnAUpDown: TComboBox;
    SEUnPercent: TSpinEdit;
    Grid6: TDBGridEh;
    UnAlarmProc: TADOStoredProc;
    DS6: TDataSource;
    GroupBox8: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    cbxUnSaleType: TComboBox;
    cbxUnSaleYear: TComboBox;
    cbxUnSalePerYear: TComboBox;
    chkUnSaleQtr: TCheckBox;
    Chart5: TChart;
    BarSeries2: TBarSeries;
    BarSeries3: TBarSeries;
    Grid7: TDBGridEh;
    UnSaleParall: TADOStoredProc;
    DS7: TDataSource;
    PrdtProc: TADOStoredProc;
    SBExp: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBXTypeChange(Sender: TObject);
    procedure SBCustClick(Sender: TObject);
    procedure btnSBAdd1Click(Sender: TObject);
    {销售统计分析}
    procedure SaleStat;
    procedure Page0Change(Sender: TObject);
    procedure CbxSType0Change(Sender: TObject);
    procedure Grid0TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    {销售趋势分析}
    procedure SaleTrendStat;
    procedure Page1Change(Sender: TObject);
    {销售异动分析}
    procedure SaleAlarmStat;
    {销售对比分析}
    procedure SaleParallStat;
    procedure SaleParallAfterScroll(DataSet: TDataSet);
    {销售退货统计分析}
    procedure unSaleStat;
    procedure Page2Change(Sender: TObject);
    procedure cbxSType2Change(Sender: TObject);
    {销售退货趋势分析}
    procedure UnSaleTrendStat;
    procedure Page3Change(Sender: TObject);
    {销售退货异动分析}
    procedure UnSaleAlarmStat;
    {销售退货对比分析}
    procedure unSaleParallStat;
    procedure UnSaleParallAfterScroll(DataSet: TDataSet);
    procedure btnSBExt1Click(Sender: TObject);
    procedure btnSBPrn1Click(Sender: TObject);
    procedure SBExpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustAnasFrm: TCustAnasFrm;

implementation
uses Main, PubMessage, SerachCust, SetPrdt;

{$R *.dfm}

procedure TCustAnasFrm.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
  I: integer;
begin
  Caption := LabTitle.Caption;
  WindowState := wsMaximized;
  {添加客户列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cCustName From CustInfo order by cCustName');
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
  DeCodeDate(Date, Year, Month, Day);
  Page.ActivePageIndex := 0;
  AddCombo(CBXType, MainFrm.AdoTmp, True);
  {销售统计}
  for I := Year downto (Year - 10) do
  begin
    CBXYear0.Items.Add(IntToStr(I));
    CBXYear1.Items.Add(IntToStr(I));
    CBXYear2.Items.Add(IntToStr(I));
    CBXYear3.Items.Add(IntToStr(I));
    CBXPerYear3.Items.Add(IntToStr(I));
    cbxYear4.Items.Add(IntToStr(I));
    cbxUnYear.Items.Add(IntToStr(I));
    cbxUnAYear.Items.Add(IntToStr(I));
    CBXUnSaleYear.Items.Add(IntToStr(I));
    CBXUnSalePerYear.Items.Add(IntToStr(I));
  end;

  CBXYear0.ItemIndex := 0;
  CBXMonth0.ItemIndex := 0;
  cbxsType0.ItemIndex := 0;

  cbxTrend.ItemIndex := 0;
  CBXYear1.ItemIndex := 0;
  CBXMonth1.ItemIndex := Month - 1;
  CBXMons1.ItemIndex := 2;
  cbxUpDown1.ItemIndex := 0;

  CbxAlarm.ItemIndex := 0;
  CBXYear2.ItemIndex := 0;
  CBXMonth2.ItemIndex := Month - 1;
  cbxUpDown2.ItemIndex := 0;

  cbxSType.ItemIndex := 0;
  CBXYear3.ItemIndex := 0;
  CBXPerYear3.ItemIndex := 1;

  CBXYear4.ItemIndex := 0;
  CBXMonth4.ItemIndex := 0;
  cbxsType2.ItemIndex := 0;

  cbxUnTrend.ItemIndex := 0;
  cbxUnYear.ItemIndex := 0;
  CBXUnMonth.ItemIndex := Month - 1;
  CBXUnMons.ItemIndex := 2;
  cbxUnUpDown.ItemIndex := 0;

  CbxUnAlarm.ItemIndex := 0;
  CBXUnAYear.ItemIndex := 0;
  CBXUnAMonth.ItemIndex := Month - 1;
  cbxUnAUpDown.ItemIndex := 0;

  cbxUnSaleType.ItemIndex := 0;
  CBXUnSaleYear.ItemIndex := 0;
  CBXUnSalePerYear.ItemIndex := 1;
end;

procedure TCustAnasFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CustAnasFrm := nil;
  Action := caFree;
end;

procedure TCustAnasFrm.CBXTypeChange(Sender: TObject);
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

procedure TCustAnasFrm.SBCustClick(Sender: TObject);
begin
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

procedure TCustAnasFrm.btnSBAdd1Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02019', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  case Page.ActivePageIndex of
    0: SaleStat; {销售统计分析}
    1: SaleTrendStat; {销售趋势统计分析}
    2: SaleAlarmStat; {销售异动统计分析}
    3: SaleParallStat; {销售对比分析}
    4: unSaleStat;
    5: UnSaleTrendStat;
    6: UnSaleAlarmStat;
    7: unSaleParallStat;
  end;
end;

  {销售统计分析}

procedure TCustAnasFrm.SaleStat;
var
  V, I, lEnd, lStart: integer;
begin
  {取消了按区域统计，所以做这个处理}
  v := cbxsType0.ItemIndex;
  if v > 0 then
    V := V + 1;

  if (cbxsType0.ItemIndex = 2) and (cbxMonth0.text = '不按月') then
  begin
    ShowMessage('请输入要查询的月份');
    cbxMonth0.SetFocus;
    exit;
  end;
  //ShowHide(MSG_PROCESS_DATA);
  ProcessData(True);
  Grid0.Columns.Clear;
  SaleStatProc.Active := False;
  with SaleStatProc do
  begin
    Close;
    //DisableControls;
    Parameters.ParamByName('@Flag').Value := v; //cbxsType0.ItemIndex;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear0.Text);
    if cbxsType0.ItemIndex = 2 then
      Parameters.ParamByName('@Month').Value := StrToInt(CBXMonth0.Text);
    Parameters.ParamByName('@cAreaName').Value := '%';
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
    with Grid0 do
    begin
      Columns.AddAllColumns(True);
      case cbxsType0.ItemIndex of
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
              Columns[I].Footer.FieldName := DS0.DataSet.Fields[i].DisplayLabel;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
            end;
            EnableControls;
            TStringGrid(Grid0).FixedCols := 4;
          end;

        1: {月销量统计}
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
              Columns[I].Footer.FieldName := DS0.DataSet.Fields[i].DisplayLabel;
            end;
            EnableControls;
            TStringGrid(Grid0).FixedCols := 3;
          end;
        2: {日销量统计}
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
              Columns[I].Footer.FieldName := DS0.DataSet.Fields[i].DisplayLabel;
            end;
            EnableControls;
            TStringGrid(Grid0).FixedCols := 2;
          end;
        3: {按照品牌统计}
          begin
            Columns[0].Visible := false;
            Columns[1].Visible := false;
            Columns[2].Width := Grid0.Width - 27 - 260;
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
        4: {按照类别统计}
          begin
            Columns[0].Visible := false;
            Columns[1].Width := Grid0.Width - 27 - 220;
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

procedure TCustAnasFrm.Page0Change(Sender: TObject);
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
  if (Page0.ActivePageIndex = 1) and (DS0.DataSet.Active) then
  begin
    Chart0.SeriesList.Clear;
    Chart0.Title.Text.Clear;
    Chart0.Title.Text.Add(DS0.DataSet.fields[0].Value);
    case cbxSType0.ItemIndex of
      0, 1: {柱状图}
        begin
          Bar := TBarSeries.Create(nil);
          Bar.ParentChart := Chart0;
          Bar.ShowInLegend := False;
          Bar.Marks.Style := smsValue;
          Bar.BarWidthPercent := 70;
          vp := 4;
        end;
      2: {按照日线统计} {折线图}
        begin
          FastLine := TFastLineSeries.Create(nil);
          FastLine.ParentChart := Chart0;
          FastLine.ShowInLegend := False;
          FastLine.Marks.Visible := False;
          vp := 3;
        end;
      3, 4: {饼图}
        begin
          Chart0.Title.Text.Clear;
          Chart0.Title.Text.Add('商品品牌和类别销售饼图');
          Pie := TPieSeries.Create(nil);
          Pie.ParentChart := Chart0;
          Pie.ShowInLegend := False;
          Pie.Marks.Style := smsLabelPercent;
        end;
    end;
    with Chart0.Series[0] do
    begin
      Clear;
      case cbxSType0.ItemIndex of
        0, 1, 2: {柱状图}
          begin
            for I := vp to (DS0.DataSet.FieldCount - 1) do
            begin
              Add(DS0.DataSet.Fields[I].AsCurrency, DS0.DataSet.Fields[i].DisplayLabel, clRed);
              //Application.ProcessMessages;
            end;
          end;
        3:
          begin
            i := 1;
            Ds0.DataSet.First;
            while not Ds0.DataSet.Eof do
            begin
              Pie.AddPie(Ds0.DataSet.FieldByName('TAmt').value,
                Ds0.DataSet.fieldByName('cBrandAbbr').Value, ColorArray[I]);
              Application.ProcessMessages;
              Inc(I);
              if I > 7 then I := 1;
              Ds0.DataSet.next;
            end
          end;
        4:
          begin
            i := 1;
            Ds0.DataSet.First;
            while not Ds0.DataSet.Eof do
            begin
              Pie.AddPie(Ds0.DataSet.FieldByName('TAmt').value,
                Ds0.DataSet.fieldByName('cTypeAbbr').Value, ColorArray[I]);
              Application.ProcessMessages;
              Inc(I);
              if I > 7 then I := 1;
              Ds0.DataSet.next;
            end
          end;
      end;
    end;
  end;
end;

procedure TCustAnasFrm.CbxSType0Change(Sender: TObject);
begin
  if cbxsType0.ItemIndex <> 2 then
    with cbxMonth0 do
    begin
      ItemIndex := 0;
      Enabled := False;
    end
  else cbxMonth0.Enabled := True;
  Page0.ActivePageIndex := 0;

end;

procedure TCustAnasFrm.Grid0TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TCustAnasFrm.SaleTrendStat;
var
  I, lEnd, lStart: integer;
begin
  ShowHide(MSG_PROCESS_DATA);
  Grid1.Columns.Clear;
  with PrdtProc do
  begin
//    DisableControls;
    Close;
    Parameters.ParamByName('@Flag').Value := cbxTrend.ItemIndex;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear1.Text);
    Parameters.ParamByName('@Month').Value := StrToInt(CBXMonth1.Text);
    Parameters.ParamByName('@Mons').Value := StrToInt(CBXMons1.Text);
    Parameters.ParamByName('@Updown').Value := CBXUpdown1.ItemIndex;
    Parameters.ParamByName('@cAreaName').Value := '%';
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

    with Grid1 do
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
              Columns[I].Footer.FieldName := DS1.DataSet.Fields[i].DisplayLabel;
            end;
            ChgGridWidth(Grid1);
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
              Columns[I].Footer.FieldName := DS1.DataSet.Fields[i].DisplayLabel;
            end;
            ChgGridWidth(Grid1);
          end;
      end;
  //      EnableControls;
    end;
    ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
  end;
end;

procedure TCustAnasFrm.Page1Change(Sender: TObject);
var
  I: integer;
begin
  if (Page1.ActivePageIndex = 1) and (ds1.DataSet.RecordCount >= 1) then
    with Series1 do
    begin
      Chart1.Title.Text.Clear;
      Chart1.Title.Text.Add(ds1.DataSet.fields[0].Value);
      Clear;
      Application.ProcessMessages;
      for I := 1 to (ds1.DataSet.FieldCount - 1) do
      begin
        try
          Add(ds1.DataSet.Fields[I].AsCurrency, DS1.DataSet.Fields[i].DisplayLabel, clRed);
        except
        end;
      end;
    end;
end;

procedure TCustAnasFrm.SaleAlarmStat;
var
  I, lEnd, lStart: integer;
begin
  if (CbxAlarm.ItemIndex = 2) and (cbxType.Text = '全部') then
  begin
    ShowMessage('请输入要进行比较的商品类别');
    cbxType.SetFocus;
    Exit;
  end;
  ProcessData(True);
  Grid2.Columns.Clear;
  with AlarmProc do
  begin
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear2.Text);
    Parameters.ParamByName('@Mon').Value := StrToInt(CBXMonth2.Text);
    Parameters.ParamByName('@Flag').Value := cbxAlarm.ItemIndex;
    Parameters.ParamByName('@Dir').Value := CBXUpdown2.ItemIndex;
    Parameters.ParamByName('@Percent').Value := SEPercent.Value / 100;
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
    with Grid2 do
    begin
      Columns.AddAllColumns(True);
      case cbxAlarm.ItemIndex of
        0:
          begin
            Columns[0].Title.Caption := '商品名称';

            Columns[1].Width := 30;
            Columns[1].Title.Caption := '单位';
            Columns[1].Title.TitleButton := True;

            I := 2;
          end;
        1:
          begin
            Columns[0].Title.Caption := '商品类别名称';
            I := 1;
          end;
        2:
          begin
            Columns[0].Title.Caption := '商品品牌名称';
            I := 1;
          end;
        3:
          begin
            Columns[0].Title.Caption := '客户名称';
            I := 1;
          end;
      end;
      Columns[0].Width := 150;
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '合计';
      Columns[0].Title.TitleButton := True;
      Columns[I].Width := 70;
      Columns[I].Title.Caption := '本月销售数量';
      Columns[I].DisplayFormat := SYS_QTY_FORMAT;
      Columns[I].Title.TitleButton := True;
      inc(I);
      Columns[I].Width := 100;
      Columns[I].Title.Caption := '本月销售金额';
      Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
      Columns[I].Title.TitleButton := True;
      inc(I);
      Columns[I].Width := 100;
      Columns[I].Title.Caption := '上月销售金额';
      Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
      Columns[I].Title.TitleButton := True;
      inc(I);
      Columns[I].Width := 50;
      Columns[I].Title.Caption := '增长幅度％';
      Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
      Columns[I].Title.TitleButton := True;
      ChgGridWidth(Grid2);
      EnableControls;
    end;
  end;
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TCustAnasFrm.SaleParallStat;
var
  I, lEnd, lStart: integer;
begin
  if cbxYear3.Text = cbxPerYear3.Text then
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
  Grid3.Columns.Clear;
  with SaleParall do
  begin
    AfterScroll := nil;
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear3.Text);
    Parameters.ParamByName('@Flag').Value := cbxsType.ItemIndex;
    Parameters.ParamByName('@PerYear').Value := StrToInt(CBXPerYear3.Text);
    Parameters.ParamByName('@Querter').Value := cbxqtr.Checked;
    Parameters.ParamByName('@cAreaName').Value := '%';
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
    Grid3.Visible := False
  else
    Grid3.Visible := True;
  case cbxsType.ItemIndex of
    0: {按照销售额统计}
      begin
        Chart2.Series[0].Clear;
        Chart2.Series[1].Clear;
        for I := 0 to (DS3.DataSet.FieldCount - 1) do
        begin
          Application.ProcessMessages;
          if (I mod 2) = 0 then
            Chart2.Series[0].Add(DS3.DataSet.Fields[I].AsCurrency, DS3.DataSet.Fields[i].DisplayLabel, clRed)
          else
            Chart2.Series[1].Add(DS3.DataSet.Fields[I].AsCurrency, DS3.DataSet.Fields[i].DisplayLabel, clBlue);
        end;
      end;
    1: {按照销售类别统计}
      begin
        Grid3.Columns.Add;
        Grid3.Columns[0].FieldName := ds3.DataSet.Fields[0].FieldName;
        Grid3.Columns[0].Title.TitleButton := True;
        Grid3.Columns[0].Title.Caption := '商品类别';

      end;
    2: {按照销售品牌统计}
      begin
        Grid3.Columns.Add;
        Grid3.Columns[0].FieldName := ds3.DataSet.Fields[0].FieldName;
        Grid3.Columns[0].Title.TitleButton := True;
        Grid3.Columns[0].Title.Caption := '商品品牌';
      end;
    3: {按照客户名称统计}
      begin
        Grid3.Columns.Add;
        Grid3.Columns[0].FieldName := ds3.DataSet.Fields[0].FieldName;
        Grid3.Columns[0].Width := 150;
        Grid3.Columns[0].Title.TitleButton := True;
        Grid3.Columns[0].Title.Caption := '客户名称';
      end;
  end;
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TCustAnasFrm.SaleParallAfterScroll(DataSet: TDataSet);
var
  i: integer;
begin
  Chart2.Series[0].Clear;
  Chart2.Series[1].Clear;
  for I := 1 to (DS3.DataSet.FieldCount - 1) do
  begin
    Application.ProcessMessages;
    if (I mod 2) = 0 then
      Chart2.Series[1].Add(DS3.DataSet.Fields[I].AsCurrency, DS3.DataSet.Fields[i].DisplayLabel, clBlue)
    else
      Chart2.Series[0].Add(DS3.DataSet.Fields[I].AsCurrency, DS3.DataSet.Fields[i].DisplayLabel, clRed);
  end;
end;


procedure TCustAnasFrm.unSaleStat;
var
  V, I, lEnd, lStart: integer;
begin
  {取消了按区域统计，所以做这个处理}
  v := cbxsType2.ItemIndex;
  if v > 0 then
    V := V + 1;

  if (cbxsType2.ItemIndex = 2) and (cbxMonth4.text = '不按月') then
  begin
    ShowMessage('请输入要查询的月份');
    cbxMonth4.SetFocus;
    exit;
  end;
  //ShowHide(MSG_PROCESS_DATA);
  ProcessData(True);
  Grid4.Columns.Clear;
  SaleStatProc.Active := False;
  with unSaleStatProc do
  begin
    Close;
    //DisableControls;
    Parameters.ParamByName('@Flag').Value := v; //cbxsType0.ItemIndex;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear0.Text);
    if cbxsType0.ItemIndex = 2 then
      Parameters.ParamByName('@Month').Value := StrToInt(CBXMonth0.Text);
    Parameters.ParamByName('@cAreaName').Value := '%';
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
    with Grid4 do
    begin
      Columns.AddAllColumns(True);
      case cbxsType2.ItemIndex of
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
              Columns[I].Footer.FieldName := DS4.DataSet.Fields[i].DisplayLabel;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
            end;
            TStringGrid(Grid4).FixedCols := 4;
          end;

        1: {月销量统计}
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
              Columns[I].Footer.FieldName := DS4.DataSet.Fields[i].DisplayLabel;
            end;
            TStringGrid(Grid4).FixedCols := 3;
          end;
        2: {日销量统计}
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
              Columns[I].Footer.FieldName := DS4.DataSet.Fields[i].DisplayLabel;
            end;
            TStringGrid(Grid4).FixedCols := 2;
          end;
        3: {按照品牌统计}
          begin
            Columns[0].Visible := false;
            Columns[1].Visible := false;
            Columns[2].Width := Grid4.Width - 27 - 260;
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
          end;
        4: {按照类别统计}
          begin
            Columns[0].Visible := false;
            Columns[1].Width := Grid4.Width - 27 - 220;
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
          end;
      end; //end of case
    end; //end of Grid
  end; //end of PrdtProc
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TCustAnasFrm.Page2Change(Sender: TObject);
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
  if (Page2.ActivePageIndex = 1) and (DS4.DataSet.Active) then
  begin
    Chart4.SeriesList.Clear;
    Chart4.Title.Text.Clear;
    Chart4.Title.Text.Add(DS4.DataSet.fields[0].Value);
    case cbxSType2.ItemIndex of
      0, 1: {柱状图}
        begin
          Bar := TBarSeries.Create(nil);
          Bar.ParentChart := Chart4;
          Bar.ShowInLegend := False;
          Bar.Marks.Style := smsValue;
          Bar.BarWidthPercent := 70;
          vp := 4;
        end;
      2: {按照日线统计} {折线图}
        begin
          FastLine := TFastLineSeries.Create(nil);
          FastLine.ParentChart := Chart4;
          FastLine.ShowInLegend := False;
          FastLine.Marks.Visible := False;
          vp := 3;
        end;
      3, 4: {饼图}
        begin
          Chart0.Title.Text.Clear;
          Chart0.Title.Text.Add('商品品牌和类别销售退货饼图');
          Pie := TPieSeries.Create(nil);
          Pie.ParentChart := Chart4;
          Pie.ShowInLegend := False;
          Pie.Marks.Style := smsLabelPercent;
        end;
    end;
    with Chart4.Series[0] do
    begin
      Clear;
      case cbxSType2.ItemIndex of
        0, 1, 2: {柱状图}
          begin
            for I := vp to (DS4.DataSet.FieldCount - 1) do
            begin
              Add(DS4.DataSet.Fields[I].AsCurrency, DS4.DataSet.Fields[i].DisplayLabel, clRed);
              //Application.ProcessMessages;
            end;
          end;
        3:
          begin
            i := 1;
            Ds4.DataSet.First;
            while not Ds4.DataSet.Eof do
            begin
              Pie.AddPie(Ds4.DataSet.FieldByName('TAmt').value,
                Ds4.DataSet.fieldByName('cBrandAbbr').Value, ColorArray[I]);
              Application.ProcessMessages;
              Inc(I);
              if I > 7 then I := 1;
              Ds4.DataSet.next;
            end
          end;
        4:
          begin
            i := 1;
            Ds4.DataSet.First;
            while not Ds4.DataSet.Eof do
            begin
              Pie.AddPie(Ds4.DataSet.FieldByName('TAmt').value,
                Ds4.DataSet.fieldByName('cTypeAbbr').Value, ColorArray[I]);
              Application.ProcessMessages;
              Inc(I);
              if I > 7 then I := 1;
              Ds4.DataSet.next;
            end
          end;
      end;
    end;
  end;
end;

procedure TCustAnasFrm.cbxSType2Change(Sender: TObject);
begin
  if cbxsType2.ItemIndex <> 2 then
    with cbxMonth4 do
    begin
      ItemIndex := 0;
      Enabled := False;
    end
  else cbxMonth4.Enabled := True;
  Page2.ActivePageIndex := 0;
end;

procedure TCustAnasFrm.UnSaleTrendStat;
var
  I, lEnd, lStart: integer;
begin
  ShowHide(MSG_PROCESS_DATA);
  Grid5.Columns.Clear;
  with UnPrdtProc do
  begin
    Close;
    Parameters.ParamByName('@Flag').Value := cbxTrend.ItemIndex;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear1.Text);
    Parameters.ParamByName('@Month').Value := StrToInt(CBXMonth1.Text);
    Parameters.ParamByName('@Mons').Value := StrToInt(CBXMons1.Text);
    Parameters.ParamByName('@Updown').Value := CBXUpdown1.ItemIndex;
    Parameters.ParamByName('@cAreaName').Value := '%';
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
    with Grid5 do
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
              Columns[I].Footer.FieldName := DS5.DataSet.Fields[i].DisplayLabel;
            end;
            ChgGridWidth(Grid5);
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
              Columns[I].Footer.FieldName := DS5.DataSet.Fields[i].DisplayLabel;
            end;
            ChgGridWidth(Grid5);
          end;
      end;
    end;
    ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
  end;
end;

procedure TCustAnasFrm.Page3Change(Sender: TObject);
var
  I: integer;
begin
  if (Page3.ActivePageIndex = 1) and (ds5.DataSet.RecordCount >= 1) then
    with Series1 do
    begin
      Chart3.Title.Text.Clear;
      Chart3.Title.Text.Add(ds5.DataSet.fields[0].Value);
      Clear;
      Application.ProcessMessages;
      for I := 1 to (ds5.DataSet.FieldCount - 1) do
      begin
        try
          Add(ds5.DataSet.Fields[I].AsCurrency, DS5.DataSet.Fields[i].DisplayLabel, clRed);
        except
        end;
      end;
    end;
end;

procedure TCustAnasFrm.UnSaleAlarmStat;
var
  I, lEnd, lStart: integer;
begin
  if (CbxUnAlarm.ItemIndex = 2) and (cbxType.Text = '全部') then
  begin
    ShowMessage('请输入要进行比较的商品类别');
    cbxType.SetFocus;
    Exit;
  end;
  ProcessData(True);
  Grid6.Columns.Clear;
  with UnAlarmProc do
  begin
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXUnAYear.Text);
    Parameters.ParamByName('@Mon').Value := StrToInt(CBXUnAMonth.Text);
    Parameters.ParamByName('@Flag').Value := cbxUnAlarm.ItemIndex;
    Parameters.ParamByName('@Dir').Value := CBXUnAUpdown.ItemIndex;
    Parameters.ParamByName('@Percent').Value := SEUnPercent.Value / 100;
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
    with Grid6 do
    begin
      Columns.AddAllColumns(True);
      case cbxUnAlarm.ItemIndex of
        0:
          begin
            Columns[0].Title.Caption := '商品名称';

            Columns[1].Width := 30;
            Columns[1].Title.Caption := '单位';
            Columns[1].Title.TitleButton := True;

            I := 2;
          end;
        1:
          begin
            Columns[0].Title.Caption := '商品类别名称';
            I := 1;
          end;
        2:
          begin
            Columns[0].Title.Caption := '商品品牌名称';
            I := 1;
          end;
        3:
          begin
            Columns[0].Title.Caption := '客户名称';
            I := 1;
          end;
      end;
      Columns[0].Width := 150;
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '合计';
      Columns[0].Title.TitleButton := True;
      Columns[I].Width := 70;
      Columns[I].Title.Caption := '本月销售数量';
      Columns[I].DisplayFormat := SYS_QTY_FORMAT;
      Columns[I].Title.TitleButton := True;
      inc(I);
      Columns[I].Width := 100;
      Columns[I].Title.Caption := '本月销售金额';
      Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
      Columns[I].Title.TitleButton := True;
      inc(I);
      Columns[I].Width := 100;
      Columns[I].Title.Caption := '上月销售金额';
      Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
      Columns[I].Title.TitleButton := True;
      inc(I);
      Columns[I].Width := 50;
      Columns[I].Title.Caption := '增长幅度％';
      Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
      Columns[I].Title.TitleButton := True;
      ChgGridWidth(Grid6);
    end;
  end;
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

{销售退货对比分析}

procedure TCustAnasFrm.unSaleParallStat;
var
  I, lEnd, lStart: integer;
begin
  if cbxUnSaleYear.Text = cbxUnSalePerYear.Text then
  begin
    ShowMessage('基本年份与比较年份相同');
    exit;
  end;
  if (cbxUnSaleType.ItemIndex = 2) and (CbxType.Text = '全部') then
  begin
    ShowMessage('请选择要统计的商品类别');
    CbxType.SetFocus;
    Exit;
  end;
  ProcessData(True);
  Grid7.Columns.Clear;
  with UnSaleParall do
  begin
    AfterScroll := nil;
    Close;
    Parameters.ParamByName('@Flag').Value := cbxUnSaleType.ItemIndex;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXUnSaleYear.Text);
    Parameters.ParamByName('@PerYear').Value := StrToInt(CBXUnSalePerYear.Text);
    Parameters.ParamByName('@Querter').Value := chkUnSaleqtr.Checked;
    Parameters.ParamByName('@cAreaName').Value := '%';
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
  end;
  if cbxUnSaleType.ItemIndex = 0 then
    Grid7.Visible := False
  else
    Grid7.Visible := True;
  case cbxUnSaleType.ItemIndex of
    0: {按照销售额统计}
      begin
        Chart5.Series[0].Clear;
        Chart5.Series[1].Clear;
        for I := 0 to (DS7.DataSet.FieldCount - 1) do
        begin
          Application.ProcessMessages;
          if (I mod 2) = 0 then
            Chart5.Series[0].Add(DS7.DataSet.Fields[I].AsCurrency, DS7.DataSet.Fields[i].DisplayLabel, clRed)
          else
            Chart5.Series[1].Add(DS3.DataSet.Fields[I].AsCurrency, DS7.DataSet.Fields[i].DisplayLabel, clBlue);
        end;
      end;
    1: {按照销售类别统计}
      begin
        Grid7.Columns.Add;
        Grid7.Columns[0].FieldName := ds7.DataSet.Fields[0].FieldName;
        Grid7.Columns[0].Title.TitleButton := True;
        Grid7.Columns[0].Title.Caption := '商品类别';

      end;
    2: {按照销售品牌统计}
      begin
        Grid7.Columns.Add;
        Grid7.Columns[0].FieldName := ds7.DataSet.Fields[0].FieldName;
        Grid7.Columns[0].Title.TitleButton := True;
        Grid7.Columns[0].Title.Caption := '商品品牌';
      end;
    3: {按照客户名称统计}
      begin
        Grid7.Columns.Add;
        Grid7.Columns[0].FieldName := ds7.DataSet.Fields[0].FieldName;
        Grid7.Columns[0].Width := 150;
        Grid7.Columns[0].Title.TitleButton := True;
        Grid7.Columns[0].Title.Caption := '客户名称';
      end;
  end;
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TCustAnasFrm.UnSaleParallAfterScroll(DataSet: TDataSet);
var
  i: integer;
begin
  Chart5.Series[0].Clear;
  Chart5.Series[1].Clear;
  for I := 1 to (DS7.DataSet.FieldCount - 1) do
  begin
    Application.ProcessMessages;
    if (I mod 2) = 0 then
      Chart5.Series[1].Add(DS7.DataSet.Fields[I].AsCurrency, DS7.DataSet.Fields[i].DisplayLabel, clBlue)
    else
      Chart5.Series[0].Add(DS7.DataSet.Fields[I].AsCurrency, DS7.DataSet.Fields[i].DisplayLabel, clRed);
  end;
end;

procedure TCustAnasFrm.btnSBExt1Click(Sender: TObject);
begin
  Close;
end;

procedure TCustAnasFrm.btnSBPrn1Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02019', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;

end;

procedure TCustAnasFrm.SBExpClick(Sender: TObject);
var
  Grid: TDBGridEH;
begin
  if not OperRights(SYS_OPR_ID, '02019', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  case Page.ActivePageIndex of
    0: Grid := Grid0;
    1: Grid := Grid1;
    2: Grid := Grid2;
    3: Grid := Grid3;
    4: Grid := Grid4;
    5: Grid := Grid5;
    6: Grid := Grid6;
    7: Grid := Grid7;
  end;
  if ExportToXLS(Grid, LabTitle.Caption + '(' + Page.ActivePage.Caption + ')') then
    ShowMessage(MSG_EXPT_DOON);
end;

end.

