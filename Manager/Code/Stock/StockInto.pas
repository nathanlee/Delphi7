{**********************************
*ģ�����ƣ���ⵥ�ݴ���ģ��
*�汾��    0.1
*���ߣ�    ����
*��;��    ��ⵥ�ݴ���
*���ڣ�    2003��3��24��
**********************************}
unit StockInto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, Mask,
  ComCtrls, DBGridEh, DBCtrlsEh, DBLookupEh, ADODB, GridsEh;

type
  TStockIntoFrm = class(TForm)
    PanelTitle: TPanel;
    BitBtn1: TBitBtn;
    BtnClose: TBitBtn;
    Label8: TLabel;
    Bevel2: TBevel;
    MDate: TDateTimePicker;
    DSList: TDataSource;
    GridLst: TDBGridEh;
    ListQry: TADOQuery;
    ListQryLKID: TStringField;
    ListQryAmt: TFloatField;
    AProc: TADOStoredProc;
    QryPrdtID: TADOQuery;
    BitBtn2: TBitBtn;
    LabMaker: TLabel;
    SBProv: TSpeedButton;
    SBStaff: TSpeedButton;
    SBStk: TSpeedButton;
    EStk: TEdit;
    EProv: TEdit;
    EStaff: TEdit;
    ListQryiSNo: TIntegerField;
    ListQrycPrdtID: TStringField;
    ListQrynQty: TBCDField;
    ListQrynPrice: TBCDField;
    ListQrycName: TStringField;
    ListQrycUnit: TStringField;
    SBPrdtID: TSpeedButton;
    LStkID: TLabel;
    LStaffID: TLabel;
    LProvID: TLabel;
    Label1: TLabel;
    EVNo: TEdit;
    MRemark: TMemo;
    Label2: TLabel;
    LabelNo: TLabel;
    Label7: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListQryCalcFields(DataSet: TDataSet);
    procedure ListQrySPRDTIDValidate(Sender: TField);
    procedure SBStkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EStkExit(Sender: TObject);
    procedure EStkChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListQrycPrdtIDValidate(Sender: TField);
    procedure ListQrynPriceValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    RNo: integer;
    OprFlag: Boolean; //True:Append False:Update;
  end;

var
  StockIntoFrm: TStockIntoFrm;

implementation

uses Main, PubMessage, SerachCust, SetPrdt, QRStockList;

{$R *.DFM}

procedure TStockIntoFrm.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TStockIntoFrm.BitBtn1Click(Sender: TObject);
var
  lsPrdtID, lQty, lPrice: widestring;
  iSN, iStkID: integer;
begin

  if eStk.Text = '' then
  begin
    ShowMessage(MSG_PLSE_STORE);
    eStk.SetFocus;
    Exit;
  end;

  {�ֿ���}
  iStkID := StrToInt(LStkID.Caption);

  {�ϲ���Ʒ���롢���������۳�һ���ַ���}
  with ListQry do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if (ListQrycPrdtID.AsString = '') or (ListQryNQty.Value = 0) then
        Delete
      else
      begin
        lsPrdtID := lsPrdtID + uppercase(Trim(ListQrycPrdtID.AsString)) + ',';
        lQty := lQty + Trim(ListQrynQty.AsString) + ',';
        lPrice := lPrice + Trim(ListQrynPrice.AsString) + ',';
      end;
      next;
    end;
    EnableControls;
  end;

  {���ô洢������Ӻ��޸����ݿ�}
  if OprFlag then //��������
    iSN := 0
  else //�޸Ĳ���
    iSN := RNo;

  with AProc do
  begin
    Parameters.ParamByName('@iSN').Value := iSN;
    Parameters.ParamByName('@dHapdDate').Value := MDate.Date;
    Parameters.ParamByName('@iStkID').Value := iStkID;
    Parameters.ParamByName('@cStaffID').Value := LStaffID.Caption;
    Parameters.ParamByName('@cProID').Value := LProvID.Caption;
    Parameters.ParamByName('@cRemark').Value := MRemark.Text;
    Parameters.ParamByName('@cVNo').Value := EVNo.Text;
    Parameters.ParamByName('@cOprID').Value := SYS_OPR_ID;
    Parameters.ParamByName('@cPrdtID').Value := lsPrdtID;
    Parameters.ParamByName('@cQty').Value := lQty;
    Parameters.ParamByName('@cPrice').Value := lPrice;
    Prepared;
    ExecProc
  end;
  if OprFlag then //��������
    ShowMessage(MSG_SAVE_DOON)
  else //�޸Ĳ���
    ShowMessage(MSG_UPDT_DOON);
  BtnCloseClick(Sender);
