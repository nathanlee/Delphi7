unit AddStaff;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls;

type
  TAddStaffFrm = class(TForm)
    BtnSaveOut: TBitBtn;
    BitBtn2: TBitBtn;
    LeName: TLabeledEdit;
    LeCode: TLabeledEdit;
    BtnSave: TBitBtn;
    Label1: TLabel;
    cbxSex: TComboBox;
    LETel: TLabeledEdit;
    LEPID: TLabeledEdit;
    LEEmail: TLabeledEdit;
    LeAddr: TLabeledEdit;
    procedure BtnSaveOutClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OprType: Boolean; //True:Ôö¼Ó False:ÐÞ¸Ä
  end;

var
  AddStaffFrm: TAddStaffFrm;

implementation

uses Main, PubMessage, ADODB;

{$R *.DFM}

procedure TAddStaffFrm.BtnSaveOutClick(Sender: TObject);
begin
  if OprType then
    BtnSaveClick(Sender)
  else
  begin
    if leName.Text = '' then
    begin
      ShowMessage('MSG_StaffName_ERR');
      leName.SetFocus;
      Exit;
    end;
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Update StaffInfo '
        + ' Set '
        + 'cName = :cName,'
        + 'iSex = :iSex,'
        + 'cTel = :cTel,'
        + 'cEmail = :cEmail,'
        + 'cAddr = :cAddr,'
        + 'cIDNo = :cIDNo '
        + ' Where cStaffID = :cStaffID';
      Parameters.ParamByName('cStaffID').Value := LeCode.Text;
      Parameters.ParamByName('cName').Value := leName.Text;
      Parameters.ParamByName('iSex').Value := cbxSex.ItemIndex;
      Parameters.ParamByName('cIDNo').Value := lePID.Text;
      Parameters.ParamByName('cTel').Value := leTel.Text;
      Parameters.ParamByName('cEmail').Value := leEmail.Text;
      Parameters.ParamByName('cAddr').Value := leAddr.Text;
      ExecSql;
    end;
    ShowMessage(MSG_UPDT_DOON);
  end;
  close;
end;

procedure TAddStaffFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;
end;

procedure TAddStaffFrm.BtnSaveClick(Sender: TObject);
begin
  if leCode.Text = '' then
  begin
    ShowMessage(MSG_StaffID_ERR);
    leCode.SetFocus;
    Exit;
  end;
  if leName.Text = '' then
  begin
    ShowMessage(MSG_StaffName_ERR);
    leName.SetFocus;
    Exit;
  end;
  if OprType then
  begin
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Select cStaffID From StaffInfo Where cStaffID = :cStaffID';
      Parameters.ParamByName('cStaffID').Value := leCode.Text;
      open;
      if not Eof then
      begin
        ShowMessage(MSG_ID_ALREADY);
        leCode.SetFocus;
        Exit;
      end;
      Sql.Clear;
      Sql.Add('Insert Into StaffInfo (cStaffID,cName,iSex,cIDNo,cTel,cEmail,cAddr)');
      Sql.Add(' Values (:cStaffID,:cName,:iSex,:cIDNo,:cTel,:cEmail,:cAddr)');
      Parameters.ParamByName('cStaffID').Value := LeCode.Text;
      Parameters.ParamByName('cName').Value := leName.Text;
      Parameters.ParamByName('iSex').Value := cbxSex.ItemIndex;
      Parameters.ParamByName('cIDNo').Value := lePID.Text;
      Parameters.ParamByName('cTel').Value := leTel.Text;
      Parameters.ParamByName('cEmail').Value := leEmail.Text;
      Parameters.ParamByName('cAddr').Value := leAddr.Text;
      ExecSql;
    end;
    ShowMessage(MSG_SAVE_DOON);
    LeCode.Text := '';
    LeName.Text := LeCode.Text;
    lePID.Text := LeCode.Text;
    leTel.Text := LeCode.Text;
    leEmail.Text := LeCode.Text;
    leAddr.Text := LeCode.Text;
    LeCode.SetFocus;
  end;
end;

procedure TAddStaffFrm.FormActivate(Sender: TObject);
begin
  BtnSave.Visible := OprType;
  if OprType = false then
  begin
    leCode.Enabled := False;
    leName.SetFocus;
  end;
end;

end.

