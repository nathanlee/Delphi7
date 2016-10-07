{******************************************************}
{ģ�����ƣ�ʱ������                                    }
{�汾��    0.1                                         }
{���ߣ�    ����                                      }
{��;��    ���¹�������                              }
{���ڣ�    2004��03��11�� 83107329                     }
{******************************************************}
unit SetTime;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TSetTimeFrm = class(TForm)
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    Label1: TLabel;
    PDate: TDateTimePicker;
    Label2: TLabel;
    PTime: TDateTimePicker;
    Timer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCanClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure PTimeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetTimeFrm: TSetTimeFrm;

implementation

{$R *.DFM}
  uses Pubmessage;

procedure TSetTimeFrm.FormCreate(Sender: TObject);
begin
  PDate.Date := Date;
  PTime.Time := Time;
  Timer.Enabled := True;
end;

procedure TSetTimeFrm.BtnOKClick(Sender: TObject);
var
  MySysTime:SYSTEMTIME;
  Year,Month,Day,Hour,Min,Sec,MSec:Word;
begin
  DeCodeDate(PDate.Date,Year,Month,Day);
  DeCodeTime(PTime.Time,Hour,Min,Sec,MSec);
  With MySysTime do
  begin
    wYear := Year;
    wMonth := Month;
//    wDayOfWeek;
    wDay := Day;
    wHour:= Hour;
    wMinute := Min;
    wSecond := Sec;
    wMilliseconds := 0;
  end;
  SetLocalTime(MySysTime);
  ShowMessage(MSG_SAVE_DOON);
  Close;
end;

procedure TSetTimeFrm.BtnCanClick(Sender: TObject);
begin
  Close;
end;

procedure TSetTimeFrm.TimerTimer(Sender: TObject);
begin
  PTime.Time := Time;
end;

procedure TSetTimeFrm.PTimeChange(Sender: TObject);
begin
  Timer.Enabled := False;
end;

procedure TSetTimeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If key = vk_return Then
  Begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    Key := 0;
  End;
end;

end.
