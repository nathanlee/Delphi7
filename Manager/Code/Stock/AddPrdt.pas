unit AddPrdt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls,ADODB;

type
  TAddPrdtFrm = class(TForm)
    BtnSaveOut: TBitBtn;
    BitBtn2: TBitBtn;
    LeName: TLabeledEdit;
    LEUnit: TLabeledEdit;
    LeID: TLabeledEdit;
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
    BOprType: Boolean; //True:Ôö¼Ó False:ÐÞ¸Ä
    cTypeID, cBrandID,cParentID: string;
  end;

var
  AddPrdtFrm: TAddPrdtFrm;

implementation

uses Main, SetPrdt, PubMessage;

{$R *.DFM}

procedure TAddPrdtFrm.BtnSaveOutClick(Sender: TObject);
begin
  if LEID.Text = '' then
  begin
    ShowMessage(MSG_ID_ERR);
    LEID.SetFocus;
    Exit;
  end;
  if LEName.Text = '' then
  begin
    ShowMessage(MSG_NAME_ERR);
    LEName.SetFocus;
    Exit;
  end;
  if bOprType then
  begin
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Insert Into PrdtEnCode (cTypeID, cBrandID, cPrdtID, cName, cUnit,cParentID)');
      Sql.Add(' Values (:cTypeID,:cBrandID,:cPrdtID,:cName,:cUnit,:cParentID)');
      Parameters.ParamByName('cTypeID').Value := cTypeID;
      Parameters.ParamByName('cBrandID').Value := cBrandID;
      Parameters.ParamByName('cPrdtID').Value := LeID.Text;
      Parameters.ParamByName('cName').Value := LeName.Text;
      Parameters.ParamByName('cUnit').Value := leUnit.Text;
      Parameters.ParamByName('cParentID').Value := cParentID;
      try
        ExecSql;
      except
        showMessage(MSG_DATA_ALREADY);
        exit;
      end;
    end;
    ShowMessage(MSG_SAVE_DOON);
  end
  else
  begin
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('update PrdtEnCode ');
      Sql.Add('  Set');
      Sql.Add('   cName = :cName,');
      Sql.Add('   cUnit = :cUnit');
      Sql.Add(' where cPrdtID = :cPrdtID');
      Parameters.ParamByName('cPrdtID').Value := LeID.Text;
      Parameters.ParamByName('cName').Value := LeName.Text;
      Parameters.ParamByName('cUnit').Value := leUnit.Text;
      ExecSql;
    end;
    ShowMessage(MSG_UPDT_DOON);
  end;
  Close;
end;

procedure TAddPrdtFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAddPrdtFrm.BtnSaveClick(Sender: TObject);
begin
  if LEID.Text = '' then
  begin
    ShowMessage(MSG_ID_ERR);
    LEID.SetFocus;
    Exit;
  end;
  if LEName.Text = '' then
  begin
    ShowMessage(MSG_NAME_ERR);
    LEName.SetFocus;
    Exit;
  end;
  if bOprType then
  begin
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Insert Into PrdtEnCode (cTypeID, cBrandID, cPrdtID, cName, cUnit,cParentID)');
      Sql.Add(' Values (:cTypeID,:cBrandID,:cPrdtID,:cName,:cUnit,:cParentID)');
      Parameters.ParamByName('cTypeID').Value := cTypeID;
      Parameters.ParamByName('cBrandID').Value := cBrandID;
      Parameters.ParamByName('cPrdtID').Value := LeID.Text;
      Parameters.ParamByName('cName').Value := LeName.Text;
      Parameters.ParamByName('cUnit').Value := leUnit.Text;
      Parameters.ParamByName('cParentID').Value := cParentID;
      try
        ExecSql;
      except
        showMessage(MSG_DATA_ALREADY);
        exit;
      end;
    end;
    ShowMessage(MSG_SAVE_DOON);
    RefreshQry(SetPrdtFrm.PrdtQry);
    LeID.Text := '';
    LeID.SetFocus;
  end;
end;

procedure TAddPrdtFrm.FormActivate(Sender: TObject);
begin
  if not BOprType then
  begin
    LEID.Enabled := False;
    LEUnit.setFocus;
    BtnSave.Visible := BOprType;
  end;
end;


end.

