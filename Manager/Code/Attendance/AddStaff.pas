unit AddStaff;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, StdCtrls, ExtCtrls,
  Forms, Buttons, Mask, Db, DBTables, Dialogs, ComCtrls, DBCtrls, ExtDlgs,
  Variants;

type
  TAddStaffFrm = class(TForm)
    Label1: TLabel;
    EStaffID: TMaskEdit;
    Label2: TLabel;
    EName: TEdit;
    Label3: TLabel;
    PDate: TDateTimePicker;
    Label4: TLabel;
    CBXSex: TComboBox;
    GroupBox1: TGroupBox;
    PictureDialog: TOpenPictureDialog;
    Label5: TLabel;
    CBXDuty: TComboBox;
    Label6: TLabel;
    CBXCole: TComboBox;
    Label7: TLabel;
    EIDAddr: TEdit;
    Label8: TLabel;
    EIDNo: TEdit;
    LENation: TLabeledEdit;
    Label9: TLabel;
    cbxDept: TComboBox;
    LeAddr: TLabeledEdit;
    LETel: TLabeledEdit;
    LeEmail: TLabeledEdit;
    Label10: TLabel;
    Birthday: TDateTimePicker;
    BtnSave: TBitBtn;
    BtnSaveOut: TBitBtn;
    BitBtn2: TBitBtn;
    DBImage: TDBImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnSaveOutClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure EStaffIDExit(Sender: TObject);
    procedure DBImageDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OprFlag: Boolean; //True = Add user False = Update
  end;

var
  AddStaffFrm: TAddStaffFrm;

implementation

uses PubMessage, Main, ADODB;

{$R *.DFM}

procedure TAddStaffFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    Key := 0;
  end;
end;

