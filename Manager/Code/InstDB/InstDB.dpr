program InstDB;

uses
  Forms,
  DBSetup in 'DBSetup.pas' {DBSetupFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '数据库安装';
  Application.CreateForm(TDBSetupFrm, DBSetupFrm);
  Application.Run;
end.
