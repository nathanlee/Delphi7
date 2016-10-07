{**********************************
*模块名称：入库单据处理模块
*版本：    0.1
*作者：    李振华
*用途：    入库单据处理
*日期：    2003年3月24日
**********************************}
unit IPrdtInto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, Mask,
  ComCtrls, DBGridEh, DBCtrlsEh, DBLookupEh, ADODB;

type
  TIPrdtIntoFrm = class(TForm)
    PanelTitle: TPanel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    LabelNo: TLabel;
    MDate: TDateTimePicker;
    DataSource2: TDataSource;
    Label3: TLabel;
    DBGridEh1: TDBGridEh;
    DBLKCustEh: TDBLookupComboboxEh;
    ECustID: TEdit;
    BodyAQry: TADOQuery;
    BodyAQryISN: TIntegerField;
    BodyAQrySPRDTID: TStringField;
    BodyAQryFPRICE: TBCDField;
    BodyAQryIQTY: TIntegerField;
    BodyAQryLKID: TStringField;
    BodyAQryAmt: TFloatField;
    AProc: TADOStoredProc;
    BodyAQrysDiaMater: TStringField;
    BodyAQrysPly: TStringField;
    BodyAQrysUnit: TStringField;
    QryPrdtID: TADOQuery;
    BitBtn2: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboHandEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BodyAQryAfterInsert(DataSet: TDataSet);
    procedure BodyAQryCalcFields(DataSet: TDataSet);
    procedure BodyAQrySPRDTIDValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    RNo: integer;
    OprFlag: Boolean; //True:Append False:Update;
  end;

var
  IPrdtIntoFrm: TIPrdtIntoFrm;

implementation

uses Main, PubMessage;

{$R *.DFM}

procedure TIPrdtIntoFrm.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TIPrdtIntoFrm.BitBtn1Click(Sender: TObject);
var
  lsPrdtID, lQty, lPrice: string;
  iSN: integer;
begin
  with BodyAQry do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if BodyAQrysPrdtID.AsString = '' then
        Delete
      else
      begin
        lsPrdtID := lsPrdtID + Trim(BodyAQrysPrdtID.AsString) + ',';
        lQty := lQty + Trim(BodyAQryiQty.AsString) + ',';
        lPrice := lPrice + Trim(BodyAQryfPrice.AsString) + ',';
      end;
      next;
    end;
    EnableControls;
  end;
  if OprFlag then //新增操作
    iSN := 0
  else //修改操作
    iSN := RNo;
  with AProc do
  begin
    Parameters.ParamByName('@iSN').Value := iSN;
    Parameters.ParamByName('@sProID').Value := 'a';
    Parameters.ParamByName('@dHapdDate').Value := MDate.Date;
    Parameters.ParamByName('@sUserID').Value := 'B';
    Parameters.ParamByName('@lPrdtID').Value := lsPrdtID;
    Parameters.ParamByName('@lQty').Value := lQty;
    Parameters.ParamByName('@lPrice').Value := lPrice;
    Prepared;
    ExecProc
  end;
  if OprFlag then //新增操作
    ShowMessage(MSG_SAVE_DOON)
  else //修改操作
    ShowMessage(MSG_UPDT_DOON);
  Close;
end;

procedure TIPrdtIntoFrm.FormActivate(Sender: TObject);
begin
  if OprFlag then
    MDate.Date := Date;
  with BodyAQry do
  begin
    Close;
    Parameters.ParamByName('SNo').Value := RNo;
    Open;
    first;
  end;

end;

procedure TIPrdtIntoFrm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TIPrdtIntoFrm.ComboHandEnter(Sender: TObject);
begin
  if OprFlag then
    SendMessage((Sender as TComboBox).Handle, CB_ShOWDROPDOWN, 1, 0);
end;

procedure TIPrdtIntoFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_ESCAPE then
    if Application.MessageBox(MSG_REALY_CLOSE, MSG_APP_TITLE,
      MB_ICONQUESTION + mb_YesNo) = ID_Yes then Close;
end;

procedure TIPrdtIntoFrm.BodyAQryAfterInsert(DataSet: TDataSet);
begin
  BodyAQry.Edit;
  BodyAQryiSN.Value := RNo;
end;

procedure TIPrdtIntoFrm.BodyAQryCalcFields(DataSet: TDataSet);
begin
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select sDiaMater,sPly,sUnit From Tab_PrdtEnCode where sPrdtID = :sPrdtId');
    Parameters.ParamByName('sPrdtID').Value := BodyAQrysPrdtID.Value;
    Open;
    if not eof then
    begin
      BodyAQrysDiaMater.Value := FieldByName('sDiaMater').AsString;
      BodyAQrysPly.Value := FieldByName('sPly').AsString;
      BodyAQrysUnit.Value := FieldByName('sUnit').AsString;
      BodyAQryAMT.Value := BodyAQryiQty.Value * BodyAQryfPrice.Value;
    end;
  end;
end;

procedure TIPrdtIntoFrm.BodyAQrySPRDTIDValidate(Sender: TField);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select sPrdtID ');
    Sql.Add('From Tab_PrdtEnCode');
    Sql.Add('Where sPrdtID = :sPrdtID');
    Parameters.ParamByName('sPrdtID').Value := BodyAQrysPrdtID.Value;
    Open;
    if eof then
      raise ERangeError.Create(MSG_PRDT_ID_ERR);
  end;
end;

end.

