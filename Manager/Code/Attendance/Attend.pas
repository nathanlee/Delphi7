{******************************************************}
{模块名称：考勤刷卡                                    }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    人事管理，考勤                              }
{日期：    2004年03月11日 83107329                     }
{******************************************************}
unit Attend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ComCtrls, DBCtrls, ADODB;

type
  TAttendFrm = class(TForm)
    Timer: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Image1: TImage;
    Label4: TLabel;
    Clock: TPanel;
    Label5: TLabel;
    DBImage1: TDBImage;
    DataSource1: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    LabTime: TLabel;
    LabDate: TLabel;
    LabFlag: TLabel;
    ADOGetID: TADOQuery;
    QryAbsent: TADOQuery;
    procedure TimerTimer(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Flag: Integer; //0:上午上班 1 上午下班 2 下午上班 3 下午下班
  public
    { Public declarations }
  end;

var
  AttendFrm: TAttendFrm;
function GetAbsWrokTime(WrokTime: TDateTime; OutTime: integer): TDateTime;

implementation

uses Main, PubMessage;

{$R *.DFM}

procedure TAttendFrm.TimerTimer(Sender: TObject);
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  days: array[1..7] of string;
begin
  days[1] := '星期日';
  days[2] := '星期一';
  days[3] := '星期二';
  days[4] := '星期三';
  days[5] := '星期四';
  days[6] := '星期五';
  days[7] := '星期六';
  DeCodeDate(Now, Year, Month, Day);
  DeCodeTime(Now, Hour, Min, Sec, MSec);

  LabDate.Caption :=
    IntToStr(Year) + '年' + IntToStr(Month) + '月' + IntToStr(Day) + '日 '
    + days[dayofWeek(Now)];
  LabTime.Caption :=
    IntToStr(Hour) + '时' + IntToStr(Min) + '分' + IntToStr(Sec) + '秒';
 //将本日没有刷卡的人写入矿工记录
  if (Hour = 23) and (Min = 50 ) and (Sec = 0) then
    with QryAbsent do
    begin
      Parameters.ParamByName('SDate').Value := Date + EnCodeTime(0, 0, 0, 0);
      Parameters.ParamByName('EDate').Value := Date + EnCodeTime(23, 59, 59, 59);
      ExecSql;
    end;
end;

procedure TAttendFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Hour, Min, Sec, MSec: Word;
  cWorkAM, cOffAM, cWorkPM, cOffPM, dWorkTime: TDateTime;
  bWorkAM, bOffAM, bWorkPM, bOffPM, bFlag: Boolean;
  iDelay, iDepID, iDayWeek: Integer;
  WorkTime, AbsWorkTime: TDateTime;
  ChkType: string;
begin
  if key = vk_return then
  begin
    with ADOGetID do
    begin
      close;
      Parameters.ParamByName('cStaffID').Value := Edit1.Text;
      Open;
      if eof then
      begin
        ShowMessage('查无此条码！！');
        Exit;
      end
      else
      begin
        iDepID := FieldByName('iDepID').Value;
        iDayWeek := DayofWeek(Now);
      end;
    end;
    {取出该员工所在部门的考勤时间}
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Select cWorkAM,bWorkAM,cOffAM,bOffAM,cWorkPM,bWorkPM,cOffPM,bOFFPM,iOutTime '
        + ' From DepartTime '
        + ' Where iDepID = :iDepID And iWeekly = :iDayWeek ';
      Parameters.ParamByName('iDepID').Value := iDepID;
      Parameters.ParamByName('iDayWeek').Value := iDayWeek;
      Open;
      if eof then
      begin
        ShowMessage('此部门尚未设定考勤时间');
        Exit;
      end
      else
      begin
        cWorkAM := Date + FieldByName('cWorkAM').AsDateTime;
        bWorkAM := FieldByName('bWorkAM').AsBoolean;
        cOFFAM := Date + FieldByName('cOFFAM').AsDateTime;
        bOFFAM := FieldByName('bOFFAM').AsBoolean;
        cWorkPM := Date + FieldByName('cWorkPM').AsDateTime;
        bWorkPM := FieldByName('bWorkPM').AsBoolean;
        cOFFPM := Date + FieldByName('cOFFPM').AsDateTime;
        bOFFPM := FieldByName('bOFFPM').AsBoolean;
        iDelay := FieldByName('iOutTime').Value;
      end;
    end;
    {在三分钟以内重复刷卡不计}
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Select MM=ISNull(DateDiff(Mi,Max(dCheckTime),:CruTime),4) '
        + ' From StaffAttendList '
        + ' Where cStaffID = :cStaffID And cType = :cType';
      Parameters.ParamByName('CruTime').Value := Now;
      Parameters.ParamByName('cStaffID').Value := Edit1.Text;
      Parameters.ParamByName('cType').Value := IntToStr(Flag);
      Open;
      if FieldByName('MM').AsInteger < 3 then
      begin
        key := 0;
        Edit1.Text := '';
        Exit;
      end;
    end;
    {考勤刷卡记录处理}
    case Flag of
      0: {上午上班}
        begin
          WorkTime := cWorkAM; //上班时间
          ABSWorkTime := GetAbsWrokTime(cWorkAM, iDelay); //旷工时间
          bFlag := bWorkAM;
          if now <= WorkTime then
            ChkType := '2'; //正常
          if (now > WorkTime) and (now <= ABSWorkTime) then
            ChkType := '7'; //迟到
          if (now > ABSWorkTime) and (now < cOffAM) then
            ChkType := '6'; //旷工
          if now > cOffAM then
            ChkType := '9'; //未刷卡

          if (ChkType = '2') then
            dWorkTime := Now
          else if (ChkType = '9') then
            dWorkTime := ABSWorkTime
          else
            dWorkTime := WorkTime;
        end;
      1: {上午下班}
        begin
          WorkTime := cOFFAM; //下班时间
          ABSWorkTime := cWorkPM; //下午上班时间
          bFlag := bOFFAM;
          if now <= WorkTime then
            ChkType := '8'; //早退
          if (now > WorkTime) and (now <= ABSWorkTime) then
            ChkType := '2'; //正常
          if now > cWorkPM then
            ChkType := '9'; //未刷卡

          if (ChkType = '2') then
            dWorkTime := Now
          else if (ChkType = '8') then
            dWorkTime := WorkTime;
        end;
      2: {下午上班}
        begin
          WorkTime := cWorkPM; //上班时间
          ABSWorkTime := GetAbsWrokTime(cWorkPM, iDelay); //旷工时间
          bFlag := bWorkPM;
          if now <= WorkTime then
            ChkType := '2'; //正常
          if (now > WorkTime) and (now <= ABSWorkTime) then
            ChkType := '7'; //迟到
          if (now > ABSWorkTime) and (now < cOffAM) then
            ChkType := '6'; //旷工
          if Time > cOffPM then
            ChkType := '9'; //未刷卡

          if (ChkType = '2') then
            dWorkTime := Now
          else if (ChkType = '9') then
            dWorkTime := ABSWorkTime
          else
            dWorkTime := WorkTime;
        end;
      3: {下午下班}
        begin
          WorkTime := cOFFPM; //下班时间
          ABSWorkTime := GetAbsWrokTime(cWorkPM, 120); //未打卡时间
          bFlag := bOFFPM;
          if now <= WorkTime then
            ChkType := '8'; //早退
          if (now > WorkTime) then
            ChkType := '2'; //正常
          if now > ABSWorkTime then
            ChkType := '9'; //未刷卡

          if (ChkType = '2') then
            dWorkTime := Now
          else if (ChkType = '8') then
            dWorkTime := WorkTime;
        end;
    end; //end case
    {写入记录表}
    if bFlag then
      with MainFrm.ADOTmp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'Insert Into StaffAttendList Values (cStaffID,dCheckTime,cCheckStatue,cType,iOutTime) '
          + ' (:cStaffID,GetDate(),:CheckStatus,:cType,DATEDIFF (mi, '''
          +     DateTimeToStr(dWorkTime) + ''', GetDate()))';
        Parameters.ParamByName('cStaffID').Value := Edit1.Text;
        {Flag: 0:上午上班 1:上午下班 2:下午上班 3:下午下班}
        Parameters.ParamByName('CheckStatus').Value := IntToStr(Flag);
        Parameters.ParamByName('cType').Value := ChkType;
//        Parameters.ParamByName('WorkTime').Value := ShowTime;
        ExecSql;
      end;
    key := 0;
    Edit1.Text := '';
  end;
end;

procedure TAttendFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_ESCAPE then Close;
  if key = vk_F1 then
  begin
    inc(Flag);
    if flag > 3 then flag := 0;
    case Flag of
      0: LabFlag.Caption := '上午上班';
      1: LabFlag.Caption := '上午下班';
      2: LabFlag.Caption := '下午上班';
      3: LabFlag.Caption := '下午下班';
    end;
  end;
end;

procedure TAttendFrm.FormCreate(Sender: TObject);
var
  MySysTime: SYSTEMTIME;
  Year, Month, Day, WeekDay, Hour, Min, Sec, MSec: Word;
begin
  {启动时以服务器的时间更新本机时间}
{  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'select YYYY=DatePart(yyyy,getdate()),MM=DatePart(mm,getdate()),'
      + 'DD=DatePart(dd,getdate()),dw=DatePart(dw,getdate()),HH=DatePart(hh,getdate()),'
      + 'min=DatePart(mi,getdate()),ss=DatePart(ss,getdate()),ms=DatePart(ms,getdate())';
    Open;
    Year := FieldByName('YYYY').Value;
    Month := FieldByName('MM').Value;
    Day := FieldByName('DD').Value;
    WeekDay := FieldByName('dw').Value;
    Hour := FieldByName('hh').Value;
    Min := FieldByName('min').Value;
    Sec := FieldByName('ss').Value;
    MSec := FieldByName('ms').Value;
  end;
  {更新本机时间}
 { with MySysTime do
  begin
    wYear := Year;
    wMonth := Month;
    wDayOfWeek := WeekDay;
    wDay := Day;
    wHour := Hour;
    wMinute := Min;
    wSecond := Sec;
    wMilliseconds := mSec;
  end;
  SetLocalTime(MySysTime);}

  Flag := 0;
end;

function GetAbsWrokTime(WrokTime: TDateTime; OutTime: integer): TDateTime;
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT DATEADD(MM, :OutTime, :WorkTime) AS ABSWrokTime');
    Parameters.ParamByName('WorkTime').Value := WrokTime;
    Parameters.ParamByName('OutTime').Value := OutTime;
    Open;
    Result := FieldByName('ABSWrokTime').Value;
  end;
end;

end.

