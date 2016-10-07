unit RegSoft;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, registry, ComCtrls;

type
  TRegFrm = class(TForm)
    leCode: TLabeledEdit;
    LePassCode: TLabeledEdit;
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    Page: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegFrm: TRegFrm;

implementation

{$R *.dfm}
uses Main, PubMessage;

procedure TRegFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) or (key = vk_down) then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;
end;

procedure TRegFrm.FormCreate(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to Page.PageCount - 1 do
  begin
    Page.Pages[I].TabVisible := False;
  end;
  Page.ActivePageIndex := 0; //0：公司 1：个人
  if Page.ActivePageIndex = 0 then
  begin
    Label1.Caption := MSG_APP_TITLE;
    Label2.Caption := MSG_APP_TITLE;
    Label3.Caption := MSG_ORGANIZATION;
    Application.ProcessMessages;
  end;
    leCode.Text := IntToStr(StrToInt64(Q1dfe3df3df4r4dfg) + 82269134);
end;

procedure TRegFrm.BtnOKClick(Sender: TObject);
var
  Reg: Tregistry;
  PC2: string;
begin
  PC2 := IntToStr(((StrToInt64(leCode.Text) - 82269134) shl 3) shr 1); //Crypt()
  if lePassCode.Text = PC2 then
    Reg := Tregistry.Create;
  with Reg do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey('HARDWARE\DESCRIPTION\System\CentralProcessor\0', False);
    if not ValueExists('ProcessorID') then
    begin
      WriteString('ProcessorID', PC2);
    end;
    CloseKey;
    Free;
  end;
  Close;
end;

procedure TRegFrm.Memo1Click(Sender: TObject);
begin
  if Page.ActivePageIndex = 0 then
    Page.ActivePageIndex := 1
  else
    Page.ActivePageIndex := 0;
end;

end.

