{**********************************
*模块名称：系统参数设置模块
*版本：    0.1
*作者：    李振华
*用途：    配置系统运行参数
*日期：    2003年8月7日
**********************************}
unit MainOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGridEh, Buttons, DB, ADODB,
  ComCtrls, Spin;

type
  TMainOptionFrm = class(TForm)
    BtnOK: TBitBtn;
    BitBtn2: TBitBtn;
    Page: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LeCropName: TLabeledEdit;
    LEEngName: TLabeledEdit;
    LETel: TLabeledEdit;
    LEAddr: TLabeledEdit;
    LeZipCode: TLabeledEdit;
    Label1: TLabel;
    SEDig: TSpinEdit;
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

procedure TMainOptionFrm.FormCreate(Sender: TObject);
begin
  Page.ActivePageIndex := 0;
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Select * From CropInfo';
    Open;
    if not eof then
    begin
      leCropName.Text := FieldByName('cCropName').AsString;
      leEngName.Text := FieldByName('cCropEngName').AsString;
      leTel.Text := FieldByName('cTel').AsString;
      leAddr.Text := FieldByName('cPostAddr').AsString;
      leZipCode.Text := FieldByName('cZipCode').AsString;
    end;
    Close;
    Sql.Clear;
    Sql.Text := 'Select iDigital From ConstValue';
    Open;
    if not eof then
      SEDig.Value := FieldByName('iDigital').Value
    else
    begin
      SEDig.Value := 2;
      Close;
      Sql.Clear;
      Sql.Text := 'Insert into ConstValue '
        +  '(iDigital,bWarm,iWarmType,bWarmUpDown,nWarmPercent) '
        +  'Values '
        +  '(2,1,0,0,20)';
      ExecSql;
    end;
  end;
end;

procedure TMainOptionFrm.BtnOKClick(Sender: TObject);
var
  I: integer;
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Truncate Table CropInfo '
      + 'Insert Into CropInfo Values '
      + '        (:cCropName,:cCropEngName,:cTel,:cPostAddr,:cZipCode)'
      + 'Update ConstValue Set iDigital = :iDigital ';
    Parameters.ParamByName('cCropName').Value := leCropName.Text;
    Parameters.ParamByName('cCropEngName').Value := leEngName.Text;
    Parameters.ParamByName('cTel').Value := leTel.Text;
    Parameters.ParamByName('cPostAddr').Value := leAddr.Text;
    Parameters.ParamByName('cZipCode').Value := leZipCode.Text;
    Parameters.ParamByName('iDigital').Value := SEDig.Value;
    ExecSQL;
    ShowMessage(MSG_SAVE_DOON);
  end;
  if SEDig.Value > 0 then
  begin
    QTY_DIG_FRT := SYS_QTY_FORMAT + '.';
    for I := 1 to SEDig.Value do
      QTY_DIG_FRT := QTY_DIG_FRT + '0';
  end
  else QTY_DIG_FRT := SYS_QTY_FORMAT;

  Close;
end;

end.