procedure TAddStaffFrm.FormCreate(Sender: TObject);
begin
  {添加学历列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cColeName From CollegeInfo');
    Application.ProcessMessages;
    AddComBo(CbxCole, MainFrm.AdoTmp, False);
  {添加职务列表}
    Close;
    Sql.Clear;
    Sql.Add('Select cDutyName From DutyInfo');
    Application.ProcessMessages;
    AddComBo(CbxDuty, MainFrm.AdoTmp, False);
  {添加部门列表}
    Close;
    Sql.Clear;
    Sql.Add('Select cDepName From DepartInfo');
    Application.ProcessMessages;
    AddComBo(CbxDept, MainFrm.AdoTmp, False);
  end;

end;

procedure TAddStaffFrm.FormActivate(Sender: TObject);
begin
  if OprFlag then
  begin
    cbxSex.ItemIndex := 0;
    PDate.Date := Date;
    Birthday.Date := Date;
  end
  else
  begin
  eStaffID.Enabled := False;
  BtnSave.Visible := False;
  BtnSaveOut.caption := '确定(&S)';
  end;
end;

procedure TAddStaffFrm.BtnSaveOutClick(Sender: TObject);
begin
  BtnSaveClick(Sender);
  Close;
end;

procedure TAddStaffFrm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TAddStaffFrm.BtnSaveClick(Sender: TObject);
var
  iColeID, iDepID, iDutyID: integer;
begin
  if length(eStaffID.text) <> 7 then
  begin
    ShowMessage(MSG_StaffID_ERR);
    eStaffID.SetFocus;
    Exit;
  end;
  if length(eName.text) = 0 then
  begin
    ShowMessage(MSG_StaffNAME_ERR);
    eName.SetFocus;
    Exit;
  end;
  if length(leNation.text) = 0 then
  begin
    ShowMessage(MSG_StaffNation_ERR);
    leNation.SetFocus;
    Exit;
  end;
  if (Birthday.Date = PDate.Date) or (Birthday.Date > Date) then
  begin
    ShowMessage(MSG_PLSE_DATE);
    Birthday.SetFocus;
    Exit;
  end;

  {查找学历编码}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select iColeID From CollegeInfo Where cColeName = :cCole');
    Parameters.ParamByName('cCole').Value := cbxCole.Text;
    Open;
    if not eof then
      iColeID := Fields[0].Value
    else
      iColeID := 0;
  {查找职务编码}
    Close;
    Sql.Clear;
    Sql.Add('Select iDutyID From DutyInfo Where cDutyName = :cDuty');
    Parameters.ParamByName('cDuty').Value := cbxDuty.Text;
    Open;
    if not eof then
      iDutyID := Fields[0].Value
    else
      iDutyID := 0;
  {查找部门编码}
    Close;
    Sql.Clear;
    Sql.Add('Select iDepID From DepartInfo Where cDepName = :cDep');
    Parameters.ParamByName('cDep').Value := cbxDept.Text;
    Open;
    if not eof then
      iDepID := Fields[0].Value
    else
      iDepID := 0;
  end;
  if OprFlag then {新建员工}
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Insert Into StaffInfo '
        + ' (cStaffID,cName,iSex,dBirthday,cNation,cTel,cEmail,cAddr,cIDNo,cIDAddr,dWorkTime,iColeID,iDutyID,iDepID) '
        + '   Values '
        + ' (:cStaffID,:cName,:iSex,:dBirthday,:cNation,:cTel,:cEmail,:cAddr,:cIDNo,:cIDAddr,:dWorkTime,';
      if iColeID <> 0 then
        Sql.Text := Sql.Text + ' :iColeID, '
      else
        Sql.Text := Sql.Text + ' NULL, ';
      if iDutyID <> 0 then
        Sql.Text := Sql.Text + ' :iDutyID, '
      else
        Sql.Text := Sql.Text + ' NULL, ';
      if iDepID <> 0 then
        Sql.Text := Sql.Text + ' :iDepID) '
      else
        Sql.Text := Sql.Text + ' NULL) ';

      Parameters.ParamByName('cStaffID').Value := eStaffID.Text;
      Parameters.ParamByName('cName').Value := eName.Text;
      Parameters.ParamByName('iSex').Value := cbxSex.ItemIndex;
      Parameters.ParamByName('dBirthday').Value := Birthday.Date;
      Parameters.ParamByName('cNation').Value := leNation.Text;
      Parameters.ParamByName('cTel').Value := leTel.Text;
      Parameters.ParamByName('cEMail').Value := leEMail.Text;
      Parameters.ParamByName('cAddr').Value := leAddr.Text;
      Parameters.ParamByName('cIDNo').Value := EIDNo.Text;
      Parameters.ParamByName('cIDAddr').Value := EIDAddr.Text;
      Parameters.ParamByName('dWorkTime').Value := PDate.Date;
      if iColeID <> 0 then
        Parameters.ParamByName('iColeID').Value := iColeID;
      if iDutyID <> 0 then
        Parameters.ParamByName('iDutyID').Value := iDutyID;
      if iDepID <> 0 then
        Parameters.ParamByName('iDepID').Value := iDepID;
      ExecSql;
      ShowMessage(MSG_SAVE_DOON);
    end
  else {修改员工属性}
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := ' Update StaffInfo '
        + ' Set '
        + ' cName = :cName,'
        + ' iSex = :iSex,'
        + ' dBirthday = :dBirthday,'
        + ' cNation = :cNation,'
        + ' cTel = :cTel,'
        + ' cEMail = :cEMail,'
        + ' cAddr = :cAddr,'
        + ' cIDNo = :cIDNo,'
        + ' cIDAddr = :cIDAddr,'
        + ' dWorkTime = :dWorkTime';
      if iColeID <> 0 then
        Sql.Text := Sql.Text + ' ,iColeID = :iColeID ';
      if iDutyID <> 0 then
        Sql.Text := Sql.Text + ' ,iDutyID = :iDutyID ';
      if iDepID <> 0 then
        Sql.Text := Sql.Text + ' ,iDepID = :iDepID ';
      Sql.Text := Sql.Text + ' Where cStaffID = :cStaffID ';
      Parameters.ParamByName('cStaffID').Value := eStaffID.Text;
      Parameters.ParamByName('cName').Value := eName.Text;
      Parameters.ParamByName('iSex').Value := cbxSex.ItemIndex;
      Parameters.ParamByName('dBirthday').Value := Birthday.Date;
      Parameters.ParamByName('cNation').Value := leNation.Text;
      Parameters.ParamByName('cTel').Value := leTel.Text;
      Parameters.ParamByName('cEMail').Value := leEMail.Text;
      Parameters.ParamByName('cAddr').Value := leAddr.Text;
      Parameters.ParamByName('cIDNo').Value := EIDNo.Text;
      Parameters.ParamByName('cIDAddr').Value := EIDAddr.Text;
      Parameters.ParamByName('dWorkTime').Value := PDate.Date;
      if iColeID <> 0 then
        Parameters.ParamByName('iColeID').Value := iColeID;
      if iDutyID <> 0 then
        Parameters.ParamByName('iDutyID').Value := iDutyID;
      if iDepID <> 0 then
        Parameters.ParamByName('iDepID').Value := iDepID;
      ExecSql;
      ShowMessage(MSG_UPDT_DOON);
    end;
end;

procedure TAddStaffFrm.EStaffIDExit(Sender: TObject);
begin
  {判断编码是否没有重复}
  if OprFlag and (length(eStaffID.Text) = 7) then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('Select 1 From StaffInfo Where cSTaffID = :cStaffID');
      Parameters.ParamByName('cStaffID').Value := eStaffID.Text;
      Open;
      if not eof then
      begin
        ShowMessage(MSG_StaffID_ERR2);
        eStaffID.SetFocus;
      end;
    end;
end;

procedure TAddStaffFrm.DBImageDblClick(Sender: TObject);
begin
  if PictureDialog.Execute then
    DBImage.Picture.LoadFromFile(PictureDialog.FileName);
end;

end.

