unit chgpsd;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, Db, DBTables, Dialogs;

type
  TChgPsdFrm = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    LabLoginID: TLabel;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChgPsdFrm: TChgPsdFrm;

implementation

{$R *.DFM}
uses Main, PubMessage, ADODB;

procedure TChgPsdFrm.BtnOKClick(Sender: TObject);
begin
  if edit1.text = edit2.text then
  begin
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Update StaffInfo '
        + ' Set '
        + '  cPassWrod = :cPswd '
        + ' Where cStaffID = :cStaffID';
      Parameters.ParamByName('cPswd').Value := Crypt(edit1.Text);
      Parameters.ParamByName('cStaffID').Value := LabLoginID.Caption;
      ExecSql;
    end;
    ShowMessage(MSG_UPDT_DOON);
    Close;
  end
  else
  begin
    ShowMessage(MSG_PSD_CHGERR);
    Edit1.SetFocus;
  end;
end;

procedure TChgPsdFrm.BtnCanClick(Sender: TObject);
begin
  Close;
end;

end.

