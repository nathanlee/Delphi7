program InstDB;

uses
  Forms,
  DBSetup in 'DBSetup.pas' {DBSetupFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '���ݿⰲװ';
  Application.CreateForm(TDBSetupFrm, DBSetupFrm);
  Application.Run;
end.