end;

procedure TStockIntoFrm.FormActivate(Sender: TObject);
begin
  if OprFlag then
  begin
    MDate.Date := Date;
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'P_GetBillNo :dHapdDate,:Flag,:cNo OutPut';
      Parameters.ParamByName('dHapdDate').Value := MDate.Date;
      Parameters.ParamByName('Flag').Value := 'RK';
      Parameters.ParamByName('cNo').Value := '';
      ExecSql;
      LabelNo.Caption := Parameters.ParamByName('cNo').Value;
      LabMaker.Caption := LabMaker.Caption + SYS_OPR_NAME;
    end;
  end;
  with ListQry do
  begin
    Close;
    Parameters.ParamByName('iSNo').Value := RNo;
    Open;
    first;
  end;

end;

procedure TStockIntoFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_up then
  begin
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), KEYEVENTF_KEYUP, 0);
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), KEYEVENTF_KEYUP, 0);
    key := 0;
  end;

  if key = vk_ESCAPE then
    if Application.MessageBox(MSG_REALY_CLOSE, MSG_APP_TITLE,
      MB_ICONQUESTION + mb_YesNo) = ID_Yes then Close;
end;

procedure TStockIntoFrm.ListQryCalcFields(DataSet: TDataSet);
begin
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cName,cUnit From PrdtEnCode where cPrdtID = :cPrdtId');
    Parameters.ParamByName('cPrdtID').Value := ListQrycPrdtID.Value;
    Open;
    if not eof then
    begin
      ListQrycName.Value := FieldByName('cName').AsString;
      ListQrycUnit.Value := FieldByName('cUnit').AsString;
      ListQryAMT.Value := ListQrynQty.Value * ListQrynPrice.Value;
    end;
  end;
end;

procedure TStockIntoFrm.ListQrySPRDTIDValidate(Sender: TField);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cPrdtID ');
    Sql.Add('From PrdtEnCode');
    Sql.Add('Where cPrdtID = :cPrdtID');
    Parameters.ParamByName('cPrdtID').Value := ListQrycPrdtID.Value;
    Open;
    if eof then
      raise ERangeError.Create(MSG_PRDT_ID_ERR);
  end;
end;

procedure TStockIntoFrm.SBStkClick(Sender: TObject);
begin
  {��ѯ�ֿ���Ϣ}
  if sender = SBStk then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 3;
      Page.Pages[3].TabVisible := True;
      BtnAdd.Caption := '�½��ֿ�(&W)';
      BtnFindClick(Sender);
      ShowModal;
      EStk.Text := Name;
      LStkID.Caption := ID;
      Release;
    end;
  end;
  {��ѯҵ��Ա��Ϣ}
  if sender = SBStaff then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 2;
      Page.Pages[2].TabVisible := True;
      BtnAdd.Caption := '�½�ҵ��Ա(&W)';
      BtnFindClick(Sender);
      ShowModal;
      EStaff.Text := Name;
      LStaffID.Caption := ID;
      Release;
    end;
  end;
  {��ѯ��Ӧ����Ϣ}
  if Sender = SBProv then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 0;
      Page.Pages[0].TabVisible := True;
      BtnAdd.Caption := '�½���Ӧ��(&W)';
      BtnFindClick(Sender);
      ShowModal;
      EProv.Text := Name;
      LProvID.Caption := ID;
      Release;
    end;
  end;
  {��ѯ��Ʒ����}
  if sender = SBPrdtID then
  begin
    Application.CreateForm(TSetPrdtFrm, SetPrdtFrm);
    with SetPrdtFrm do
    begin
      BtnSel.Enabled := True;
      ShowModal;
      PrdtIDSelect(DBTV, StockIntoFrm.ListQry, PrdtID);
      Release;
    end;
  end;
end;

procedure TStockIntoFrm.FormCreate(Sender: TObject);
begin
  LStkID.Caption := '';
  LStaffID.Caption := '';
  LProvID.Caption := '';
  {����������ʾ��ʽ}
  ListQryNQty.DisplayFormat := QTY_DIG_FRT;
end;

