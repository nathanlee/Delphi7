unit UnSaleParall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SaleParall, PrnDbgeh, DB, ADODB, TeEngine, Series, TeeProcs,
  Chart, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TUnSaleParallFrm = class(TSaleParallFrm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBAddClick(Sender: TObject);
    procedure SBPrnClick(Sender: TObject);
    procedure SBExpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnSaleParallFrm: TUnSaleParallFrm;

implementation
  uses Main, PubMessage, SerachCust, SetPrdt;
{$R *.dfm}

procedure TUnSaleParallFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  UnSaleParallFrm := nil;
  Action := caFree;
end;

procedure TUnSaleParallFrm.SBAddClick(Sender: TObject);
var
  I, lEnd, lStart: integer;
begin
  if not OperRights(SYS_OPR_ID, '02017', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if cbxYear.Text = cbxPerYear.Text then
  begin
    ShowMessage('基本年份与比较年份相同');
    exit;
  end;
  if (cbxsType.ItemIndex = 2) and (CbxType.Text = '全部') then
  begin
    ShowMessage('请选择要统计的商品类别');
    CbxType.SetFocus;
    Exit;
  end;
  ProcessData(True);
  Grid.Columns.Clear;
  with SaleParall do
  begin
    AfterScroll := nil;
    Close;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear.Text);
    Parameters.ParamByName('@Flag').Value := cbxsType.ItemIndex;
    Parameters.ParamByName('@PerYear').Value := StrToInt(CBXPerYear.Text);
    Parameters.ParamByName('@Querter').Value := cbxqtr.Checked;
    if CbxArea.Text = '全部' then
      Parameters.ParamByName('@cAreaName').Value := '%'
    else
      Parameters.ParamByName('@cAreaName').Value := '%' + CbxArea.Text + '%';
    if CbxCust.Text = '全部' then
      Parameters.ParamByName('@cCustName').Value := '%'
    else
      Parameters.ParamByName('@cCustName').Value := '%' + CbxCust.Text + '%';
    if CbxType.Text = '全部' then
      Parameters.ParamByName('@cTypeName').Value := '%'
    else
      Parameters.ParamByName('@cTypeName').Value := '%' + CbxType.Text + '%';
    if cbxsType.ItemIndex = 2 then
      Parameters.ParamByName('@cTypeName').Value := CbxType.Text;
    if CBXBrand.Text = '全部' then
      Parameters.ParamByName('@cBrandName').Value := '%'
    else
      Parameters.ParamByName('@cBrandName').Value := '%' + CbxBrand.Text + '%';
    Parameters.ParamByName('@cPrdtName').Value := '%' + ESPrdtName.Text + '%';
    lStart := GetTickCount;
    Open;
    lEnd := GetTiCkCount;
    AfterScroll := SaleParallAfterScroll;
    first;
  end;
  if cbxsType.ItemIndex = 0 then
    Grid.Visible := False
  else
    Grid.Visible := True;
  case cbxsType.ItemIndex of
    0: {按照销售额统计}
      begin
        Chart1.Series[0].Clear;
        Chart1.Series[1].Clear;
        for I := 0 to (DS.DataSet.FieldCount - 1) do
        begin
          Application.ProcessMessages;
          if (I mod 2) = 0 then
            Chart1.Series[0].Add(DS.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clRed)
          else
            Chart1.Series[1].Add(DS.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clBlue);
        end;
      end;
    1: {按照销售类别统计}
      begin
        Grid.Columns.Add;
        Grid.Columns[0].FieldName := ds.DataSet.Fields[0].FieldName;
        Grid.Columns[0].Title.TitleButton := True;
        Grid.Columns[0].Title.Caption := '商品类别';

      end;
    2: {按照销售品牌统计}
      begin
        Grid.Columns.Add;
        Grid.Columns[0].FieldName := ds.DataSet.Fields[0].FieldName;
        Grid.Columns[0].Title.TitleButton := True;
        Grid.Columns[0].Title.Caption := '商品品牌';
      end;
    3: {按照客户名称统计}
      begin
        Grid.Columns.Add;
        Grid.Columns[0].FieldName := ds.DataSet.Fields[0].FieldName;
        Grid.Columns[0].Width := 150;
        Grid.Columns[0].Title.TitleButton := True;
        Grid.Columns[0].Title.Caption := '客户名称';
      end;
  end;
  ProcessData(False);
  ShowHide('统计耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
end;

procedure TUnSaleParallFrm.SBPrnClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02017', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Ds.DataSet.Active then PrnGrid.Preview;
end;

procedure TUnSaleParallFrm.SBExpClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02017', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if ExportToXLS(Grid, LabTitle.Caption + '(' + cbxSType.Text + ')') then
    ShowMessage(MSG_EXPT_DOON);
end;

end.

