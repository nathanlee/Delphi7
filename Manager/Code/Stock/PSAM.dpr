program PSAM;


uses
  Forms,
  Windows,
  Main in 'Main.pas' {MainFrm},
  SerachCust in '..\Public\SerachCust.pas' {SerachCustFrm},
  unSaleInto in 'unSaleInto.pas' {unSaleIntoFrm},
  AddPrdt in 'AddPrdt.pas' {AddPrdtFrm},
  AddType in 'AddType.pas' {AddTypeFrm},
  AddBrand in 'AddBrand.pas' {AddBrandFrm},
  PubMessage in '..\Public\PubMessage.pas',
  SetPrdt in 'SetPrdt.pas' {SetPrdtFrm},
  AddStaff in '..\Public\AddStaff.pas' {AddStaffFrm},
  AddStk in 'AddStk.pas' {AddStkFrm},
  SaleInto in 'SaleInto.pas' {SaleIntoFrm},
  AddProvInfo in '..\Public\AddProvInfo.pas' {AddProvFrm},
  AddCustInfo in '..\Public\AddCustInfo.pas' {AddCustFrm},
  SetStock in 'SetStock.pas' {SetStockFrm},
  StockInto in 'StockInto.pas' {StockIntoFrm},
  unStockInto in 'unStockInto.pas' {unStockIntoFrm},
  MoveInto in 'MoveInto.pas' {MoveIntoFrm},
  Splash in '..\Public\Splash.pas' {SplashFrm},
  CheckInto in 'CheckInto.pas' {CheckIntoFrm},
  QRSaleList in 'QRSaleList.pas' {FQRSaleList},
  Preview in '..\Public\Preview.pas' {PrevForm},
  QRStockList in 'QRStockList.pas' {FQRStockList},
  SerachList in '..\Public\SerachList.pas' {SerachListFrm},
  AddArea in '..\Public\AddArea.pas' {AddAreaFrm},
  cAbout in '..\Public\cAbout.pas' {AboutBox},
  Login in '..\Public\Login.pas' {LoginFrm},
  chgpsd in '..\Public\Chgpsd.pas' {ChgPsdFrm},
  MainOption in '..\mainten\MainOption.pas' {MainOptionFrm},
  RegSoft in '..\Public\RegSoft.pas' {RegFrm};

{$R *.res}
var
  AppHandle: HWND;

begin
  //DebugHook 是判断是否在IDE下运行的变量
  //1:yes 0:no
  if DebugHook = 0 then
  begin
    AppHandle := FindWindow(nil, '库存管理');
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
        Application.Title := '智能进销存管理软件-库存管理';
        Application.CreateForm(TMainFrm, MainFrm);
  finally
        Free;
      end;
    end;
  end
  else
  begin
    Application.Title := '智能进销存管理软件-库存管理';
    Application.CreateForm(TMainFrm, MainFrm);
  end;
  Application.Run;
end.

