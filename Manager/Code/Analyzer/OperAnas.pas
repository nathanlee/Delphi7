unit OperAnas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, PrnDbgeh, DB, ADODB,
  Series, Chart, Grids, DBGridEh, Spin, TeEngine, TeeProcs;

type
  TOperAnasFrm = class(TForm)
    Panel15: TPanel;
    SBCust: TSpeedButton;
    LabTitle: TLabel;
    Page: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
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
    cbxCust: TComboBox;
    GroupBox1: TGroupBox;
    CBXYear0: TComboBox;
    Label13: TLabel;
    GroupBox2: TGroupBox;
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
    DS2: TDataSource;
    GroupBox4: TGroupBox;
    CBXYear3: TComboBox;
    Label16: TLabel;
    cbxPerYear3: TComboBox;
    Label17: TLabel;
    CBxQtr: TCheckBox;
    DS3: TDataSource;
    Grid3: TDBGridEh;
    Splitter: TSplitter;
    Chart2: TChart;
    BarSeries1: TBarSeries;
    Series2: TBarSeries;
    SaleTrendProc: TADOStoredProc;
    AlarmProc: TADOStoredProc;
    StaffParall: TADOStoredProc;
    SBExp: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBCustClick(Sender: TObject);
    procedure btnSBAdd1Click(Sender: TObject);
    {销售统计分析}
    procedure SaleStat;
    procedure Page0Change(Sender: TObject);
    procedure Grid0TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    {销售趋势分析}
    procedure SaleTrendStat;
    procedure Page1Change(Sender: TObject);
    {销售异动分析}
    procedure SaleAlarmStat;
    {销售对比分析}
    procedure SaleParallStat;
    procedure StaffParallAfterScroll(DataSet: TDataSet);
    procedure btnSBExt1Click(Sender: TObject);
    procedure btnSBPrn1Click(Sender: TObject);
    procedure SBExpClick(Sender: TObject);
    procedure PageChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OperAnasFrm: TOperAnasFrm;

implementation
uses Main, PubMessage, SerachCust, SetPrdt;

{$R *.dfm}

procedure TOperAnasFrm.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
  I: integer;
