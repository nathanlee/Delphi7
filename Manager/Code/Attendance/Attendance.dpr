program Attendance;

uses
  Windows,
  Forms,
  Main in 'Main.pas' {MainFrm},
  StaffLeaveList in 'StaffLeaveList.pas' {StaffLeaveListFam: TFrame},
  PubMessage in '..\Public\PubMessage.pas',
  RestList in 'RestList.pas' {RestListFam: TFrame},
  AddDept in 'AddDept.pas' {AddDeptFrm},
  AddCole in 'AddCole.pas' {AddColeFrm},
  AddDuty in 'AddDuty.pas' {AddDutyFrm},
  SerachStaff in 'SerachStaff.pas' {SerachStaffFrm},
  AddStaffLeave in 'AddStaffLeave.pas' {AddStaffLeaveFrm},
  Redeploy in 'Redeploy.pas' {RedePloyFrm},
  SetWorkTime in 'SetWorkTime.pas' {SetWorkTimeFrm},
  SetTime in 'SetTime.pas' {SetTimeFrm},
  Attend in 'Attend.pas' {AttendFrm},
  AttendStat in 'AttendStat.pas' {AttendStatFam: TFrame},
  AddAttendList in 'AddAttendList.pas' {AddAttendListFrm},
  AddStaff in 'AddStaff.pas' {AddStaffFrm},
  StaffList in 'StaffList.pas' {StaffListFam: TFrame},
  EvecList in 'EvecList.pas' {EvecListFam: TFrame},
  chgpsd in '..\Public\Chgpsd.pas' {ChgPsdFrm},
  Login in '..\Public\Login.pas' {LoginFrm},
  Splash in '..\Public\Splash.pas' {SplashFrm},
  LeaveList in 'LeaveList.pas' {LeaveListFam: TFrame};

{$R *.res}
var
  AppHandle: HWND;

begin
  //DebugHook ���ж��Ƿ���IDE�����еı���
  //1:yes 0:no
  if DebugHook = 0 then
  begin
    AppHandle := FindWindow(nil, '���¿���');
    if AppHandle > 0 then
    begin
      SetForegroundWindow(AppHandle);
      ShowWindow(AppHandle, SW_RESTORE);
      Halt;
    end;
  end;
  Application.Initialize;
  if ParamStr(1) = '' then
  begin
    with TSplashFrm.Create(nil) do
    begin
      try
        Show;
        Update;
        Application.Title := '���ܽ�����������-���¿���';
        Application.CreateForm(TMainFrm, MainFrm);
      finally
        Free;
      end;
    end;
  end
  else
  begin
    Application.Title := '���ܽ�����������-���¿���';
    Application.CreateForm(TMainFrm, MainFrm);
  end;
  Application.Run;
end.

