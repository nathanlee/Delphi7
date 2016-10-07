{**********************************
*模块名称：入库退货单据处理模块
*版本：    0.1
*作者：    李振华
*用途：    入库退货单据处理
*日期：    2003年8月24日
**********************************}
unit MoveInto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, Mask,
  ComCtrls, DBGridEh, DBCtrlsEh, DBLookupEh, ADODB;

type
  TMoveIntoFrm = class(TForm)
    PanelTitle: TPanel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Label8: TLabel;
    Bevel2: TBevel;
    MDate: TDateTimePicker;
    DSList: TDataSource;
    GridLst: TDBGridEh;
    ListQry: TADOQuery;
    ListQryLKID: TStringField;
    ListQryAmt: TFloatField;
    AProc: TADOStoredProc;
    QryPrdtID: TADOQuery;
    BitBtn2: TBitBtn;
    LabMaker: TLabel;
    SBOStk: TSpeedButton;
    EOStk: TEdit;
    ListQryiSNo: TIntegerField;
    ListQrycPrdtID: TStringField;
    ListQrynQty: TBCDField;
    ListQrynPrice: TBCDField;
    ListQrycName: TStringField;
    ListQrycUnit: TStringField;
    SBPrdtID: TSpeedButton;
    LOStkID: TLabel;
    LTStkID: TLabel;
    MRemark: TMemo;
    Label2: TLabel;
    Label7: TLabel;
    LabelNo: TLabel;
    SBTStk: TSpeedButton;
    ETStk: TEdit;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListQryCalcFields(DataSet: TDataSet);
    procedure SBOStkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EOStkExit(Sender: TObject);
    procedure EOStkChange(Sender: TObject);
    procedure ListQrynQtyValidate(Sender: TField);
    procedure ListQrycPrdtIDValidate(Sender: TField);
    procedure ListQrynPriceValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    RNo: integer;
    OprFlag: Boolean; //True:Append False:Update;
  end;

var
  MoveIntoFrm: TMoveIntoFrm;

implementation

uses Main, PubMessage, SerachCust, SetPrdt;

{$R *.DFM}

procedure TMoveIntoFrm.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TMoveIntoFrm.BitBtn1Click(Sender: TObject);
var
  lsPrdtID, lQty, lPrice: widestring;
  iSN, iOStkID, iTStkID: integer;
begin
  if eOStk.Text = '' then
  begin
    ShowMessage(MSG_PLSE_STORE);
    eOStk.SetFocus;
    Exit;
  end;
  if eTStk.Text = '' then
  begin
    ShowMessage(MSG_PLSE_STORE);
    eTStk.SetFocus;
    Exit;
  end;

  {仓库编号}
  iOStkID := StrToInt(LOStkID.Caption);
  iTStkID := StrToInt(LTStkID.Caption);
  if iOStkID = iTStkID then
  begin
    ShowMessage(MSG_PLSE_SameSTORE);
    eTStk.SetFocus;
    Exit;
  end;
  {合并商品编码、数量、单价成一个字符串}
  with ListQry do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if ListQrycPrdtID.AsString = '' then
        Delete
      else
      begin
        lsPrdtID := lsPrdtID + uppercase(Trim(ListQrycPrdtID.AsString)) + ',';
        lQty := lQty + Trim(ListQrynQty.AsString) + ',';
        lPrice := lPrice + Trim(ListQrynPrice.AsString) + ',';
      end;
      next;
    end;
    EnableControls;
  end;

  {调用存储过程添加和修改数据库}
  if OprFlag then //新增操作
    iSN := 0
  else //修改操作
    iSN := RNo;

  with AProc do
  begin
    Parameters.ParamByName('@iSN').Value := iSN;
    Parameters.ParamByName('@dHapdDate').Value := MDate.Date;
    Parameters.ParamByName('@iOStkID').Value := iOStkID;
    Parameters.ParamByName('@iTStkID').Value := iTStkID;
    Parameters.ParamByName('@cRemark').Value := MRemark.Text;
    Parameters.ParamByName('@cOprID').Value := SYS_OPR_ID;
    Parameters.ParamByName('@cPrdtID').Value := lsPrdtID;
    Parameters.ParamByName('@cQty').Value := lQty;
    Parameters.ParamByName('@cPrice').Value := lPrice;
    Prepared;
    ExecProc
  end;
  if OprFlag then //新增操作
    ShowMessage(MSG_SAVE_DOON)
  else //修改操作
    ShowMessage(MSG_UPDT_DOON);
  Close;
