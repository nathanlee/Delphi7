unit Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, jpeg;

type
  TSplashFrm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashFrm: TSplashFrm;

implementation

{$R *.DFM}
uses PubMessage;

procedure TSplashFrm.FormCreate(Sender: TObject);
begin
  Application.ProcessMessages;
  Label1.Caption := MSG_APP_TITLE;
  Label2.Caption := MSG_APP_TITLE;
  Application.ProcessMessages;
  Label3.Caption := MSG_ORGANIZATION;

end;

procedure TSplashFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
    Close;
end;

end.