begin
  Caption := LabTitle.Caption;
  WindowState := wsMaximized;
  {添加业务员列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cName From V_OprList order by cName');
  end;
  AddComBo(CbxCust, MainFrm.AdoTmp, True); //销售单
  Application.ProcessMessages;
  DeCodeDate(Date, Year, Month, Day);
  Page.ActivePageIndex := 0;
  for I := Year downto (Year - 10) do
  begin
    CBXYear0.Items.Add(IntToStr(I));
    CBXYear1.Items.Add(IntToStr(I));
    CBXYear2.Items.Add(IntToStr(I));
    CBXYear3.Items.Add(IntToStr(I));
    CBXPerYear3.Items.Add(IntToStr(I));
  end;

  CBXYear0.ItemIndex := 0;

  CBXYear1.ItemIndex := 0;
  CBXMonth1.ItemIndex := Month - 1;
  CBXMons1.ItemIndex := 2;
  cbxUpDown1.ItemIndex := 0;

  CBXYear2.ItemIndex := 0;
  CBXMonth2.ItemIndex := Month - 1;
  cbxUpDown2.ItemIndex := 0;

  CBXYear3.ItemIndex := 0;
  CBXPerYear3.ItemIndex := 1;

end;

procedure TOperAnasFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  OperAnasFrm := nil;
  Action := caFree;
end;

procedure TOperAnasFrm.SBCustClick(Sender: TObject);
begin
  if Sender = SBCust then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 2;
      Page.Pages[2].TabVisible := True;
      BtnAdd.Caption := '新建营业员(&W)';
      BtnFindClick(Sender);
      ShowModal;
      if Name <> '' then cbxCust.Text := Name;
      Release;
    end;
  end;
end;

procedure TOperAnasFrm.btnSBAdd1Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02022', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  case Page.ActivePageIndex of
    0: SaleStat; {采购统计分析}
    1: SaleTrendStat; {采购趋势统计分析}
    2: SaleAlarmStat; {采购异动统计分析}
    3: SaleParallStat; {采购对比分析}
  end;
end;

  {销售统计分析}

procedure TOperAnasFrm.SaleStat;
var
  V, I, lEnd, lStart: integer;
begin
  ProcessData(True);
  Grid0.Columns.Clear;
  SaleStatProc.Active := False;
  with SaleStatProc do
  begin
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear0.Text);
    if CbxCust.Text = '全部' then
      Parameters.ParamByName('@cCustName').Value := '%'
    else
      Parameters.ParamByName('@cCustName').Value := '%' + CbxCust.Text + '%';
    lStart := GetTickCount;
    Open;
    lEnd := GetTiCkCount;
    with Grid0 do
    begin
      Columns.AddAllColumns(True);
      Columns[0].Width := 150;
      Columns[0].Title.Caption := '姓名';
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '合计';
      Columns[0].Title.TitleButton := True;
      for I := 1 to Columns.Count - 1 do
      begin
        Columns[I].Width := 80;
        Columns[I].DisplayFormat := Copy(SYS_PRICE_FORMAT,1,length(SYS_PRICE_FORMAT)-3);
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
    end; //end of Grid
  end; //end of PrdtProc
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TOperAnasFrm.Page0Change(Sender: TObject);
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
    Bar := TBarSeries.Create(nil);
    Bar.ParentChart := Chart0;
    Bar.ShowInLegend := False;
    Bar.Marks.Style := smsValue;
    Bar.BarWidthPercent := 70;
    vp := 4;
  end;
  with Chart0.Series[0] do
  begin
    Clear;
    for I := vp to (DS0.DataSet.FieldCount - 1) do
    begin
      Add(DS0.DataSet.Fields[I].AsCurrency, DS0.DataSet.Fields[i].DisplayLabel, clRed);
              //Application.ProcessMessages;
    end;
  end;
end;

procedure TOperAnasFrm.Grid0TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TOperAnasFrm.SaleTrendStat;
var
  I, lEnd, lStart: integer;
begin
  ProcessData(True);
  Grid1.Columns.Clear;
  with SaleTrendProc do
  begin
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear1.Text);
    Parameters.ParamByName('@Month').Value := StrToInt(CBXMonth1.Text);
    Parameters.ParamByName('@Mons').Value := StrToInt(CBXMons1.Text);
    Parameters.ParamByName('@Updown').Value := CBXUpdown1.ItemIndex;
    if CbxCust.Text = '全部' then
      Parameters.ParamByName('@cCustName').Value := '%'
    else
      Parameters.ParamByName('@cCustName').Value := '%' + CbxCust.Text + '%';
    lStart := GetTickCount;
    Open;
    lEnd := GetTiCkCount;

    with Grid1 do
    begin
      Columns.AddAllColumns(True);
      Columns[0].Width := 150;
      Columns[0].Title.Caption := '姓名';
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '合计';
      Columns[0].Title.TitleButton := True;
      for I := 1 to Columns.Count - 1 do
      begin
        Columns[I].Width := 90;
        Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
        Columns[I].Title.TitleButton := True;
        Columns[I].Footer.ValueType := fvtSum;
        Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
        Columns[I].Footer.FieldName := DS1.DataSet.Fields[i].DisplayLabel;
      end;
      ChgGridWidth(Grid1);
    end;
    ProcessData(False);
    ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
  end;
end;

procedure TOperAnasFrm.Page1Change(Sender: TObject);
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

procedure TOperAnasFrm.SaleAlarmStat;
var
  I, lEnd, lStart: integer;