end;

procedure TMoveIntoFrm.FormActivate(Sender: TObject);
begin
  if OprFlag then
  begin
    MDate.Date := Date;
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'P_GetBillNo :dHapdDate,:Flag,:cNo OutPut';
      Parameters.ParamByName('dHapdDate').Value := MDate.Date;
      Parameters.ParamByName('Flag').Value := 'MV';
      Parameters.ParamByName('cNo').Value := '';
      ExecSql;
      LabelNo.Caption := Parameters.ParamByName('cNo').Value;
      LabMaker.Caption := LabMaker.Caption + SYS_OPR_NAME;
    end;
  end;
  with ListQry do
  begin
    Close;
    Parameters.ParamByName('iSNo').Value := RNo;
    Open;
    first;
  end;

end;

procedure TMoveIntoFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_up then
  begin
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), KEYEVENTF_KEYUP, 0);
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), KEYEVENTF_KEYUP, 0);
    key := 0;
  end;
  if (key = vk_return) then
  begin
    if not (ActiveControl is TDbgridEh) then
    begin { 不是在TDbgrid控件内}
      key := 0;
      perform(WM_NEXTDLGCTL, 0, 0); {移动到下一个控件}
    end
    else if (ActiveControl is TDBGridEh) then {是在 TDbgrid 控件内}
    begin
      with TDBGridEh(ActiveControl) do
        if Selectedindex < (FieldCount - 2) then
        begin
          case SelectedIndex of
            0, 1, 2: SelectedIndex := 3;
          else
            Selectedindex := Selectedindex + 1; { 移动到下一字段}
          end;
        end
        else
        begin
          if Selectedindex = (FieldCount - 2) then
            with DataSource.DataSet do
            begin
              next;
              if Eof then
                Append;
            end;
          Selectedindex := 0;
        end;
    end;
    key := 0;
  end; //end if of #13
  if key = vk_ESCAPE then
    if Application.MessageBox(MSG_REALY_CLOSE, MSG_APP_TITLE,
      MB_ICONQUESTION + mb_YesNo) = ID_Yes then Close;
end;

procedure TMoveIntoFrm.ListQryCalcFields(DataSet: TDataSet);
begin
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cName,cUnit From PrdtEnCode where cPrdtID = :cPrdtId');
    Parameters.ParamByName('cPrdtID').Value := ListQrycPrdtID.Value;
    Open;
    if not eof then
    begin
      ListQrycName.Value := FieldByName('cName').AsString;
      ListQrycUnit.Value := FieldByName('cUnit').AsString;
      ListQryAMT.Value := ListQrynQty.Value * ListQrynPrice.Value;
    end;
  end;
end;

procedure TMoveIntoFrm.SBOStkClick(Sender: TObject);
begin
  {查询商品编码}
  if sender = SBPrdtID then
  begin
    Application.CreateForm(TSetPrdtFrm, SetPrdtFrm);
    with SetPrdtFrm do
    begin
      BtnSel.Enabled := True;
      ShowModal;
      PrdtIDSelect(DBTV, MoveIntoFrm.ListQry, PrdtID);
      Release;
    end;
  end;
  {查询仓库信息}
  if (sender = SBOStk) or (sender = SBTStk) then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
  with SerachCustFrm do
  begin
    Page.ActivePageIndex := 3;
    Page.Pages[3].TabVisible := True;
    BtnAdd.Caption := '新建仓库(&W)';
    BtnFindClick(Sender);
    ShowModal;
    if sender = SBOStk then
    begin
      EOStk.Text := Name;
      LOStkID.Caption := ID
    end
    else
    begin
      ETStk.Text := Name;
      LTStkID.Caption := ID
    end;
    Release;
  end;
  end;
