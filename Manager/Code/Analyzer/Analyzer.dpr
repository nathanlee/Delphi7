program Analyzer;

uses
  Forms,
  Windows,
  Main in 'Main.pas' {MainFrm},
  PubMessage in '..\Public\PubMessage.pas',
  SerachCust in '..\Public\SerachCust.pas' {SerachCustFrm},
  AddCustInfo in '..\Public\AddCustInfo.pas',
  AddProvInfo in '..\Public\AddProvInfo.pas' {AddProvFrm},
  AddStk in '..\Stock\AddStk.pas' {AddStkFrm},
  SetPrdt in '..\Stock\SetPrdt.pas' {SetPrdtFrm},
  AddType in '..\Stock\AddType.pas' {AddTypeFrm},
  AddBrand in '..\Stock\AddBrand.pas' {AddBrandFrm},
  AddPrdt in '..\Stock\AddPrdt.pas' {AddPrdtFrm},
  PrdtUnStockStat in 'PrdtUnStockStat.pas' {PrdtUnStockFrm},
  UnStockTrendStat in 'UnStockTrendStat.pas' {UnStockTrendStatFrm},
  UnStockParall in 'UnStockParall.pas' {UnStockParallFrm},
  Splash in '..\Public\Splash.pas' {SplashFrm},
  UnStockAlarm in 'UnStockAlarm.pas' {UnStockAlarmFrm},
  UnSaleStat in 'UnSaleStat.pas' {UnSaleFrm},
  AddArea in '..\Public\AddArea.pas' {AddAreaFrm},
  UnSaleTrendStat in 'UnSaleTrendStat.pas' {UnSaleTrendStatFrm},
  unSaleAlarm in 'unSaleAlarm.pas' {UnSaleAlarmFrm},
  SaleParall in 'SaleParall.pas' {SaleParallFrm},
  PrdtStockStat in 'PrdtStockStat.pas' {PrdtStockFrm},
  StockTrendStat in 'StockTrendStat.pas' {StockTrendStatFrm},
  StockAlarm in 'StockAlarm.pas' {StockAlarmFrm},
  CustSaleStat in 'CustSaleStat.pas' {CustSaleFrm},
  CustSaleTrendStat in 'CustSaleTrendStat.pas' {CustSaleTrendStatFrm},
  SaleAlarm in 'SaleAlarm.pas' {SaleAlarmFrm},
  UnSaleParall in 'UnSaleParall.pas' {UnSaleParallFrm},
  cAbout in '..\Public\cAbout.pas' {AboutBox},
  StockParall in 'StockParall.pas' {StockParallFrm},
  StaffStockAnas in 'StaffStockAnas.pas' {StaffStockAnasFrm},
  ProvAnas in 'ProvAnas.pas' {ProvAnasFrm},
  OperAnas in 'OperAnas.pas' {OperAnasFrm},
  StaffAnas in 'StaffAnas.pas' {StaffAnasFrm},
  AddStaff in '..\Public\AddStaff.pas' {AddStaffFrm},
  Login in '..\Public\Login.pas' {LoginFrm},
  CustAnas in 'CustAnas.pas' {CustAnasFrm},
  chgpsd in '..\Public\Chgpsd.pas' {ChgPsdFrm},
  MainOption in 'MainOption.pas' {MainOptionFrm};

{$R *.res}
var
  AppHandle: HWND;

begin
  //DebugHook 是判断是否在IDE下运行的变量
  //1:yes 0:no
  if DebugHook = 0 then
  begin
    AppHandle := FindWindow(nil, '智能进销存管理软件-客户分析');
    if AppHandle > 0 then
    begin
      SetForegroundWindow(AppHandle);
      ShowWindow(AppHandle, SW_RESTORE);
      Halt;
    end;
  end;
  Application.Initialize;
  if ParamStr(1) = '' then
    with TSplashFrm.Create(nil) do
    begin
      try
        Show;
        Update;
        Application.Title := '智能进销存管理软件-客户分析';
        Application.CreateForm(TMainFrm, MainFrm);
  finally
        Free;
      end;
    end
  else
  begin
    Application.Title := '智能进销存管理软件-客户分析';
    Application.CreateForm(TMainFrm, MainFrm);
  end;
  Application.Run;
end.

