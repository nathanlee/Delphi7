unit DelList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TDelListFrm = class(TForm)
    Label2: TLabel;
    ckxCode: TCheckBox;
    ckxCust: TCheckBox;
    ckxStk: TCheckBox;
    ckxOpr: TCheckBox;
    ckxStaff: TCheckBox;
    BtnOK: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BtnOKClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelListFrm: TDelListFrm;

implementation
uses Main, PubMessage;
{$R *.dfm}

procedure TDelListFrm.BtnOKClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04010', SYS_DELETE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'P_DeleteList :ChkList,:ChkCust,:ChkStaff,:ChkOpr,:ChkStk,:Flag output';
    Parameters.ParamByName('ChkList').Value := CkxCode.Checked;
    Parameters.ParamByName('ChkCust').Value := CkxCust.Checked;
    Parameters.ParamByName('ChkStaff').Value := CkxStaff.Checked;
    Parameters.ParamByName('ChkOpr').Value := CkxOpr.Checked;
    Parameters.ParamByName('ChkStk').Value := CkxStk.Checked;
   // Parameters.ParamByName('Flag').Value := 0;
    ExecSql;
    if Parameters.ParamByName('Flag').Value = 0 then
      ShowMessage(MSG_DELE_DOON)
    else
      ShowMessage('数据无法删除');
  end;
end;

procedure TDelListFrm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.

