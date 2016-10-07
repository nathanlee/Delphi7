unit cAbout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Lab: TLabel;
    Image1: TImage;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}
uses PubMessage;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  Label1.Caption := MSG_APP_TITLE + '-' + Label1.Caption ;
  Lab.Caption := MSG_ORGANIZATION;
end;

end.
