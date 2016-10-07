{**********************************
*模块名称：查找和选择供应商
*版本：    0.1
*作者：    李振华
*用途：    查找和选择供应商代码和名称
*日期：    2003年8月7日
**********************************}
unit MainOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGridEh, Buttons, DB, ADODB;

type
  TSelectCustFrm = class(TForm)
    BtnOK: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    DBGridEh6: TDBGridEh;
    GridProv: TDBGridEh;
    Bevel1: TBevel;
    BtnAdd: TButton;
    BtnPre: TButton;
    LeName: TLabeledEdit;
    AreaQry: TADOQuery;
    DSArea: TDataSource;
    ProInfoQry: TADOQuery;
    DSPro: TDataSource;
    EAreaID: TEdit;
    EProID: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnPreClick(Sender: TObject);
    procedure LeNameExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProInfoQryAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelectCustFrm: TSelectCustFrm;

implementation

{$R *.dfm}
uses Main, PubMessage, AddProvInfo, SerachCust;

procedure TSelectCustFrm.FormCreate(Sender: TObject);
begin
  RefreshQry(AreaQry);
  RefreshQry(ProInfoQry);
end;

procedure TSelectCustFrm.BtnAddClick(Sender: TObject);
begin
  Application.CreateForm(TAddProvFrm, AddProvFrm);
  with AddProvFrm do
  begin
    if not AreaQry.Eof then
      cbxArea.ItemIndex := cbxArea.Items.IndexOf(AreaQry.FieldByName('cAreaName').Value);
    OprType := True;
    ShowModal;
    Release;
  end;
  FormCreate(Sender);
end;

procedure TSelectCustFrm.BtnPreClick(Sender: TObject);
begin
  Application.CreateForm(TAddProvFrm, AddProvFrm);
  with AddProvFrm do
  begin
    OprType := False;
    cbxArea.ItemIndex := cbxArea.Items.IndexOf(AreaQry.FieldByName('cAreaName').Value);
    leCode.Text := ProInfoQry.fieldByName('cProID').AsString;
    leName.Text := ProInfoQry.fieldByName('cProName').AsString;
    leContract.Text := ProInfoQry.fieldByName('cContact').AsString;
    leEmail.Text := ProInfoQry.fieldByName('cEmail').AsString;
    leTel.Text := ProInfoQry.fieldByName('cTel').AsString;
    leAddr.Text := ProInfoQry.fieldByName('cAddr').AsString;
    leWebPage.Text := ProInfoQry.FieldByName('cWebPage').AsString;
    leMainItem.Text := ProInfoQry.FieldByName('cMainItem').AsString;
    ShowModal;
    Release;
  end;
  RefreshQry(ProInfoQry);
end;

procedure TSelectCustFrm.LeNameExit(Sender: TObject);
begin
  if leName.Text <> '' then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Select iAreaID,cProID From ProvInfo where cProName = :cProName';
      Parameters.ParamByName('cProName').Value := leName.Text;
      Open;
      if not eof then
      begin
        EAreaID.Text := FieldByName('iAreaID').AsString;
        EProID.Text := FieldByName('cProID').AsString;
        FormCreate(Sender);
      end
      else
        showMessage(MSG_CUSTNAME_ERR);
    end
  else
  begin
    EAreaID.Text := '';
    EProID.Text := '';
    FormCreate(Sender);
  end;
end;

procedure TSelectCustFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;

end;

procedure TSelectCustFrm.ProInfoQryAfterScroll(DataSet: TDataSet);
begin
    BtnPre.Enabled := not (ProInfoQry.RecordCount = 0);
end;

end.

