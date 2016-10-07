unit AddBrand;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls;

type
  TAddBrandFrm = class(TForm)
    LEBID: TLabeledEdit;
    LEBrandName: TLabeledEdit;
    BtnSave: TBitBtn;
    BtnSaveOut: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnSaveOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BOprType: Boolean; //True:Ôö¼Ó False:ÐÞ¸Ä
    cTypeID: string;
  end;

var
  AddBrandFrm: TAddBrandFrm;

implementation

uses PubMessage, Main;

{$R *.DFM}

procedure TAddBrandFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAddBrandFrm.FormActivate(Sender: TObject);
begin
  if not BOprType then
  begin
    LEBID.Enabled := False;
    LEBrandName.SetFocus;
    BtnSave.Visible := BOprType;
  end;
end;

procedure TAddBrandFrm.BtnSaveClick(Sender: TObject);
begin
  if length(LEBID.Text) <> 2 then
  begin
    ShowMessage(MSG_BID_ERR);
    LEBID.SetFocus;
    Exit;
  end;
  if LEBrandName.Text = '' then
  begin
    ShowMessage(MSG_NAME_ERR);
    LEBrandName.SetFocus;
    Exit;
  end;
  if bOprType then
  begin
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Insert Into PrdtBrand (cTypeID,cBrandID, cBrandAbbr)');
      Sql.Add(' Values (:cTypeID,:cBrandID, :cBrandAbbr)');
      Parameters.ParamByName('cTypeID').Value := cTypeID;
      Parameters.ParamByName('cBrandID').Value := leBID.Text;
      Parameters.ParamByName('cBrandAbbr').Value := LEBrandName.Text;
      try
        ExecSql;
      except
        showMessage(MSG_DATA_ALREADY);
        exit;
      end;
    end;
    leBID.Text := '';
    leBrandName.Text := '';
    leBID.SetFocus;
  end;
end;

procedure TAddBrandFrm.BtnSaveOutClick(Sender: TObject);
begin
  if length(trim(LEBID.Text)) <> 2 then
  begin
    ShowMessage(MSG_BID_ERR);
    LEBID.SetFocus;
    Exit;
  end;
  if LEBrandName.Text = '' then
  begin
    ShowMessage(MSG_NAME_ERR);
    LEBrandName.SetFocus;
    Exit;
  end;
  if bOprType then
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Insert Into PrdtBrand (cTypeID,cBrandID, cBrandAbbr)');
      Sql.Add(' Values (:cTypeID,:cBrandID, :cBrandAbbr)');
      Parameters.ParamByName('cTypeID').Value := cTypeID;
      Parameters.ParamByName('cBrandID').Value := leBID.Text;
      Parameters.ParamByName('cBrandAbbr').Value := LEBrandName.Text;
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
      Sql.Add('Update PrdtBrand');
      Sql.Add(' Set cBrandAbbr = :cBrandAbbr');
      Sql.Add(' Where cTypeID = :cTypeID And cBrandID = :cBrandID');
      Parameters.ParamByName('cTypeID').Value := cTypeID;
      Parameters.ParamByName('cBrandID').Value := leBID.Text;
      Parameters.ParamByName('cBrandAbbr').Value := LEBrandName.Text;
      ExecSql;
      ShowMessage(MSG_UPDT_DOON);
    end;
  close;

end;

end.