begin
  ProcessData(True);
  Grid2.Columns.Clear;
  with AlarmProc do
  begin
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear2.Text);
    Parameters.ParamByName('@Mon').Value := StrToInt(CBXMonth2.Text);
    Parameters.ParamByName('@Dir').Value := CBXUpdown2.ItemIndex;
    Parameters.ParamByName('@Percent').Value := SEPercent.Value / 100;
    if CbxCust.Text = '全部' then
      Parameters.ParamByName('@cCustName').Value := '%'
    else
      Parameters.ParamByName('@cCustName').Value := '%' + CbxCust.Text + '%';
    lStart := GetTickCount;
    Open;
    lEnd := GetTiCkCount;
    with Grid2 do
    begin
      Columns.AddAllColumns(True);
      Columns[0].Title.Caption := '姓名';
      I := 1;
      Columns[0].Width := 150;
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '合计';
      Columns[0].Title.TitleButton := True;
      Columns[I].Width := 100;
      Columns[I].Title.Caption := '本月开单数量';
      Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
      Columns[I].Title.TitleButton := True;
      inc(I);
      Columns[I].Width := 100;
      Columns[I].Title.Caption := '上月开单数量';
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

{业务员销售对比分析}
procedure TOperAnasFrm.SaleParallStat;
var
  I, lEnd, lStart: integer;
begin
  if cbxYear3.Text = cbxPerYear3.Text then
  begin
    ShowMessage('基本年份与比较年份相同');
    exit;
  end;
  ProcessData(True);
  Grid3.Columns.Clear;
  with StaffParall do
  begin
    AfterScroll := nil;
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear3.Text);
    Parameters.ParamByName('@PerYear').Value := StrToInt(CBXPerYear3.Text);
    Parameters.ParamByName('@Querter').Value := cbxqtr.Checked;
    if CbxCust.Text = '全部' then
      Parameters.ParamByName('@cCustName').Value := '%'
    else
      Parameters.ParamByName('@cCustName').Value := '%' + CbxCust.Text + '%';
    lStart := GetTickCount;
    Open;
    lEnd := GetTiCkCount;
    AfterScroll := StaffParallAfterScroll;
    first;
  end;
  Grid3.Columns.Add;
  Grid3.Columns[0].FieldName := ds3.DataSet.Fields[0].FieldName;
  Grid3.Columns[0].Width := 150;
  Grid3.Columns[0].Title.TitleButton := True;
  Grid3.Columns[0].Title.Caption := '姓名';
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TOperAnasFrm.StaffParallAfterScroll(DataSet: TDataSet);
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



procedure TOperAnasFrm.btnSBExt1Click(Sender: TObject);
begin
  Close;
end;

procedure TOperAnasFrm.btnSBPrn1Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02022', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  case Page.ActivePageIndex of
    0:
      if Page0.ActivePageIndex = 0 then
      begin
        PrnGrid.DBGridEh := Grid0;
        PrnGrid.Preview;
      end
      else chart0.Print;
    1:
      if Page1.ActivePageIndex = 0 then
      begin
        PrnGrid.DBGridEh := Grid1;
        PrnGrid.Preview;
      end
      else chart1.Print;
    2:
      begin
        PrnGrid.DBGridEh := Grid2;
        PrnGrid.Preview;
      end;
    3: chart2.Print;
  end;
end;

procedure TOperAnasFrm.SBExpClick(Sender: TObject);
var
  Grid: TDBGridEH;
begin
  if not OperRights(SYS_OPR_ID, '02022', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  case Page.ActivePageIndex of
    0: Grid := Grid0;
    1: Grid := Grid1;
    2: Grid := Grid2;
  end;
  if ExportToXLS(Grid, LabTitle.Caption + '(' + Page.ActivePage.Caption + ')') then
    ShowMessage(MSG_EXPT_DOON);
end;

procedure TOperAnasFrm.PageChange(Sender: TObject);
begin
  SBExp.Enabled := Page.ActivePageIndex > 2;
end;

end.

