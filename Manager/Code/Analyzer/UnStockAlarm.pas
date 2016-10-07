
{******************************************************}
{模块名称：采购退货异动监控模块                        }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    采购退货数据异动报警                        }
{日期：    2004年2月22日                               }
{******************************************************}
unit UnStockAlarm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGridEh, Spin, PrnDbgeh,
  DB, ADODB;

type
  TUnStockAlarmFrm = class(TForm)
    Panel15: TPanel;
    SBPrdtName: TSpeedButton;
    SBType: TSpeedButton;
    SBBrand: TSpeedButton;
    LabTitle: TLabel;
    SBExt: TSpeedButton;
    SBPrn: TSpeedButton;
    SBAdd: TSpeedButton;
    Label13: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ESPrdtName: TEdit;
    CBXType: TComboBox;
    CBXBrand: TComboBox;
    CBXYear: TComboBox;
    CBXMonth: TComboBox;
    cbxUpDown: TComboBox;
    CbxAlarm: TComboBox;
    Grid: TDBGridEh;
    SEPercent: TSpinEdit;
    Label5: TLabel;
    AlarmProc: TADOStoredProc;
    DS: TDataSource;
    PrnGrid: TPrintDBGridEh;
    CBXCust: TComboBox;
    SBCust: TSpeedButton;
    cbxArea: TComboBox;
    SBArea: TSpeedButton;
    SBExp: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CBXTypeChange(Sender: TObject);
    procedure SBTypeClick(Sender: TObject);
    procedure SBAddClick(Sender: TObject);
    procedure SBPrnClick(Sender: TObject);
    procedure SBExtClick(Sender: TObject);
    procedure GridTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure SBExpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnStockAlarmFrm: TUnStockAlarmFrm;

implementation

uses Main, SetPrdt, PubMessage, SerachCust;

{$R *.dfm}

procedure TUnStockAlarmFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  UnStockAlarmFrm := nil;
  Action := caFree;
end;

procedure TUnStockAlarmFrm.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
  I: integer;
begin
  Caption := LabTitle.Caption;
  WindowState := wsMaximized;
  cbxAlarm.ItemIndex := 0;
  DeCodeDate(Date, Year, Month, Day);
  for I := Year downto (Year - 10) do
  begin
    CBXYear.Items.Add(IntToStr(I));
  end;
  CBXYear.ItemIndex := 0;
  CBXMonth.ItemIndex := Month - 1;
  CBXUpDown.ItemIndex := 0;
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

procedure TUnStockAlarmFrm.CBXTypeChange(Sender: TObject);
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

procedure TUnStockAlarmFrm.SBTypeClick(Sender: TObject);
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

procedure TUnStockAlarmFrm.SBAddClick(Sender: TObject);
var
  I, lEnd, lStart: integer;
begin
  if not OperRights(SYS_OPR_ID, '02013', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if (CbxAlarm.ItemIndex = 2) and (cbxType.Text = '全部') then
  begin
    ShowMessage('请输入要进行比较的商品类别');
    cbxType.SetFocus;
    Exit;
  end;
  ProcessData(True);
  Grid.Columns.Clear;
  with AlarmProc do
  begin
    DisableControls;
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear.Text);
    Parameters.ParamByName('@Mon').Value := StrToInt(CBXMonth.Text);
    Parameters.ParamByName('@Flag').Value := cbxAlarm.ItemIndex;
    Parameters.ParamByName('@Dir').Value := CBXUpdown.ItemIndex;
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
    if not eof then
      with Grid do
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
        ChgGridWidth(Grid);
        EnableControls;
      end;
  end;
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TUnStockAlarmFrm.SBPrnClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02013', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Ds.DataSet.Active then PrnGrid.Preview;
end;

procedure TUnStockAlarmFrm.SBExtClick(Sender: TObject);
begin
  Close;
end;

procedure TUnStockAlarmFrm.GridTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TUnStockAlarmFrm.SBExpClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02013', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if ExportToXLS(Grid, LabTitle.Caption + '(' + cbxAlarm.Text + ')') then
    ShowMessage(MSG_EXPT_DOON);
end;

end.

