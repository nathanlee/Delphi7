unit AddOpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons;

type
  TAddOprFrm = class(TForm)
    Label1: TLabel;
    cbxLoginID: TComboBox;
    Label2: TLabel;
    EName: TEdit;
    chkAccess: TCheckBox;
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    StaffListQry: TADOQuery;
    EFPass: TEdit;
    ERPass: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure BtnCanClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure cbxLoginIDSelect(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    OprFlag: Boolean;
  end;

var
  AddOprFrm: TAddOprFrm;

implementation
uses Main, PubMessage;
{$R *.dfm}

procedure TAddOprFrm.BtnCanClick(Sender: TObject);
begin
  close;
end;

procedure TAddOprFrm.BtnOKClick(Sender: TObject);
begin
  if eFPass.Text <> eRPass.Text then
  begin
    ShowMessage(MSG_PSD_CHGERR);
    eFPass.SetFocus;
    Exit;
  end;
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Update StaffInfo '
      + ' Set '
      + '   bOpr = 1, '
      + '   bAllowLogin = :bAccess,'
      + '   cPassword = :cPassword '
      + ' Where cStaffID = :cStaffID';
    Parameters.ParamByName('bAccess').Value := ChkAccess.Checked;
    Parameters.ParamByName('cPassword').Value := Crypt(eFPass.Text);
    Parameters.ParamByName('cStaffID').Value := cbxLoginID.Text;
    ExecSql;
  end;
  ShowMessage(MSG_SAVE_DOON);
  BtnCanClick(Sender);//¹Ø±Õ
end;

procedure TAddOprFrm.cbxLoginIDSelect(Sender: TObject);
begin
  with StaffListQry do
  begin
    First;
    MoveBy(cbxLoginID.ItemIndex);
    EName.Text := Fields[1].Value;
  end;
end;

procedure TAddOprFrm.FormActivate(Sender: TObject);
begin
  if OprFlag then
    AddCombo(cbxLoginID, StaffListQry, False)
  else
    cbxLoginID.Enabled := False;
end;

procedure TAddOprFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) or (key = vk_down) then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;
end;

end.