procedure TStockIntoFrm.EStkExit(Sender: TObject);
begin
  {�ж�����Ĳֿ������Ƿ���ȷ}
  if (Sender = EStk) and (eStk.Text <> '') and (LStkID.Caption = '') then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Select iStkID,cStkName From StkInfo where '
        + 'cast(iStkID as varchar) = :iStkID';
      Parameters.ParamByName('iStkID').Value := eStk.Text;
      Open;
      if eof then
        SBStkClick(SBStk)
      else
      begin
        eStk.Text := FieldByname('cStkName').AsString;
        LStkID.Caption := FieldByname('iStkID').AsString;
      end;
    end;
  {�ж������ҵ��Ա�����Ƿ���ȷ}
  if (Sender = eStaff) and (eStaff.Text <> '') and (LStaffID.Caption = '') then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'select cStaffID,cName From StaffInfo where cStaffID = :cStaffID';
      Parameters.ParamByName('cStaffID').Value := eStaff.Text;
      Open;
      if eof then
        SBStkClick(SBStaff)
      else
      begin
        eStaff.Text := FieldByname('cName').AsString;
        LStaffID.Caption := FieldByname('cStaffID').AsString;
      end;
    end;
  {�ж�����Ĺ�Ӧ���Ƿ���ȷ}
  if (Sender = eProv) and (eProv.Text <> '') and (LProvID.Caption = '') then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'select cProID,cProName From ProvInfo where cProID = :cProID';
      Parameters.ParamByName('cProID').Value := eProv.Text;
      Open;
      if eof then
        SBStkClick(SBProv)
      else
      begin
        eProv.Text := FieldByname('cProName').AsString;
        LProvID.Caption := FieldByname('cProID').AsString;
      end;
    end;
end;

procedure TStockIntoFrm.EStkChange(Sender: TObject);
begin
  {�ı�༭������ʱ�������ǵ�ID��Ϊ��}
  if sender = eStk then lstkid.Caption := '';
  if sender = eStaff then lstaffid.Caption := '';
  if sender = eProv then lProvID.Caption := '';
end;

procedure TStockIntoFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then { �ж��ǰ�ִ�м�}
  begin
    if not (ActiveControl is TDbgridEh) then
    begin { ������TDbgrid�ؼ���}
      key := #0;
      perform(WM_NEXTDLGCTL, 0, 0); {�ƶ�����һ���ؼ�}
    end
    else if (ActiveControl is TDBGridEh) then {���� TDbgrid �ؼ���}
    begin
      with TDBGridEh(ActiveControl) do
        if Selectedindex < (FieldCount - 2) then
        begin
          case SelectedIndex of
            0, 1, 2: SelectedIndex := 3;
          else
            Selectedindex := Selectedindex + 1; { �ƶ�����һ�ֶ�}
          end;
        end
        else
        begin
          if Selectedindex = (FieldCount - 2) then
            with DataSource.DataSet do
            begin
              next;
              if Eof then
                Append;
            end;
          Selectedindex := 0;
        end;
    end;
  end; //end if of #13
end;

procedure TStockIntoFrm.BitBtn2Click(Sender: TObject);
var
  dd: string;
  cnt: integer;
begin
  cnt := 0;
        {ȡ����¼���������㱨����}
  with ListQry do
  begin
    DisableControls;
    first;
    while not eof do
    begin
      cnt := cnt + 1;
      next;
    end;
    First;
  end;
  Application.CreateForm(TFQRStockList, FQRStockList);
  with FQRStockList do
  begin
    QRep.Page.Length := ColumnHeaderBand1.Size.Length
      + SummaryBand1.Size.Length * 5
      + cnt * DetailBand1.Size.Length;
    QRLabCust.Caption := '��Ӧ������:' + EProv.Text;
    QRLabSN.Caption := LabelNo.Caption;
    dd := DateToStr(MDate.Date);
    QRLabDate.Caption := '����:' + Copy(dd, 1, 4) + '��' + Copy(dd, 6, 2) + '��' + Copy(dd, 9, 2) + '��';
    QRep.DataSet := ListQry;
    QRName.DataSet := QRep.DataSet;
    QRUnit.DataSet := QRep.DataSet;
    QRQty.DataSet := QRep.DataSet;
    QRPrice.DataSet := QRep.DataSet;
    QRAmt.DataSet := QRep.DataSet;
    QRep.Preview;
    Release;
  end;
  ListQry.First;
  ListQry.EnableControls;
end;

procedure TStockIntoFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ListQry.Active := False;
end;

procedure TStockIntoFrm.ListQrycPrdtIDValidate(Sender: TField);
begin
  ListQrynQty.Value := 0;
  ListQrynPrice.Value := 0;
end;

procedure TStockIntoFrm.ListQrynPriceValidate(Sender: TField);
begin
  if ListQrynPrice.Value < 0 then
    raise ERangeError.Create(MSG_PRICE_ERR);
end;

end.

