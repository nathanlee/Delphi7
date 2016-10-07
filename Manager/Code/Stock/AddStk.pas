unit AddStk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TAddStkFrm = class(TForm)
    LeStkLinkMan: TLabeledEdit;
    leStkTel: TLabeledEdit;
    leStkAddr: TLabeledEdit;
    leStkName: TLabeledEdit;
    BtnSaveOut: TBitBtn;
    BitBtn2: TBitBtn;
    BtnSave: TBitBtn;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnSaveOutClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    BOprType: Boolean; //True:Ôö¼Ó False:ÐÞ¸Ä
    iStkID:integer;
  end;

var
  AddStkFrm: TAddStkFrm;

implementation

{$R *.dfm}

uses Main, SerachCust, PubMessage;

procedure TAddStkFrm.BtnSaveClick(Sender: TObject);
begin
  if LEStkName.Text = '' then
  begin
    ShowMessage(MSG_PLSE_STORE);
    LEStkName.SetFocus;
    Exit;
  end;
  if bOprType then
  begin
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Add('Insert Into StkInfo (cStkName, cLinkMan, cTel, cAddr)');
      Sql.Add(' Values (:cStkName, :cLinkMan, :cTel, :cAddr)');
      Parameters.ParamByName('cStkName').Value := leStkName.text;
      Parameters.ParamByName('cLinkMan').Value := leStkLinkMan.Text;
      Parameters.ParamByName('cTel').Value := LeStkTel.Text;
      Parameters.ParamByName('cAddr').Value := LeStkAddr.Text;
      ExecSql;
    end;
    ShowMessage(MSG_SAVE_DOON);
    LEStkName.Text := '';
    leStkLinkMan.Text := '';
    leStkTel.Text := '';
    leStkAddr.Text := '';
    LEStkName.SetFocus;
  end;

end;

procedure TAddStkFrm.BtnSaveOutClick(Sender: TObject);
begin
  if bOprType then
    btnSaveClick(Sender)
  else
    with MainFrm.ADOTmp do
    begin
      Sql.Clear;
      Sql.Text := 'Update StkInfo (cStkName, cLinkMan, cTel, cAddr)'
                + ' Set '
                + ' cStkName = :cStkName,'
                + ' cLinkMan = :cLinkMan,'
                + ' cTel = :cTel,'
                + ' cAddr = :cAddr'
                + ' Where iStkID = :iStkID';
      Parameters.ParamByName('cStkName').Value := leStkName.text;
      Parameters.ParamByName('cLinkMan').Value := leStkLinkMan.Text;
      Parameters.ParamByName('cTel').Value := LeStkTel.Text;
      Parameters.ParamByName('cAddr').Value := LeStkAddr.Text;
      Parameters.ParamByName('iStkID').Value := iStkID;
      ExecSql;
      ShowMessage(MSG_SAVE_DOON);
    end;

end;

procedure TAddStkFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;
end;

end.
