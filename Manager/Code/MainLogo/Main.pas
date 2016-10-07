unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, jpeg, ExtCtrls, ComCtrls, DB, ADODB;

type
  TMainFrm = class(TForm)
    panel: TPanel;
    plPSAM: TPanel;
    plAttend: TPanel;
    plMainten: TPanel;
    Image1: TImage;
    plAnalyzer: TPanel;
    ADOConn: TADOConnection;
    SBar: TStatusBar;
    ADOTmp: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure plPSAMClick(Sender: TObject);
    procedure plPSAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    myPanel: TPanel;
    myImage: TImage;
    procedure InitSystem;
    procedure SetPanelFace(const Panel: TPanel);
    procedure SetPanelColor(const plCurrent: TPanel);
    procedure CilckPanel(const plCurrent: TPanel);
    procedure SetNewFont(const pl: TPanel);
    procedure SetOldFont(const pl: TPanel);
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;

implementation

uses Login, PubMessage;

{$R *.dfm}

procedure TMainFrm.CilckPanel(const plCurrent: TPanel);
begin
  if plCurrent = plPSAM then
  begin
    if FileExists('PSAM.exe') then Winexec(PChar('PSAM.exe ' + Sys_Opr_ID + ' ' + SYS_OPR_NAME), sw_Show)
    else ShowMessage('没有发现进销存的程序模块！请检查。');
  end;
  if plCurrent = plAttend then
  begin
    if FileExists('Attendance.exe') then Winexec(PChar('Attendance.exe ' + Sys_Opr_ID + ' ' + SYS_OPR_NAME), sw_Show)
    else ShowMessage('没有发现人事考勤的程序模块！请检查。');
  end;
  if plCurrent = plMainten then
  begin
    if FileExists('Mainten.exe') then Winexec(PChar('Mainten.exe ' + Sys_Opr_ID + ' ' + SYS_OPR_NAME), sw_Show)
    else ShowMessage('没有发现软系统维护的程序模块！请检查。');
  end;
  if plCurrent = plAnalyzer then
  begin
    if FileExists('Analyzer.exe') then Winexec(PChar('Analyzer.exe ' + Sys_Opr_ID + ' ' + SYS_OPR_NAME), sw_Show)
    else ShowMessage('没有发现客户数据分析的程序模块！请检查。');
  end;

end;

procedure TMainFrm.SetOldFont(const pl: TPanel);
begin
  pl.BevelInner := bvNone;
  pl.BevelOuter := bvNone;
  pl.Color := $00BBAFAA;
  pl.Font.Size := 14;
  pl.Font.Color := clBlack;
  pl.Font.Style := [];
end;

procedure TMainFrm.SetNewFont(const pl: TPanel);
begin
  pl.BevelInner := bvRaised;
  pl.BevelOuter := bvRaised;
  pl.Color := clInfobk;
  pl.Font.Size := 18;
  pl.Font.Color := clBlue;
  pl.Font.Style := [fsBold];
end;

procedure TMainFrm.SetPanelColor(const plCurrent: TPanel);
begin
  if myPanel = plCurrent then Exit;
  myPanel := plCurrent;
  myImage := nil;

  SetOldFont(plPSAM);
  SetOldFont(plAttend);
  SetOldFont(plMainten);
  SetOldFont(plAnalyzer);

  SetNewFont(plCurrent);
end;

procedure TMainFrm.SetPanelFace(const Panel: TPanel);
var
  rect: TRect;
  Rgn: HRgn;
begin
  rect := Panel.ClientRect;
  rgn := CreateRoundRectRgn(rect.Left, rect.Top,
                            rect.Right, rect.Bottom,
                            50, 50);
  Perform(EM_GETRECT, 0, lParam(@rect));
  InFlateRect(rect, -5, -5);
  Perform(EM_SETRECTNP, 0, lParam(@rect));
  SetWindowRgn(Panel.Handle, rgn, true);
  Invalidate;
end;

procedure TMainFrm.InitSystem;
begin
  SetPanelFace(plPSAM);
  SetPanelFace(plAttend);
  SetPanelFace(plMainten);
  SetPanelFace(plAnalyzer);
end;

procedure TMainFrm.FormActivate(Sender: TObject);
begin
  InitSystem;
end;

procedure TMainFrm.plPSAMClick(Sender: TObject);
begin
  CilckPanel(Sender as TPanel);
end;

procedure TMainFrm.plPSAMMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SetPanelColor(Sender as TPanel);
end;

procedure TMainFrm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if myImage = Image1 then Exit;
  myImage := Image1;
  myPanel := nil;

  SetOldFont(plPSAM);
  SetOldFont(plAttend);
  SetOldFont(plMainten);
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  myPanel := nil;
  myImage := nil;
  WindowState := wsMaximized;
  {连接数据库}
  case DBConnect of
    -1:
      begin
        ShowMessage('软件运行参数配置文件不存在');
        Application.Terminate;
      end;
    0:
      begin
        ShowMessage('数据库无法连接,请检查配置文件或网络连接');
        Application.Terminate;
      end;
  end;
end;

procedure TMainFrm.FormResize(Sender: TObject);
begin
  OnResize := nil;
  if SYS_OPR_ID = '' then
  begin
    Application.CreateForm(TLoginFrm, LoginFrm);
    with LoginFrm do
    begin
      ShowModal;
      if (not LoginOK) then Application.Terminate;
      Free;
    end;
  end;
end;

end.

