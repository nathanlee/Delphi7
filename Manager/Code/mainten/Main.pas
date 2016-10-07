{******************************************************}
{模块名称：智能进销存系统管理程序                      }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    系统维护                                    }
{日期：    2004年05月1日                               }
{******************************************************}
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ImgList, fcOutlookList, fcButton, fcImgBtn,
  fcShapeBtn, fcClearPanel, fcButtonGroup, fcOutlookBar, ActnList, ActnMan,
  ToolWin, ActnCtrls, ActnMenus, ComCtrls, DB, ADODB, Menus,
  XPStyleActnCtrls;

type
  TMainFrm = class(TForm)
    ImageOutLook: TImageList;
    ActionManager: TActionManager;
    MainMenu: TMainMenu;
    N9: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    N13: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    A1: TMenuItem;
    NShowPanel: TMenuItem;
    H1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    OutlookBar: TfcOutlookBar;
    Manage: TfcShapeBtn;
    Watch: TfcShapeBtn;
    Custom: TfcShapeBtn;
    fcOutlookBar1OutlookList1: TfcOutlookList;
    fcOutlookBar1OutlookList2: TfcOutlookList;
    fcOutlookBar1OutlookList3: TfcOutlookList;
    N5: TMenuItem;
    ImageBtn: TImageList;
    cBar: TControlBar;
    ActOprList: TAction;
    ActRole: TAction;
    ActDBBackup: TAction;
    ActDBDelete: TAction;
    ActDBRestor: TAction;
    ActZip: TAction;
    ActDelList: TAction;
    ActDiary: TAction;
    ActOption: TAction;
    T1: TMenuItem;
    OutlookBarOutlookList1: TfcOutlookList;
    Tool: TfcShapeBtn;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    SBar: TStatusBar;
    ActPSWD: TAction;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    ActReg: TAction;
    N16: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure NShowPanelClick(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormResize(Sender: TObject);
    procedure ActOptionExecute(Sender: TObject);
    procedure ActOprListExecute(Sender: TObject);
    procedure ActRoleExecute(Sender: TObject);
    procedure ActZipExecute(Sender: TObject);
    procedure ActDelListExecute(Sender: TObject);
    procedure ActDiaryExecute(Sender: TObject);
    procedure ActDBBackupExecute(Sender: TObject);
    procedure ActDBDeleteExecute(Sender: TObject);
    procedure ActDBRestorExecute(Sender: TObject);
    procedure ActPSWDExecute(Sender: TObject);
    procedure ActRegExecute(Sender: TObject);
  private
    { Private declarations }
    Frame: array[0..12] of TFrame;
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;
  {************************************************}
  {函数名称：ClearFrame                            }
  {功能：隐藏已经创建的Frame及其ToolBar的Parent属性}
  {************************************************}
procedure ClearFrame;

implementation
uses PubMessage, MainOption, OperList, RoleList, DelList, DiaryList,
  Login, chgpsd, RegSoft;
{$R *.dfm}


procedure TMainFrm.FormCreate(Sender: TObject);
var
  I: integer;
begin
  SYS_OPR_ID := ParamStr(1);
  SBar.Panels[2].Text := ParamStr(2);
  OutLookBar.ActivePage := Manage;
  Caption := MSG_APP_TITLE + '-' + Caption;
  Application.ProcessMessages;
  WindowState := wsMaximized;
  for I := 0 to 12 do
    Frame[I] := nil;
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
  {设置年月日的格式}
  DateSeparator := '-';
  ShortDateFormat := 'YYYY-MM-DD';
  LongDateFormat := 'YYYY年MM月DD日';
  TwoDigitYearCenturyWindow := 70;
  {取数量显示格式}
  {添加管理员角色和管理员}
  with ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Exec P_CheckAdmin ' + #39 + crypt('112233') + #39;
    ExecSql;
  end;
  with AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select iDigital From ConstValue');
    Open;
    if (not eof) and (FieldByName('iDigital').Value > 0) then
    begin
      QTY_DIG_FRT := SYS_QTY_FORMAT + '.';
      for I := 1 to FieldByName('iDigital').Value do
        QTY_DIG_FRT := QTY_DIG_FRT + '0';
    end
    else QTY_DIG_FRT := SYS_QTY_FORMAT;
  end;
end;

procedure TMainFrm.NShowPanelClick(Sender: TObject);
begin
  NShowPanel.Checked := not NShowPanel.Checked;
  OutlookBar.Visible := NShowPanel.Checked;
end;

procedure TMainFrm.N21Click(Sender: TObject);
begin
  WinExec('calc.exe', SW_ShowNormal);
end;

procedure TMainFrm.N9Click(Sender: TObject);
begin
  close;
end;

{************************************************}
{函数名称：ClearFrame                            }
{功能：隐藏已经创建的Frame及其ToolBar的Parent属性}
{************************************************}

procedure ClearFrame;
var
  I: integer;
begin
  for I := 0 to 12 do
  begin
    MainFrm.frame[I].free;
    MainFrm.frame[I] := nil;
  end;
end;


procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox(MSG_REALY_EXIT, MSG_APP_TITLE,
    MB_ICONQUESTION + mb_YesNo) = ID_Yes then
  begin
    WriteDiary(SYS_OPR_ID, Caption, -2);
    CanClose := True;
  end
  else
    CanClose := False;
end;



procedure TMainFrm.FormResize(Sender: TObject);
begin
  OnResize := nil;
  with SBar do
  begin
    Panels[0].Width := SBar.Width - Panels[1].Width - Panels[2].Width;
  end;
  if SYS_OPR_ID = '' then
  begin
    Application.CreateForm(TLoginFrm, LoginFrm);
    with LoginFrm do
    begin
      ShowModal;
      if not LoginOK then Application.Terminate;
      Release;
    end;
    SBar.Panels[2].Text := SYS_OPR_NAME;
  end;
  WriteDiary(SYS_OPR_ID, Caption, -1);
end;

{基本信息设置}

procedure TMainFrm.ActOptionExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04009', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TMainOptionFrm, MainOptionFrm);
  with MainOptionFrm do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TMainFrm.ActOprListExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04001', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ClearFrame;
  if Frame[0] = nil then
  begin
    Frame[0] := TOprListFam.Create(self);
    Frame[0].Parent := Mainfrm;
  end;
  with (frame[0] as TOprListFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    Align := AlClient;
    GridOpr.SetFocus;
  end;
end;

procedure TMainFrm.ActRoleExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04002', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end
  else
    WriteDiary(SYS_OPR_ID, '04002', SYS_BROWSE);
  ClearFrame;
  if Frame[1] = nil then
  begin
    Frame[1] := TRoleListFam.Create(self);
    Frame[1].Parent := Mainfrm;
  end;
  with (frame[1] as TRoleListFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    Align := AlClient;
    GridRole.SetFocus;
  end;
end;

procedure TMainFrm.ActZipExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04007', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ProcessData(True);
  with ADOTmp do
  begin
    Close;
    if length(RSystemInfo.BackupDevice) <> 0 then
    begin
      Sql.Clear;
      Sql.Text := 'backup log ' + RSystemInfo.BackupDevice + ' with no_log';
      ExecSql;
    end;
    Sql.Clear;
    Sql.Text := 'dbcc shrinkdatabase(' + RSystemInfo.DataBaseName + ')';
    ExecSql;
  end;
  ProcessData(False);
end;

procedure TMainFrm.ActDelListExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04010', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TDelListFrm, DelListFrm);
  with DelListFrm do
  begin
    ShowModal;
    Release;
  end;
end;

procedure TMainFrm.ActDiaryExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04008', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ClearFrame;
  if Frame[2] = nil then
  begin
    Frame[2] := TDiaryListFam.Create(self);
    Frame[2].Parent := Mainfrm;
  end;
  with (frame[2] as TDiaryListFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    Align := AlClient;
    Grid.SetFocus;
  end;
end;

procedure TMainFrm.ActDBBackupExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04004', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  try
    ShowHide(MSG_PROCESS_DATA);
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'use master '
        + 'Backup Database ' + RSystemInfo.DataBaseName + ' to ' + RSystemInfo.BackupDevice;
      ExecSql;
    end;
    ShowHide(MSG_BACK_DOON);
  finally
    ShowMessage(MSG_DATA_SAVE_ERR);
  end;
end;

procedure TMainFrm.ActDBDeleteExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04006', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
end;

procedure TMainFrm.ActDBRestorExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04005', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
    try
      ShowHide(MSG_PROCESS_DATA);
      with MainFrm.ADOTmp do
      begin
        Close;
        Sql.Clear;
        Sql.Text :=
          'Restore Database ' + RSystemInfo.DataBaseName + ' from ' + RSystemInfo.BackupDevice;
        ExecSql;
      end;
      ShowHide(MSG_RESTORE_DOON);
    finally
      ShowMessage(MSG_DATA_SAVE_ERR);
    end;
  end;
end;

{修改密码}

procedure TMainFrm.ActPSWDExecute(Sender: TObject);
begin
  Application.CreateForm(TChgPsdFrm, ChgPsdFrm);
  with ChgPsdFrm do
  begin
    LabLoginID.caption := SYS_OPR_ID;
    ShowModal;
    Free;
  end;
end;

{软件注册}

procedure TMainFrm.ActRegExecute(Sender: TObject);
begin
  Application.CreateForm(TRegFrm, RegFrm);
  with RegFrm do
  begin
    ShowModal;
    Free;
  end;
end;

end.

