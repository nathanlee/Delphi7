{**********************************
*模块名称：库存盘点记录模块
*版本：    0.1
*作者：    李振华
*用途：    库存盘点记录
*日期：    2003年8月24日
**********************************}
unit CheckInto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, Mask,
  ComCtrls, DBGridEh, DBCtrlsEh, DBLookupEh, ADODB, GridsEh;

type
  TCheckIntoFrm = class(TForm)
    PanelTitle: TPanel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
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
    SBStk: TSpeedButton;
    EStk: TEdit;
    ListQryiSNo: TIntegerField;
    ListQrycPrdtID: TStringField;
    ListQrycName: TStringField;
    ListQrycUnit: TStringField;
    SBPrdtID: TSpeedButton;
    LStkID: TLabel;
    MRemark: TMemo;
    Label2: TLabel;
    Label7: TLabel;
    LabelNo: TLabel;
    ListQrynStkQty: TBCDField;
    ListQrynChkQty: TBCDField;
    ListQrynQty: TFloatField;
    ADO1: TADOQuery;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListQryCalcFields(DataSet: TDataSet);
    procedure SBStkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EStkExit(Sender: TObject);
    procedure EStkChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    RNo: integer;
    OprFlag: Boolean; //True:Append False:Update;
  end;

var
  CheckIntoFrm: TCheckIntoFrm;

implementation

uses Main, PubMessage, SerachCust, SetPrdt;

{$R *.DFM}

procedure TCheckIntoFrm.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TCheckIntoFrm.BitBtn1Click(Sender: TObject);
var
  lsPrdtID, lstkQty, lChkQty: widestring;
  iSN, iStkID: integer;
begin
  if eStk.Text = '' then
  begin
    ShowMessage(MSG_PLSE_STORE);
    eStk.SetFocus;
    Exit;
  end;

  {仓库编号}
  iStkID := StrToInt(LStkID.Caption);

  {合并商品编码、数量、单价成一个字符串}
  with ListQry do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if ListQrycPrdtID.AsString = '' then
        Delete
      else
      begin
        lsPrdtID := lsPrdtID + uppercase(Trim(ListQrycPrdtID.AsString)) + ',';
        lStkQty := lStkQty + Trim(ListQrynStkQty.AsString) + ',';
        lChkQty := lChkQty + Trim(ListQrynChkQty.AsString) + ',';
      end;
      next;
    end;
    EnableControls;
  end;

  {调用存储过程添加和修改数据库}
  if OprFlag then //新增操作
    iSN := 0
  else //修改操作
    iSN := RNo;

  with AProc do
  begin
    Parameters.ParamByName('@iSN').Value := iSN;
    Parameters.ParamByName('@dHapdDate').Value := MDate.Date;
    Parameters.ParamByName('@iStkID').Value := iStkID;
    Parameters.ParamByName('@cRemark').Value := MRemark.Text;
    Parameters.ParamByName('@cOprID').Value := SYS_OPR_ID;
    Parameters.ParamByName('@cPrdtID').Value := lsPrdtID;
    Parameters.ParamByName('@cStkQty').Value := lStkQty;
    Parameters.ParamByName('@cChkQty').Value := lChkQty;
    Prepared;
    ExecProc
  end;
  if OprFlag then //新增操作
    ShowMessage(MSG_SAVE_DOON)
  else //修改操作
    ShowMessage(MSG_UPDT_DOON);
  Close;
end;

procedure TCheckIntoFrm.FormActivate(Sender: TObject);
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
      Parameters.ParamByName('Flag').Value := 'CK';
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

procedure TCheckIntoFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TCheckIntoFrm.ListQryCalcFields(DataSet: TDataSet);
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
      ListQrynQty.Value := ListQrynChkQty.Value - ListQrynStkQty.Value;
    end;
  end;
end;

procedure TCheckIntoFrm.SBStkClick(Sender: TObject);
begin
  {查询商品编码}
  if sender = SBPrdtID then
  begin
    Application.CreateForm(TSetPrdtFrm, SetPrdtFrm);
    with SetPrdtFrm do
    begin
      BtnSel.Enabled := True;
      ShowModal;
      PrdtIDSelect(DBTV, CheckIntoFrm.ListQry, PrdtID);
      Release;
    end;
  end;
  {查询仓库信息}
  if sender = SBStk then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 3;
      Page.Pages[3].TabVisible := True;
      BtnAdd.Caption := '新建仓库(&W)';
      BtnFindClick(Sender);
      ShowModal;
      EStk.Text := Name;
      LStkID.Caption := ID;
      EStkExit(Sender);
      Release;
    end;
  end;
end;


procedure TCheckIntoFrm.FormCreate(Sender: TObject);
begin
  LStkID.Caption := '';
  {设置数量显示格式}
  ListQryNStkQty.DisplayFormat := QTY_DIG_FRT;
  ListQryNChkQty.DisplayFormat := QTY_DIG_FRT;
  ListQryNQty.DisplayFormat := QTY_DIG_FRT;
end;

procedure TCheckIntoFrm.EStkExit(Sender: TObject);
var
  fQty: double;
  cPrdtID: string;
begin
  {判断输入的调出仓库名称是否正确}
  ShowHide(MSG_PROCESS_DATA);
  if (eStk.Text <> '') and (LStkID.Caption = '') then
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
  {根据输入的仓库，把此仓库里的库存全部列出}
  ListQry.Close;
  ListQry.Open;
  with ADO1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cPrdtID,nQty From PrdtStock Where iStkID = :iStkID');
    Parameters.ParamByName('iStkID').Value := StrToInt(LStkID.Caption);
    Open;
    First;
    ListQry.DisableControls;
    while not eof do
    begin
      fQty := FieldByname('nQty').AsFloat;
      cPrdtID := FieldByname('cPrdtID').AsString;
      ListQry.Append;
      ListQrycPrdtID.Value := cPrdtID;
      ListQrynStkQty.Value := fQty;
      ListQrynChkQty.Value := fQty;
      next;
    end;
    ListQry.First;
    ListQry.EnableControls;
  end;
  ShowHide('');

end;

procedure TCheckIntoFrm.EStkChange(Sender: TObject);
begin
  {改变编辑框内容时，把它们的ID变为空}
  if sender = eStk then lstkid.Caption := '';
end;

procedure TCheckIntoFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then { 判断是按执行键}
  begin
    if not (ActiveControl is TDbgridEh) then
    begin { 不是在TDbgrid控件内}
      key := #0;
      perform(WM_NEXTDLGCTL, 0, 0); {移动到下一个控件}
    end
    else if (ActiveControl is TDBGridEh) then {是在 TDbgrid 控件内}
    begin
      with TDBGridEh(ActiveControl) do
        if Selectedindex < (FieldCount - 2) then
        begin
          case SelectedIndex of
            0, 1, 2: SelectedIndex := 3;
          else
            Selectedindex := Selectedindex + 1; { 移动到下一字段}
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

end.