end;


procedure TMoveIntoFrm.FormCreate(Sender: TObject);
begin
  LOStkID.Caption := '';
  LTStkID.Caption := '';
  {设置数量显示格式}
  ListQryNQty.DisplayFormat := QTY_DIG_FRT;
end;

procedure TMoveIntoFrm.EOStkExit(Sender: TObject);
begin
  {判断输入的调出仓库名称是否正确}
  if (Sender = EOStk) and (eOStk.Text <> '') and (LOStkID.Caption = '') then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Select iStkID,cStkName From StkInfo where '
        + 'cast(iStkID as varchar) = :iStkID';
      Parameters.ParamByName('iStkID').Value := eOStk.Text;
      Open;
      if eof then
        SBOStkClick(SBOStk)
      else
      begin
        eOStk.Text := FieldByname('cStkName').AsString;
        LOStkID.Caption := FieldByname('iStkID').AsString;
      end;
    end;
  {判断输入的调入仓库名称是否正确}
  if (Sender = ETStk) and (eTStk.Text <> '') and (LTStkID.Caption = '') then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Select iStkID,cStkName From StkInfo where '
        + 'cast(iStkID as varchar) = :iStkID';
      Parameters.ParamByName('iStkID').Value := eTStk.Text;
      Open;
      if eof then
        SBOStkClick(SBTStk)
      else
      begin
        eTStk.Text := FieldByname('cStkName').AsString;
        LTStkID.Caption := FieldByname('iStkID').AsString;
      end;
    end;
end;

procedure TMoveIntoFrm.EOStkChange(Sender: TObject);
begin
  {改变编辑框内容时，把它们的ID变为空}
  if sender = eOStk then lOstkid.Caption := '';
  if sender = eTStk then lTstkid.Caption := '';
end;

procedure TMoveIntoFrm.ListQrynQtyValidate(Sender: TField);
var
  iStkID: integer;
begin
  {取出库存数量再加上该商品已经输入的退货数量与当前输入的数量比较}
  {判断库存中是否有这个商品}
  try
    iStkID := StrToInt(LOStkID.Caption);
  except
    raise ERangeError.Create(MSG_PLSE_STORE);
  end;
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'declare @cPrdtID char(12) '
      + 'set @cPrdtID = :cPrdtID '
      + 'Select stkQty=isNull(nQty,0) + '
      + 'isNull((Select nQty From MoveList where iSNo = :iRNo And cPrdtID = @cPrdtID),0) '
      + ' From PrdtStock '
      + ' where iStkID = :iStkID And cPrdtID = @cPrdtID';
    Parameters.ParamByName('iRNo').Value := RNo;
    Parameters.ParamByName('iStkID').Value := iStkID;
    Parameters.ParamByName('cPrdtID').Value := ListQrycPrdtID.Value;
    Open;
    if ListQrynQty.Value > FieldByName('StkQty').AsFloat then
      raise ERangeError.Create(MSG_STOCK_ERR);
  end;
end;

procedure TMoveIntoFrm.ListQrycPrdtIDValidate(Sender: TField);
var
  iStkID: integer;
begin
  {判断库存中是否有这个商品}
  try
    iStkID := StrToInt(LOStkID.Caption);
  except
    raise ERangeError.Create(MSG_PLSE_STORE);
  end;
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Select 1 '
      + ' From PrdtStock '
      + ' where iStkID = :iStkID And cPrdtID = :cPrdtID';
    Parameters.ParamByName('iStkID').Value := iStkID;
    Parameters.ParamByName('cPrdtID').Value := ListQrycPrdtID.Value;
    Open;
    if eof then
      raise ERangeError.Create(MSG_STOCK_ID_ERR);
  end;
end;

procedure TMoveIntoFrm.ListQrynPriceValidate(Sender: TField);
begin
  if ListQrynPrice.Value < 0 then
    raise ERangeError.Create(MSG_PRICE_ERR);

end;

end.

