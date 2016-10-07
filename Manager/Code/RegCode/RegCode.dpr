program RegCode;

uses
  Forms,
  RegCodeInfo in 'RegCodeInfo.pas' {RegCodeFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TRegCodeFrm, RegCodeFrm);
  Application.Run;
end.
