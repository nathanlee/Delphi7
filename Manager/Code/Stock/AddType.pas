unit AddType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons;

type
  TAddTypeFrm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EID: TEdit;
    EName: TEdit;
    BtnSave: TBitBtn;
    BtnSaveOut: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BtnSaveOutClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BOprType: Boolean; //True:Ôö¼Ó False:ÐÞ¸Ä
  end;

var
  AddTypeFrm: TAddTypeFrm;

implementation

uses Main, PubMessage;

{$R *.DFM}

procedure TAddTypeFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAddTypeFrm.FormActivate(Sender: TObject);
begin
  if not bOprType then
  begin
    EID.Enabled := False;
    EName.SetFocus;
    BtnSave.Visible := BOprType;
  end;
end;

procedure TAddTypeFrm.BtnSaveOutClick(Sender: TObject);
begin
  if Length(trim(EID.Text)) <> 2 then
  begin
    ShowMessage(MSG_TID_ERR);
    EID.SetFocus;
    Exit;
  end;
  if EName.Text = '' then
  begin
    ShowMessage(MSG_NAME_ERR);
    EName.SetFocus;
    Exit;
  end;
  if bOprType then
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Insert Into PrdtType (cTypeID,cTypeAbbr)');
      Sql.Add(' Values (:cTypeID,:cTypeAbbr)');
      Parameters.ParamByName('cTypeID').Value := eID.Text;
      Parameters.ParamByName('cTypeAbbr').Value := eName.Text;
      try
        ExecSql;
      except
        showMessage(MSG_DATA_ALREADY);
        exit;
      end;
      ShowMessage(MSG_SAVE_DOON)
    end
  else
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Update PrdtType');
      Sql.Add(' Set cTypeAbbr = :cTypeAbbr');
      Sql.Add(' Where cTypeID = :cTypeID');
      Parameters.ParamByName('cTypeID').Value := eID.Text;
      Parameters.ParamByName('cTypeAbbr').Value := eName.Text;
      ExecSql;
      ShowMessage(MSG_UPDT_DOON);
    end;
  Close;
end;

procedure TAddTypeFrm.BtnSaveClick(Sender: TObject);
begin
  if Length(EID.Text) <> 2 then
  begin
    ShowMessage(MSG_TID_ERR);
    EID.SetFocus;
    Exit;
  end;
  if EName.Text = '' then
  begin
    ShowMessage(MSG_NAME_ERR);
    EName.SetFocus;
    Exit;
  end;
  if bOprType then
  begin
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Insert Into PrdtType (cTypeID,cTypeAbbr)');
      Sql.Add(' Values (:cTypeID,:cTypeAbbr)');
      Parameters.ParamByName('cTypeID').Value := eID.Text;
      Parameters.ParamByName('cTypeAbbr').Value := eName.Text;
      try
        ExecSql;
      except
        showMessage(MSG_DATA_ALREADY);
        exit;
      end;
    end;
    eID.Text := '';
    eID.SetFocus;
  end;

end;

end.

