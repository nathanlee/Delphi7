
{******************************************************}
{ģ�����ƣ��ɹ��˻��춯���ģ��                        }
{�汾��    0.1                                         }
{���ߣ�    ����                                      }
{��;��    �ɹ��˻������춯����                        }
{���ڣ�    2004��2��22��                               }
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
  {��������б�}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cAreaName From AreaInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxArea, MainFrm.AdoTmp, True); //����
  {��ӿͻ��б�}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cCustName From CustInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxCust, MainFrm.AdoTmp, True); //���۵�
  {�����Ʒ���}
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
  {������Ʒ��������ƷƷ��}
  ComboText := Trim((Sender as TComboBox).Text);
  if ComboText = 'ȫ��' then
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
      BtnAdd.Caption := '�½�����(&W)';
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
      BtnAdd.Caption := '�½���Ӧ��(&W)';
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
        {��Ʒ�ɹ����ѡ��}
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
  if (CbxAlarm.ItemIndex = 2) and (cbxType.Text = 'ȫ��') then
  begin
    ShowMessage('������Ҫ���бȽϵ���Ʒ���');
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
    if CbxCust.Text = 'ȫ��' then
      Parameters.ParamByName('@cCustName').Value := '%'
    else
      Parameters.ParamByName('@cCustName').Value := '%' + CbxCust.Text + '%';
    if CbxType.Text = 'ȫ��' then
      Parameters.ParamByName('@cTypeName').Value := '%'
    else
      Parameters.ParamByName('@cTypeName').Value := '%' + CbxType.Text + '%';
    if CBXBrand.Text = 'ȫ��' then
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
              Columns[0].Title.Caption := '��Ʒ����';

              Columns[1].Width := 30;
              Columns[1].Title.Caption := '��λ';
              Columns[1].Title.TitleButton := True;

              I := 2;
            end;
          1:
            begin
              Columns[0].Title.Caption := '��Ʒ�������';
              I := 1;
            end;
          2:
            begin
              Columns[0].Title.Caption := '��ƷƷ������';
              I := 1;
            end;
          3:
            begin
              Columns[0].Title.Caption := '�ͻ�����';
              I := 1;
            end;
        end;
        Columns[0].Width := 150;
        Columns[0].Footer.ValueType := fvtStaticText;
        Columns[0].Footer.Value := '�ϼ�';
        Columns[0].Title.TitleButton := True;
        Columns[I].Width := 70;
        Columns[I].Title.Caption := '������������';
        Columns[I].DisplayFormat := SYS_QTY_FORMAT;
        Columns[I].Title.TitleButton := True;
        inc(I);
        Columns[I].Width := 100;
        Columns[I].Title.Caption := '�������۽��';
        Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
        Columns[I].Title.TitleButton := True;
        inc(I);
        Columns[I].Width := 100;
        Columns[I].Title.Caption := '�������۽��';
        Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
        Columns[I].Title.TitleButton := True;
        inc(I);
        Columns[I].Width := 50;
        Columns[I].Title.Caption := '�������ȣ�';
        Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
        Columns[I].Title.TitleButton := True;
        ChgGridWidth(Grid);
        EnableControls;
      end;
  end;
  ProcessData(False);
  ShowHide('ͳ�ƺ�ʱ��' + FloatToStr((lEnd - lStart) / 1000.0) + '��');
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

