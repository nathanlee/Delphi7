program SysteMainten;

uses
  Windows,
  Forms,
  Main in 'Main.pas' {MainFrm},
  PubMessage in '..\Public\PubMessage.pas',
  MainOption in 'MainOption.pas' {MainOptionFrm},
  DiaryList in 'DiaryList.pas' {DiaryListFam: TFrame},
  AddOpr in 'AddOpr.pas' {AddOprFrm},
  OperList in 'OperList.pas' {OprListFam: TFrame},
  RolePer in 'RolePer.pas' {RolePerForm},
  AddRoleOpr in 'AddRoleOpr.pas' {AddRoleOprFrm},
  DelList in 'DelList.pas' {DelListFrm},
  RoleList in 'RoleList.pas' {RoleListFam: TFrame},
  chgpsd in '..\Public\Chgpsd.pas' {ChgPsdFrm},
  Login in '..\Public\Login.pas' {LoginFrm},
  Splash in '..\Public\Splash.pas' {SplashFrm},
  RegSoft in '..\Public\RegSoft.pas' {RegFrm};

{$R *.res}
var
  AppHandle: HWND;

begin
  //DebugHook 是判断是否在IDE下运行的变量
  //1:yes 0:no
  if DebugHook = 0 then
  begin
    AppHandle := FindWindow(nil, '系统维护');
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
        Application.Title := '智能进销存管理软件-系统维护';
        Application.CreateForm(TMainFrm, MainFrm);
  finally
        Free;
      end;
    end;
  end
  else
  begin
    Application.Title := '智能进销存管理软件-系统维护';
    Application.CreateForm(TMainFrm, MainFrm);
  end;
  Application.Run;
end.

