unit AddUser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls;

type
  TAddUserFrm = class(TForm)
    BtnSaveOut: TBitBtn;
    BitBtn2: TBitBtn;
    LeName: TLabeledEdit;
    LeCode: TLabeledEdit;
    BtnSave: TBitBtn;
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
  AddUserFrm: TAddUserFrm;

implementation

uses Main, PubMessage;

{$R *.DFM}

procedure TAddUserFrm.BtnSaveOutClick(Sender: TObject);
begin
  BtnSaveClick(Sender);
end;

procedure TAddUserFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;
end;

procedure TAddUserFrm.BtnSaveClick(Sender: TObject);
begin
  if OprType  then
  begin
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Insert Into Tab_User (sUserID,sUserName)');
      Sql.Add(' Values (:sUserID,:sUserName)');
      Parameters.ParamByName('sUserID').Value := LeCode.Text;
      Parameters.ParamByName('sUserName').Value := leName.Text;
      ExecSql;
    end;
    ShowMessage(MSG_SAVE_DOON);
    LeCode.Text := '';
    LeName.Text := LeCode.Text;
    LeCode.SetFocus;
  end;
end;

procedure TAddUserFrm.FormActivate(Sender: TObject);
begin
  BtnSave.Visible := OprType;
end;

end.

