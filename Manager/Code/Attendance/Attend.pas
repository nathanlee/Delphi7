{******************************************************}
{ģ�����ƣ�����ˢ��                                    }
{�汾��    0.1                                         }
{���ߣ�    ����                                      }
{��;��    ���¹�������                              }
{���ڣ�    2004��03��11�� 83107329                     }
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
    Flag: Integer; //0:�����ϰ� 1 �����°� 2 �����ϰ� 3 �����°�
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
  days[1] := '������';
  days[2] := '����һ';
  days[3] := '���ڶ�';
  days[4] := '������';
  days[5] := '������';
  days[6] := '������';
  days[7] := '������';
  DeCodeDate(Now, Year, Month, Day);
  DeCodeTime(Now, Hour, Min, Sec, MSec);

  LabDate.Caption :=
    IntToStr(Year) + '��' + IntToStr(Month) + '��' + IntToStr(Day) + '�� '
    + days[dayofWeek(Now)];
  LabTime.Caption :=
    IntToStr(Hour) + 'ʱ' + IntToStr(Min) + '��' + IntToStr(Sec) + '��';
 //������û��ˢ������д��󹤼�¼
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
        ShowMessage('���޴����룡��');
        Exit;
      end
      else
      begin
        iDepID := FieldByName('iDepID').Value;
        iDayWeek := DayofWeek(Now);
      end;
    end;
    {ȡ����Ա�����ڲ��ŵĿ���ʱ��}
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
        ShowMessage('�˲�����δ�趨����ʱ��');
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
    {�������������ظ�ˢ������}
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
    {����ˢ����¼����}
    case Flag of
      0: {�����ϰ�}
        begin
          WorkTime := cWorkAM; //�ϰ�ʱ��
          ABSWorkTime := GetAbsWrokTime(cWorkAM, iDelay); //����ʱ��
          bFlag := bWorkAM;
          if now <= WorkTime then
            ChkType := '2'; //����
          if (now > WorkTime) and (now <= ABSWorkTime) then
            ChkType := '7'; //�ٵ�
          if (now > ABSWorkTime) and (now < cOffAM) then
            ChkType := '6'; //����
          if now > cOffAM then
            ChkType := '9'; //δˢ��

          if (ChkType = '2') then
            dWorkTime := Now
          else if (ChkType = '9') then
            dWorkTime := ABSWorkTime
          else
            dWorkTime := WorkTime;
        end;
      1: {�����°�}
        begin
          WorkTime := cOFFAM; //�°�ʱ��
          ABSWorkTime := cWorkPM; //�����ϰ�ʱ��
          bFlag := bOFFAM;
          if now <= WorkTime then
            ChkType := '8'; //����
          if (now > WorkTime) and (now <= ABSWorkTime) then
            ChkType := '2'; //����
          if now > cWorkPM then
            ChkType := '9'; //δˢ��

          if (ChkType = '2') then
            dWorkTime := Now
          else if (ChkType = '8') then
            dWorkTime := WorkTime;
        end;
      2: {�����ϰ�}
        begin
          WorkTime := cWorkPM; //�ϰ�ʱ��
          ABSWorkTime := GetAbsWrokTime(cWorkPM, iDelay); //����ʱ��
          bFlag := bWorkPM;
          if now <= WorkTime then
            ChkType := '2'; //����
          if (now > WorkTime) and (now <= ABSWorkTime) then
            ChkType := '7'; //�ٵ�
          if (now > ABSWorkTime) and (now < cOffAM) then
            ChkType := '6'; //����
          if Time > cOffPM then
            ChkType := '9'; //δˢ��

          if (ChkType = '2') then
            dWorkTime := Now
          else if (ChkType = '9') then
            dWorkTime := ABSWorkTime
          else
            dWorkTime := WorkTime;
        end;
      3: {�����°�}
        begin
          WorkTime := cOFFPM; //�°�ʱ��
          ABSWorkTime := GetAbsWrokTime(cWorkPM, 120); //δ��ʱ��
          bFlag := bOFFPM;
          if now <= WorkTime then
            ChkType := '8'; //����
          if (now > WorkTime) then
            ChkType := '2'; //����
          if now > ABSWorkTime then
            ChkType := '9'; //δˢ��

          if (ChkType = '2') then
            dWorkTime := Now
          else if (ChkType = '8') then
            dWorkTime := WorkTime;
        end;
    end; //end case
    {д���¼��}
    if bFlag then
      with MainFrm.ADOTmp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'Insert Into StaffAttendList Values (cStaffID,dCheckTime,cCheckStatue,cType,iOutTime) '
          + ' (:cStaffID,GetDate(),:CheckStatus,:cType,DATEDIFF (mi, '''
          +     DateTimeToStr(dWorkTime) + ''', GetDate()))';
        Parameters.ParamByName('cStaffID').Value := Edit1.Text;
        {Flag: 0:�����ϰ� 1:�����°� 2:�����ϰ� 3:�����°�}
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
      0: LabFlag.Caption := '�����ϰ�';
      1: LabFlag.Caption := '�����°�';
      2: LabFlag.Caption := '�����ϰ�';
      3: LabFlag.Caption := '�����°�';
    end;
  end;
end;

procedure TAttendFrm.FormCreate(Sender: TObject);
var
  MySysTime: SYSTEMTIME;
  Year, Month, Day, WeekDay, Hour, Min, Sec, MSec: Word;
begin
  {����ʱ�Է�������ʱ����±���ʱ��}
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
  {���±���ʱ��}
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

