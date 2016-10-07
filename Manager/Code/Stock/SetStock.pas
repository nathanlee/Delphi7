{**********************************
*模块名称：库存盘点记录模块
*版本：    0.1
*作者：    李振华
*用途：    库存盘点记录
*日期：    2003年8月24日
**********************************}
unit SetStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, Mask,
  ComCtrls, DBGridEh, DBCtrlsEh, DBLookupEh, ADODB;

type
  TSetStockFrm = class(TForm)
    PanelTitle: TPanel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Bevel2: TBevel;
    DSList: TDataSource;
    GridLst: TDBGridEh;
    ListQry: TADOQuery;
    ListQryLKID: TStringField;
    ListQryAmt: TFloatField;
    QryPrdtID: TADOQuery;
    LabMaker: TLabel;
    SBStk: TSpeedButton;
    EStk: TEdit;
    ListQrycPrdtID: TStringField;
    ListQrycName: TStringField;
    ListQrycUnit: TStringField;
    SBPrdtID: TSpeedButton;
    LStkID: TLabel;
    ListQrynQty: TFloatField;
    ListQryiStkID: TIntegerField;
    ListQrynPrice: TBCDField;
    ListQrynAmt: TBCDField;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListQryCalcFields(DataSet: TDataSet);
    procedure SBStkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EStkExit(Sender: TObject);
    procedure EStkChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetStockFrm: TSetStockFrm;

implementation

uses Main, PubMessage, SetPrdt, SerachCust;

{$R *.DFM}

procedure TSetStockFrm.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TSetStockFrm.BitBtn1Click(Sender: TObject);
var
  iStkID: integer;
begin
  if eStk.Text = '' then
  begin
    ShowMessage(MSG_PLSE_STORE);
    eStk.SetFocus;
    Exit;
  end;

  {仓库编号}
  iStkID := StrToInt(LStkID.Caption);

  {合并商品编码、数量、单价成一个字符串}
  with ListQry do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if (ListQrycPrdtID.AsString = '') or (ListQrynQty.Value = 0) then
        Delete
      else
        with MainFrm.ADOTmp do
        begin
          Close;
          Sql.Clear;
          Sql.Text := 'Insert Into PrdtStock values (:iStkID,:cPrdtID,:nQty,:nPrice,0)';
          Parameters.ParamByName('iStkID').Value := iStkID;
          Parameters.ParamByName('cPrdtID').Value := ListQrycPrdtID.Value;
          Parameters.ParamByName('nQty').Value := ListQrynQty.Value;
          Parameters.ParamByName('nPrice').Value := ListQrynPrice.Value;
          ExecSql;
        end;
      next;
    end;
    EnableControls;
  end;

  ShowMessage(MSG_SAVE_DOON)
end;

procedure TSetStockFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_up) and not (ActiveControl is TDbgridEh) then
  begin
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), KEYEVENTF_KEYUP, 0);
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), KEYEVENTF_KEYUP, 0);
    key := 0;
  end;
  if key = vk_ESCAPE then
    if Application.MessageBox(MSG_REALY_CLOSE, MSG_APP_TITLE,
      MB_ICONQUESTION + mb_YesNo) = ID_Yes then Close;
end;

procedure TSetStockFrm.ListQryCalcFields(DataSet: TDataSet);
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
      ListQryAmt.value := ListQrynQty.Value * ListQrynPrice.Value;
    end;
  end;
end;

procedure TSetStockFrm.SBStkClick(Sender: TObject);
begin
  {查询仓库信息}
  Application.CreateForm(TSerachCustFrm, SerachCustFrm);
  with SerachCustFrm do
  begin
    Page.ActivePageIndex := 3;
    Page.Pages[3].TabVisible := True;
    BtnAdd.Caption := '新建仓库(&W)';
    BtnFindClick(Sender);
    ShowModal;
    EStk.Text := Name;
    Release;
  end;
end;


procedure TSetStockFrm.FormCreate(Sender: TObject);
begin
  LStkID.Caption := '';
  {设置数量显示格式}
  ListQryNQty.DisplayFormat := QTY_DIG_FRT;
  ListQrynPrice.DisplayFormat := SYS_PRICE_FORMAT;
  ListQryAmt.DisplayFormat := SYS_PRICE_FORMAT;
end;

procedure TSetStockFrm.EStkExit(Sender: TObject);
begin
  {判断输入的调出仓库名称是否正确}
  if (eStk.Text <> '') and (LStkID.Caption = '') then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Select iStkID,cStkName From StkInfo where '
        + 'cast(iStkID as varchar) = :iStkID';
      Parameters.ParamByName('iStkID').Value := eStk.Text;
      Open;
      if eof then
        SBStkClick(SBStk)
      else
      begin
        eStk.Text := FieldByname('cStkName').AsString;
        LStkID.Caption := FieldByname('iStkID').AsString;
      end;
    end;
  {根据输入的仓库，把此仓库里的库存全部列出}
  with ListQry do
  begin
    Close;
    Parameters.ParamByName('iStkID').Value := StrToInt(LStkID.Caption);
    Open;
    first;
  end;
end;

procedure TSetStockFrm.EStkChange(Sender: TObject);
begin
  {改变编辑框内容时，把它们的ID变为空}
  if sender = eStk then lstkid.Caption := '';
end;

procedure TSetStockFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then { 判断是按执行键}
  begin
    if not (ActiveControl is TDbgridEh) then
    begin { 不是在TDbgrid控件内}
      key := #0;
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
  end; //end if of #13
end;

end.



