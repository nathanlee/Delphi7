
{******************************************************}
{模块名称：客户分析主程序                              }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    采购、销售等数据统计分析                    }
{日期：    2003年11月20日                              }
{******************************************************}

unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ActnList, ComCtrls, ExtCtrls,
  Menus, DB, ADODB, fcOutlookList, fcButton, fcImgBtn, fcShapeBtn,
  fcClearPanel, fcButtonGroup, fcOutlookBar, ImgList;

type
  TMainFrm = class(TForm)
    ActionManager: TActionManager;
    ADOConn: TADOConnection;
    ADOTmp: TADOQuery;
    MainMenu: TMainMenu;
    N9: TMenuItem;
    A1: TMenuItem;
    NShowPanel: TMenuItem;
    H1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N13: TMenuItem;
    OutlookBar: TfcOutlookBar;
    Manage: TfcShapeBtn;
    Watch: TfcShapeBtn;
    fcOutlookBar1OutlookList1: TfcOutlookList;
    fcOutlookBar1OutlookList2: TfcOutlookList;
    ImageOutLook: TImageList;
    ASaleAbno: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N10: TMenuItem;
    ACustSaleTrend: TAction;
    N17: TMenuItem;
    Action7: TAction;
    ActOper: TAction;
    N19: TMenuItem;
    N24: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    ASaleStat: TAction;
    ASaleParall: TAction;
    N12: TMenuItem;
    OutlookBarOutlookList1: TfcOutlookList;
    Operation: TfcShapeBtn;
    AStockStat: TAction;
    N4: TMenuItem;
    AStockTrend: TAction;
    AStockAbno: TAction;
    AStockParall: TAction;
    N5: TMenuItem;
    AUnStockStat: TAction;
    N8: TMenuItem;
    AUnStockTrend: TAction;
    N11: TMenuItem;
    AUnStockAbno: TAction;
    AUnStockParall: TAction;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N18: TMenuItem;
    AunSaleStat: TAction;
    AUnSaleTrend: TAction;
    AUnSaleAbno: TAction;
    AUnSaleParall: TAction;
    N25: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N35: TMenuItem;
    OutlookBarOutlookList2: TfcOutlookList;
    Custom: TfcShapeBtn;
    N3: TMenuItem;
    actAProvAnas1: TAction;
    ACustAnas: TAction;
    N6: TMenuItem;
    N7: TMenuItem;
    ActStaffStock: TAction;
    N33: TMenuItem;
    N34: TMenuItem;
    SBar: TStatusBar;
    N36: TMenuItem;
    AlarmProc: TADOStoredProc;
    AMainOption: TAction;
    N37: TMenuItem;
    procedure N9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NShowPanelClick(Sender: TObject);
    procedure ACustSaleTrendExecute(Sender: TObject);
    procedure ASaleStatExecute(Sender: TObject);
    procedure ASaleParallExecute(Sender: TObject);
    procedure ASaleAbnoExecute(Sender: TObject);
    procedure AStockStatExecute(Sender: TObject);
    procedure AStockTrendExecute(Sender: TObject);
    procedure AStockAbnoExecute(Sender: TObject);
    procedure AStockParallExecute(Sender: TObject);
    procedure AUnStockStatExecute(Sender: TObject);
    procedure AUnStockTrendExecute(Sender: TObject);
    procedure AUnStockParallExecute(Sender: TObject);
    procedure AUnStockAbnoExecute(Sender: TObject);
    procedure AunSaleStatExecute(Sender: TObject);
    procedure AUnSaleTrendExecute(Sender: TObject);
    procedure AUnSaleAbnoExecute(Sender: TObject);
    procedure AUnSaleParallExecute(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure ACustAnasExecute(Sender: TObject);
    procedure actAProvAnas1Execute(Sender: TObject);
    procedure ActStaffStat(Sender: TObject);
    procedure ActStaffStockExecute(Sender: TObject);
    procedure ActOperExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure AMainOptionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{
  保留线程，用以统计时使用}
type
  TStatThread = class(TThread)
  protected
    procedure Execute; override;
  public
  end;

var
  MainFrm: TMainFrm;
  {****************************************************}
  {系统使用的公共函数与过程                            }
  {****************************************************}

implementation

uses PubMessage, CustSaleStat, CustSaleTrendStat, SaleParall, SaleAlarm,
  PrdtStockStat, StockTrendStat, StockAlarm, StockParall, PrdtUnStockStat,
  UnStockTrendStat, UnStockParall, UnStockAlarm, UnSaleStat,
  UnSaleTrendStat, unSaleAlarm, UnSaleParall, cAbout, CustAnas, ProvAnas,
  StaffAnas, StaffStockAnas, OperAnas, Login, chgpsd, MainOption;

{$R *.dfm}

{另一个线程统计销售异动}
procedure TStatThread.Execute;
var
  Year, Month, Day: Word;
begin
  decodeDate(now, year, month, day);
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Select * From ConstValue';
    Open;
    if not FieldByName('bWarm').AsBoolean then
      exit;
  end;
  with MainFrm.AlarmProc do
  begin
    Close;
    Parameters.ParamByName('@Year').Value := Year;
    Parameters.ParamByName('@Mon').Value := Month;
    Parameters.ParamByName('@Flag').Value := MainFrm.ADOTmp.fieldByName('iWarmType').Value;
    Parameters.ParamByName('@Dir').Value := MainFrm.ADOTmp.FieldByName('bWarmUpDown').Value;
    Parameters.ParamByName('@Percent').Value := MainFrm.ADOTmp.FieldByName('nWarmPercent').Value / 100;
    Parameters.ParamByName('@cCustName').Value := '%';
    Parameters.ParamByName('@cTypeName').Value := '%';
    Parameters.ParamByName('@cBrandName').Value := '%';
    Parameters.ParamByName('@cPrdtName').Value := '%';
    Open;
    if not eof then
    begin
      beep;
      beep;
//      ShowMessage('销售异常报警请查看相关报表！！');
      MainFrm.ASaleAbnoExecute(MainFrm.MainMenu);
    end;
  end;
end;

procedure TMainFrm.N9Click(Sender: TObject);
begin
  Close;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
var
  I: integer;

begin
  SYS_OPR_ID := ParamStr(1);
  SYS_OPR_NAME := ParamStr(2);
  Caption := MSG_APP_TITLE + '-' + Caption;
  Application.ProcessMessages;
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
  OutlookBar.ActivePage := Manage;
end;

procedure TMainFrm.NShowPanelClick(Sender: TObject);
begin
  NShowPanel.Checked := not NShowPanel.Checked;
  OutlookBar.Visible := NShowPanel.Checked;
end;
{****************}
{客户销售趋势分析}
{****************}

procedure TMainFrm.ACustSaleTrendExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02009', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if CustSaleTrendStatFrm = nil then
    CustSaleTrendStatFrm := TCustSaleTrendStatFrm.Create(Application)
  else
    CustSaleTrendStatFrm.Show;
end;

{****************}
{销售统计分析    }
{****************}

procedure TMainFrm.ASaleStatExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02002', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if CustSaleFrm = nil then
    CustSaleFrm := TCustSaleFrm.Create(Application)
  else
    CustSaleFrm.Show;
end;

{****************}
{销售对比分析    }
{****************}

procedure TMainFrm.ASaleParallExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02011', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if SaleParallFrm = nil then
    SaleParallFrm := TSaleParallFrm.Create(Application)
  else
    SaleParallFrm.Show;
end;

{****************}
{销售异动监控    }
{****************}

procedure TMainFrm.ASaleAbnoExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02010', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if SaleAlarmFrm = nil then
    SaleAlarmFrm := TSaleAlarmFrm.Create(Application)
  else
    SaleAlarmFrm.Show;
end;

{****************}
{采购统计分析    }
{****************}

procedure TMainFrm.AStockStatExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02001', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if PrdtStockFrm = nil then
    PrdtStockFrm := TPrdtStockFrm.Create(Application)
  else
    PrdtStockFrm.Show;
end;

{****************}
{采购趋势分析    }
{****************}

procedure TMainFrm.AStockTrendExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02005', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if StockTrendStatFrm = nil then
    StockTrendStatFrm := TStockTrendStatFrm.Create(Application)
  else
    StockTrendStatFrm.Show;
end;

{****************}
{采购异动分析    }
{****************}

procedure TMainFrm.AStockAbnoExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02006', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if StockAlarmFrm = nil then
    StockAlarmFrm := TStockAlarmFrm.Create(Application)
  else
    StockAlarmFrm.Show;
end;

{****************}
{采购对比分析    }
{****************}

procedure TMainFrm.AStockParallExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02007', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if StockParallFrm = nil then
    StockParallFrm := TStockParallFrm.Create(Application)
  else
    StockParallFrm.Show;
end;

{****************}
{采购退货统计分析}
{****************}

procedure TMainFrm.AUnStockStatExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02003', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if PrdtUnStockFrm = nil then
    PrdtUnStockFrm := TPrdtUnStockFrm.Create(Application)
  else
    PrdtUnStockFrm.Show;
end;

{****************}
{采购退货趋势分析}
{****************}

procedure TMainFrm.AUnStockTrendExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02012', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if UnStockTrendStatFrm = nil then
    UnStockTrendStatFrm := TUnStockTrendStatFrm.Create(Application)
  else
    UnStockTrendStatFrm.Show;
end;

{****************}
{采购退货对比分析}
{****************}

procedure TMainFrm.AUnStockParallExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02014', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if UnStockParallFrm = nil then
    UnStockParallFrm := TUnStockParallFrm.Create(Application)
  else
    UnStockParallFrm.Show;
end;

{****************}
{采购退货异动分析}
{****************}

procedure TMainFrm.AUnStockAbnoExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02013', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if UnStockAlarmFrm = nil then
    UnStockAlarmFrm := TUnStockAlarmFrm.Create(Application)
  else
    UnStockAlarmFrm.Show;
end;

{****************}
{销售退货统计分析}
{****************}

procedure TMainFrm.AunSaleStatExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02004', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if UnSaleFrm = nil then
    UnSaleFrm := TUnSaleFrm.Create(Application)
  else
    UnSaleFrm.Show;
end;

{****************}
{销售退货趋势分析}
{****************}

procedure TMainFrm.AUnSaleTrendExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02015', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if UnSaleTrendStatFrm = nil then
    UnSaleTrendStatFrm := TUnSaleTrendStatFrm.Create(Application)
  else
    UnSaleTrendStatFrm.Show;
end;

{****************}
{销售退货异动监控}
{****************}

procedure TMainFrm.AUnSaleAbnoExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02016', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if UnSaleAlarmFrm = nil then
    UnSaleAlarmFrm := TUnSaleAlarmFrm.Create(Application)
  else
    UnSaleAlarmFrm.Show;
end;

{****************}
{销售退货对比分析}
{****************}

procedure TMainFrm.AUnSaleParallExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02017', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if UnSaleParallFrm = nil then
    UnSaleParallFrm := TUnSaleParallFrm.Create(Application)
  else
    UnSaleParallFrm.Show;
end;

{****************}
{计算器          }
{****************}

procedure TMainFrm.N21Click(Sender: TObject);
begin
  WinExec('calc.exe', SW_ShowNormal);
end;

{****************}
{关于窗口        }
{****************}

procedure TMainFrm.N23Click(Sender: TObject);
begin
  Application.CreateForm(TAboutBox, AboutBox);
  with AboutBox do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TMainFrm.Action4Execute(Sender: TObject);
begin

end;

{****************}
{客户销售快速分析}
{****************}

procedure TMainFrm.ACustAnasExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02019', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if CustAnasFrm = nil then
    CustAnasFrm := TCustAnasFrm.Create(Application)
  else
    CustAnasFrm.Show;
end;

{******************}
{供应商采购快速分析}
{******************}

procedure TMainFrm.actAProvAnas1Execute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02018', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if ProvAnasFrm = nil then
    ProvAnasFrm := TProvAnasFrm.Create(Application)
  else
    ProvAnasFrm.Show;
end;

{******************}
{业务员销售分析    }
{******************}

procedure TMainFrm.ActStaffStat(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02021', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if StaffAnasFrm = nil then
    StaffAnasFrm := TStaffAnasFrm.Create(Application)
  else
    StaffAnasFrm.Show;
end;

{******************}
{业务员采购分析    }
{******************}

procedure TMainFrm.ActStaffStockExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02020', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if StaffStockAnasFrm = nil then
    StaffStockAnasFrm := TStaffStockAnasFrm.Create(Application)
  else
    StaffStockAnasFrm.Show;
end;

{******************}
{营业员工作分析    }
{******************}

procedure TMainFrm.ActOperExecute(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02022', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if OperAnasFrm = nil then
    OperAnasFrm := TOperAnasFrm.Create(Application)
  else
    OperAnasFrm.Show;
end;

{******************}
{登录程序          }
{******************}

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
      Free;
    end;
  end;
  SBar.Panels[2].Text := SYS_OPR_NAME;
  WriteDiary(SYS_OPR_ID, caption, -1);
  {自动监控异常报警}
  TStatThread.Create(false);
end;

{******************}
{修改密码          }
{******************}

procedure TMainFrm.N36Click(Sender: TObject);
begin
  Application.CreateForm(TChgPsdFrm, ChgPsdFrm);
  with ChgPsdFrm do
  begin
    LabLoginID.caption := SYS_OPR_ID;
    ShowModal;
    Free;
  end;
end;
{******************}
{选项设置          }
{******************}

procedure TMainFrm.AMainOptionExecute(Sender: TObject);
begin
{  if not OperRights(SYS_OPR_ID, '04009', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;}
  Application.CreateForm(TMainOptionFrm, MainOptionFrm);
  with MainOptionFrm do
  begin
    ShowModal;
    Free;
  end;
end;

end.

