{**********************************
*模块名称：报警条件设置           *
*版本：    0.1                    *
*作者：    李振华                 *
*用途：    设置软件自动报警条件   *
*日期：    2004年6月17日          *
**********************************}
unit MainOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGridEh, Buttons, DB, ADODB, Spin;

type
  TMainOptionFrm = class(TForm)
    BtnOK: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    CbxAlarm: TComboBox;
    cbxUpDown: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    SEPercent: TSpinEdit;
    Label5: TLabel;
    chkWarm: TCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainOptionFrm: TMainOptionFrm;

implementation

{$R *.dfm}
uses Main, PubMessage;

procedure TMainOptionFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;

end;

procedure TMainOptionFrm.FormCreate(Sender: TObject);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Select * From ConstValue';
    Open;
    if eof then
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Insert into ConstValue '
        + '(iDigital,bWarm,iWarmType,bWarmUpDown,nWarmPercent) '
        + 'Values '
        + '(2,1,0,0,20)';
      ExecSql;
      chkWarm.Checked := True;
      cbxAlarm.ItemIndex := 0;
      cbxUpDown.ItemIndex := 0;
      SEPercent.Value := 20;
    end
    else
    begin
      close;
      Sql.Clear;
      Sql.Text := 'Select * From ConstValue';
      Open;
      chkWarm.Checked := FieldByName('bWarm').AsBoolean;
      cbxAlarm.ItemIndex := FieldByName('iWarmType').Value;
      cbxUpDown.ItemIndex := FieldByName('bWarmUpDown').Value;
      SEPercent.Value := FieldByName('nWarmPercent').Value;
    end;
  end;
end;

procedure TMainOptionFrm.BtnOKClick(Sender: TObject);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Update ConstValue '
      + 'Set '
      + '  bWarm = :bWarm,'
      + '  iWarmType = :iWarmType,'
      + '  bWarmUpDown = :bWarmUpDown,'
      + '  nWarmPercent = :nWarmPercent';
    Parameters.ParamByName('bWarm').Value := ChkWarm.Checked;
    Parameters.ParamByName('iWarmType').Value := CbxAlarm.ItemIndex;
    Parameters.ParamByName('bWarmUpDown').Value := CbxUpDown.ItemIndex;
    Parameters.ParamByName('nWarmPercent').Value := SEPercent.Value;
    ExecSQL;
    ShowMessage(MSG_SAVE_DOON);
  end;

end;

end.

