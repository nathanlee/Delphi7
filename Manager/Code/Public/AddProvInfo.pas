unit AddProvInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls;

type
  TAddProvFrm = class(TForm)
    BtnSaveOut: TBitBtn;
    BitBtn2: TBitBtn;
    LeName: TLabeledEdit;
    LeCode: TLabeledEdit;
    BtnSave: TBitBtn;
    LeContract: TLabeledEdit;
    LeEMail: TLabeledEdit;
    LeTel: TLabeledEdit;
    LeAddr: TLabeledEdit;
    LeWebPage: TLabeledEdit;
    LeMainItem: TLabeledEdit;
    cbxArea: TComboBox;
    Label1: TLabel;
    procedure BtnSaveOutClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OprType: Boolean; {True:增加 False:修改}
    iAreaID: integer; {地区编码}
  end;

var
  AddProvFrm: TAddProvFrm;

implementation

uses Main, PubMessage, ADODB;

{$R *.DFM}

procedure TAddProvFrm.BtnSaveOutClick(Sender: TObject);
begin
  BtnSaveClick(Sender);
  Close;
end;

procedure TAddProvFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) or (key = vk_down) then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;
  if key = vk_up then
  begin
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), KEYEVENTF_KEYUP, 0);
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), KEYEVENTF_KEYUP, 0);
    key := 0;
  end;
end;

procedure TAddProvFrm.BtnSaveClick(Sender: TObject);
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
    Sql.Add('P_ProvInfo :sProID,:sProName,:sContract,:sTel,:sAddr,:sWebPage,');
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

procedure TAddProvFrm.FormActivate(Sender: TObject);
begin
  leCode.visible := not OprType;
  BtnSave.Visible := OprType;
end;

procedure TAddProvFrm.FormCreate(Sender: TObject);
begin
  with MainFrm.ADOTmp do
  begin
    close;
    Sql.Clear;
    Sql.Add('Select cAreaName From AreaInfo')
  end;
  AddCombo(cbxArea, MainFrm.ADOTmp, false);

end;

end.

