unit RolePer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TRolePerForm = class(TForm)
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    LabRole: TLabel;
    BtnOpr: TBitBtn;
    GroupBox1: TGroupBox;
    ListOpr: TListBox;
    BtnDel: TBitBtn;
    procedure BtnOprClick(Sender: TObject);
    procedure BtnCanClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    UserID: TStrings;
  public
    { Public declarations }
    RoleID: integer;
  end;

var
  RolePerForm: TRolePerForm;

implementation
uses Main, PubMessage, AddRoleOpr, ADODB;
{$R *.dfm}

procedure TRolePerForm.BtnOprClick(Sender: TObject);
begin
  Application.CreateForm(TAddRoleOprFrm, AddRoleOprFrm);
  with AddRoleOprFrm do
  begin
    iRoleID := RoleID;
    ShowModal;
    Free;
  end;
end;

procedure TRolePerForm.BtnOKClick(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to ListOpr.Items.Count - 1 do
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Insert into StaffRole Values (:iRuleID,:cStaffID)';
      Parameters.ParamByName('iRuleID').Value := RoleID;
      Parameters.ParamByName('cStaffID').Value := Copy(ListOpr.Items.Strings[I], 1, 7);
      ExecSql;
    end;
  for I := 0 to UserID.count - 1 do
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Delete StaffRole where cStaffID = :cStaffID And iRuleID = '
        + IntToStr(RoleID);
      Parameters.ParamByName('cStaffID').Value := UserID.Strings[I];
      ExecSql;
    end;
  BtnCanClick(Sender);
end;

procedure TRolePerForm.BtnCanClick(Sender: TObject);
begin
  Close;
end;


procedure TRolePerForm.BtnDelClick(Sender: TObject);
var
  I: integer;
begin
  for i := 0 to ListOpr.Count - 1 do
  begin
    if ListOpr.Selected[i] then
    begin
      UserID.Add(Copy(ListOpr.items.Strings[i], 1, 7));
      ListOpr.Items.Delete(i);
    end;
  end;
end;

procedure TRolePerForm.FormActivate(Sender: TObject);
begin
  UserID := TStringList.create;

end;

end.

