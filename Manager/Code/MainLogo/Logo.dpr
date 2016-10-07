program Logo;

uses
  Forms,
  Login in '..\Public\Login.pas' {LoginFrm},
  PubMessage in '..\Public\PubMessage.pas',
  Main in 'Main.pas' {MainFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '智能进销存分析管理软件';
  Application.CreateForm(TMainFrm, MainFrm);
  Application.Run;
end.
