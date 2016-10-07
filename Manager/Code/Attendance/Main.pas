{******************************************************}
{模块名称：人事管理考勤主程序                          }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    人事管理，考勤                              }
{日期：    2004年03月11日 83107329                     }
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
    ActStaff: TAction;
    MainMenu: TMainMenu;
    N9: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    N13: TMenuItem;
    N2: TMenuItem;
    N26: TMenuItem;
    N28: TMenuItem;
    N15: TMenuItem;
    N17: TMenuItem;
    N27: TMenuItem;
    N12: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    A1: TMenuItem;
    NShowPanel: TMenuItem;
    H1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    ADOConn: TADOConnection;
    ADOTmp: TADOQuery;
    OutlookBar: TfcOutlookBar;
    Manage: TfcShapeBtn;
    Watch: TfcShapeBtn;
    Custom: TfcShapeBtn;
    fcOutlookBar1OutlookList1: TfcOutlookList;
    fcOutlookBar1OutlookList2: TfcOutlookList;
    fcOutlookBar1OutlookList3: TfcOutlookList;
    ActMove: TAction;
    ActStatRep: TAction;
    ActSetDept: TAction;
    ActSetTime: TAction;
    ActEvection: TAction;
    ActRest: TAction;
    ActBreak: TAction;
    AcTuneTime: TAction;
    N5: TMenuItem;
    ImageBtn: TImageList;
    cBar: TControlBar;
    T1: TMenuItem;
    N7: TMenuItem;
    ActSetDuty: TAction;
    ActSetCole: TAction;
    N10: TMenuItem;
    N11: TMenuItem;
    AcAttend: TAction;
    N14: TMenuItem;
    N16: TMenuItem;
    StaffList: TADOQuery;
    StaffListcStaffID: TStringField;
    StaffListcName: TStringField;
    StaffListdBirthday: TDateTimeField;
    StaffListcNation: TStringField;
    StaffListcTel: TStringField;
    StaffListDSDesigner: TStringField;
    StaffListcColeName: TStringField;
    StaffListcDutyName: TStringField;
    StaffListcDepName: TStringField;
    StaffListcEmail: TStringField;
    StaffListiDepID: TWordField;
    StaffListiSex: TBooleanField;
    StaffListiColeID: TWordField;
    StaffListcAddr: TStringField;
    StaffListcIDNo: TStringField;
    StaffListcIDAddr: TStringField;
    StaffListiDutyID: TWordField;
    StaffListdWorkTime: TDateTimeField;
    StaffListdLeaveTime: TDateTimeField;
    ActLeave: TAction;
    N8: TMenuItem;
    SBar: TStatusBar;
    Actchgpd: TAction;
    N18: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure NShowPanelClick(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure ActStaffExecute(Sender: TObject);
    procedure ActStatRepExecute(Sender: TObject);
    procedure ActSetDeptExecute(Sender: TObject);
    procedure ActSetColeExecute(Sender: TObject);
    procedure ActSetDutyExecute(Sender: TObject);
    procedure ActMoveExecute(Sender: TObject);
    procedure ActSetTimeExecute(Sender: TObject);
    procedure AcTuneTimeExecute(Sender: TObject);
    procedure AcAttendExecute(Sender: TObject);
    procedure ActEvectionExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ActRestExecute(Sender: TObject);
    procedure ActBreakExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ActchgpdExecute(Sender: TObject);
    procedure ActLeaveExecute(Sender: TObject);
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
uses PubMessage, StaffList, AttendStat, AddDept, AddCole, AddDuty, Redeploy,
  SetWorkTime, SetTime, Attend, LeaveList, EvecList, RestList, StaffLeaveList,
  Login, chgpsd;
{$R *.dfm}


procedure TMainFrm.FormCreate(Sender: TObject);
var
  I: integer;
begin
  SYS_OPR_ID := ParamStr(1);
  SYS_OPR_NAME := ParamStr(2);
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
  with AdoTmp do
  begin
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
    if MainFrm.Frame[I] <> nil then
    begin
      MainFrm.Frame[I].visible := False;
      case I of
        0: (MainFrm.frame[I] as TStaffListFam).ToolBar1.Parent := nil;
        1: (MainFrm.frame[I] as TEvecListFam).ToolBar1.Parent := nil;
        2: (MainFrm.frame[I] as TLeaveListFam).ToolBar1.Parent := nil;
        3: (MainFrm.frame[I] as TRestListFam).ToolBar1.Parent := nil;
        4: (MainFrm.frame[I] as TStaffLeaveListFam).ToolBar1.Parent := nil;
{        1,2, 3:
          begin
            MainFrm.frame[I].free;
            MainFrm.frame[I] := nil;
          end;}
        8: (MainFrm.frame[I] as TAttendStatFam).ToolBar1.Parent := nil;
      end;
    end;
  end;
end;

{员工管理}

procedure TMainFrm.ActStaffExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03001', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ClearFrame;
  if Frame[0] = nil then
  begin
    Frame[0] := TStaffListFam.Create(self);
    Frame[0].Parent := Mainfrm;
  end;
  with (frame[0] as TStaffListFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    Align := AlClient;
    with StaffList do
    begin
      Close;
      Parameters.ParamByName('cStaffID').Value := '%';
      Parameters.ParamByName('cName').Value := '%';
      Parameters.ParamByName('iSex').Value := '%';
      Parameters.ParamByName('dBirthday').Value := '%';
      Parameters.ParamByName('cNation').Value := '%';
      Parameters.ParamByName('cTel').Value := '%';
      Parameters.ParamByName('cEMail').Value := '%';
      Parameters.ParamByName('cAddr').Value := '%';
      Parameters.ParamByName('cIDNo').Value := '%';
      Parameters.ParamByName('cIDAddr').Value := '%';
      Parameters.ParamByName('dWorkTime').Value := '%';
      Parameters.ParamByName('cColeName').Value := '%';
      Parameters.ParamByName('cDutyName').Value := '%';
      Parameters.ParamByName('cDepName').Value := '%';
      Open;
    end;
    //ChgGridWidth(GridStaff);
  end;
//  ToolBar1.Parent := MainFrm.cBar;
  {  Application.CreateForm(TForm1, Form1);
  with Form1 do
  begin
    Show;
    ManualDock(Panel1, nil);
  end;}
end;

{统计报表}

procedure TMainFrm.ActStatRepExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03009', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;

  ClearFrame;
  if Frame[8] = nil then
  begin
    Frame[8] := TAttendStatFam.Create(self);
    Frame[8].Parent := Mainfrm;
  end;
  with (frame[8] as TAttendStatFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    Align := AlClient;
    cbxDept.SetFocus;
  end;

end;

{部门设置}

procedure TMainFrm.ActSetDeptExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03010', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TAddDeptFrm, AddDeptFrm);
  with AddDeptFrm do
  begin
    ShowModal;
    Free;
  end;
end;

{学历设置}

procedure TMainFrm.ActSetColeExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03012', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TAddColeFrm, AddColeFrm);
  with AddColeFrm do
  begin
    ShowModal;
    Free;
  end;
end;

{职务设置}

procedure TMainFrm.ActSetDutyExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03011', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TAddDutyFrm, AddDutyFrm);
  with AddDutyFrm do
  begin
    ShowModal;
    Free;
  end;
end;

{内部调动}

procedure TMainFrm.ActMoveExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03003', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TRedePloyFrm, RedePloyFrm);
  with RedePloyFrm do
  begin
    ShowModal;
    Free;
  end;
  RefreshQry(StaffList);
end;

{考勤时间设置}

procedure TMainFrm.ActSetTimeExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03004', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TSetWorkTimeFrm, SetWorkTimeFrm);
  with SetWorkTimeFrm do
  begin
    ShowModal;
    Free;
  end;
end;

{时间校正}

procedure TMainFrm.AcTuneTimeExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03005', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TSetTimeFrm, SetTimeFrm);
  with SetTimeFrm do
  begin
    ShowModal;
    Free;
  end;
end;

{员工考勤}

procedure TMainFrm.AcAttendExecute(Sender: TObject);
begin
  Application.CreateForm(TAttendFrm, AttendFrm);
  with AttendFrm do
  begin
    ShowModal;
    Free;
  end;
end;

{出差处理}

procedure TMainFrm.ActEvectionExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03006', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ClearFrame;
  if Frame[1] = nil then
  begin
    Frame[1] := TEvecListFam.Create(self);
    Frame[1].Parent := Mainfrm;
  end;
  with (frame[1] as TEvecListFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    cbxDept.SetFocus;
    Align := AlClient;
  end;
end;

 {请假处理}

procedure TMainFrm.ActBreakExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03007', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ClearFrame;
  if Frame[2] = nil then
  begin
    Frame[2] := TLeaveListFam.Create(self);
    Frame[2].Parent := Mainfrm;
  end;
  with (frame[2] as TLeaveListFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    cbxDept.SetFocus;
    Align := AlClient;
  end;
end;

{休息处理}

procedure TMainFrm.ActRestExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03008', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ClearFrame;
  if Frame[3] = nil then
  begin
    Frame[3] := TRestListFam.Create(self);
    Frame[3].Parent := Mainfrm;
  end;
  with (frame[3] as TRestListFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    cbxDept.SetFocus;
    Align := AlClient;
  end;
end;

procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox(MSG_REALY_EXIT, MSG_APP_TITLE,
    MB_ICONQUESTION + mb_YesNo) = ID_Yes then
    CanClose := True
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
      if (not LoginOK) then Application.Terminate;
      Release;
    end;
  end;
  SBar.Panels[2].Text := SYS_OPR_NAME;
  WriteDiary(SYS_OPR_ID, caption, -1);
end;

procedure TMainFrm.ActchgpdExecute(Sender: TObject);
begin
  Application.CreateForm(TChgPsdFrm, ChgPsdFrm);
  with ChgPsdFrm do
  begin
    LabLoginID.caption := SYS_OPR_ID;
    ShowModal;
    Free;
  end;
end;

procedure TMainFrm.ActLeaveExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '03002', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ClearFrame;
  if Frame[4] = nil then
  begin
    Frame[4] := TStaffLeaveListFam.Create(self);
    Frame[4].Parent := Mainfrm;
  end;
  with (frame[4] as TStaffLeaveListFam) do
  begin
    ToolBar1.Parent := MainFrm.cBar;
    ToolBar1.Height := ToolBar1.Parent.Height;
    ToolBar1.Width := ToolBar1.Parent.Width;
    Visible := True;
    Align := AlClient;
    leName.SetFocus;
  end;
end;

end.

