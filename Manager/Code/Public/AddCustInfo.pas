unit AddCustInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddProvInfo, StdCtrls, ExtCtrls, Buttons;

type
  TAddCustFrm = class(TAddProvFrm)
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnSaveOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddCustFrm: TAddCustFrm;

implementation

{$R *.dfm}
uses Main, PubMessage, ADODB;

procedure TAddCustFrm.BtnSaveClick(Sender: TObject);
begin
  if leName.Text = '' then
  begin
    ShowMessage(MSG_PLSE_CUST);
    leName.SetFocus;
    Exit;
  end;
  if cbxArea.Text = '' then
  begin
    ShowMessage(MSG_CUSTAREA_ERR);
    cbxArea.SetFocus;
    Exit;
  end;
  with MainFrm.ADOTmp do
  begin
    Sql.Clear;
    Sql.Add('P_CustInfo :sProID,:sProName,:sContract,:sTel,:sAddr,:sWebPage,');
    Sql.Add(':sEmail,:sMainItem,:sAreaAbbr');
    Parameters.ParamByName('sProID').Value := LeCode.Text;
    Parameters.ParamByName('sProName').Value := leName.Text;
    Parameters.ParamByName('sContract').Value := leContract.Text;
    Parameters.ParamByName('sTel').Value := leTel.Text;
    Parameters.ParamByName('sAddr').Value := leAddr.Text;
    Parameters.ParamByName('sWebPage').Value := leWebPage.Text;
    Parameters.ParamByName('sEmail').Value := leEMail.Text;
    Parameters.ParamByName('sMainItem').Value := leMainItem.Text;
    Parameters.ParamByName('sAreaAbbr').Value := Trim(cbxArea.Text);
    ExecSql;
  end;
  ShowMessage(MSG_SAVE_DOON);
  LeCode.Text := '';
  LeName.Text := LeCode.Text;
  LeContract.Text := LeCode.Text;
  LeTel.Text := LeCode.Text;
  LeWebPage.Text := LeCode.Text;
  LeEMail.Text := LeCode.Text;
  LeMainItem.Text := LeCode.Text;
  LeAddr.Text := LeCode.Text;
  LeName.SetFocus;
end;

procedure TAddCustFrm.BtnSaveOutClick(Sender: TObject);
begin
  BtnSaveClick(Sender);
  Close;
end;

end.
