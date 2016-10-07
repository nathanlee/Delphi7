unit Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, ExtCtrls;

type
  TLoginFrm = class(TForm)
    BtnOK: TBitBtn;
    LabelTrip: TLabel;
    EPSWD: TEdit;
    Label1: TLabel;
    EUID: TEdit;
    Image1: TImage;
    LabBar: TLabel;
    EBarID: TEdit;
    BtnCan: TBitBtn;
    procedure BtnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EUIDExit(Sender: TObject);
    procedure BtnCanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    LoginOK: Boolean;
  end;

var
  LoginFrm: TLoginFrm;

implementation

{$R *.DFM}
uses PubMessage, Main, ADODB;

procedure TLoginFrm.BtnOKClick(Sender: TObject);
begin
  if Length(EUID.Text) = 0 then
  begin
    ShowMessage(MSG_LOGIN_ID);
    EUID.SetFocus;
    Exit;
  end;
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select * From V_OprList where cOprID = :cOprID');
    Parameters.ParamByName('cOprID').Value := EUID.Text;
    Open;
    if (Epswd.Text <> Crypt(FieldByName('cPassWord').AsString)) then
    begin
      ShowMessage(MSG_PSD_ERR);
      EPSWD.SetFocus;
    end
    else
    begin
      SYS_OPR_ID := EUID.Text;
      SYS_OPR_NAME := FieldByName('cNAME').AsString;
      LoginOK := True;
      LoginFrm.Close;
    end;
  end;
end;

procedure TLoginFrm.FormCreate(Sender: TObject);
begin
  LoginOK := False;
end;

procedure TLoginFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    Key := 0;
  end;
end;

procedure TLoginFrm.EUIDExit(Sender: TObject);
begin
  if LENGTH(EUID.Text) <> 0 then
  begin
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('Select * From V_OprList where cOprID = :cOprID');
      Parameters.ParamByName('cOprID').Value := EUID.Text;
      Open;
      if Eof then
      begin
        ShowMessage(MSG_LOGIN_ID_ERR);
        EUID.SetFocus;
      end
      else if not FieldByName('bAllowLogin').Value then
      begin
        ShowMessage(MSG_LOGIN_ACCESS);
        EUID.SetFocus;
      end;
    end;
  end;
end;

procedure TLoginFrm.BtnCanClick(Sender: TObject);
begin
  LoginOK := False;
  Close;
end;

procedure TLoginFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (not LoginOK) then BtnCanClick(Sender);
end;

end.

