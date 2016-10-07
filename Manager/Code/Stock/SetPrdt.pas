unit SetPrdt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBGridEh,
  ADODB, PrnDbgeh, fcdbtreeview, fcTreeHeader, Menus, GridsEh;

type
  TSetPrdtFrm = class(TForm)
    DSType: TDataSource;
    DSBrand: TDataSource;
    EName: TEdit;
    Label1: TLabel;
    BtnPrn: TBitBtn;
    dsPrdt: TDataSource;
    BtnSel: TBitBtn;
    BtnAdd: TBitBtn;
    BtnUpd: TBitBtn;
    BtnDel: TBitBtn;
    TypeQry: TADOQuery;
    GridType: TDBGridEh;
    GridBrand: TDBGridEh;
    BrandQry: TADOQuery;
    PrdtQry: TADOQuery;
    BitBtn2: TBitBtn;
    BtnFind: TBitBtn;
    PrnEh: TPrintDBGridEh;
    Panel1: TPanel;
    Header: TfcTreeHeader;
    DBTV: TfcDBTreeView;
    ChildPrdtQry: TADOQuery;
    dsChild: TDataSource;
    PopPrdt: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BtnPrnClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnUpdClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure BtnSelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridTypeEnter(Sender: TObject);
    procedure GridBrandEnter(Sender: TObject);
    procedure GridTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridBrandKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFindClick(Sender: TObject);
    procedure DBTVUserExpand(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure DBTVCalcNodeAttributes(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure DBTVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBTVEnter(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    lastds: TDataSource; //寻找下级编码用的DataSource
    NextLevel: Boolean; //是否添加下级编码
  public
    { Public declarations }
    PrdtID: string;
  end;

var
  SetPrdtFrm: TSetPrdtFrm;

implementation

uses PubMessage, Main, AddType, AddBrand, AddPrdt;

{$R *.DFM}

procedure TSetPrdtFrm.FormCreate(Sender: TObject);
begin
  NextLevel := False;
  {编码设置页面初始化}
  GridBrand.TitleFont.Color := clWhite;
  Header.Font.Color := clWhite;
  RefreshQry(TypeQry);
  RefreshQry(BrandQry);
  RefreshQry(PrdtQry);
  RefreshQry(ChildPrdtQry);

end;

procedure TSetPrdtFrm.BtnPrnClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01015', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  with PrnEh do
  begin
    PageHeader.CenterText.clear;
    PageHeader.CenterText.Add('商品编码表');
    BeforeGridText.Clear;
    BeforeGridText.Add('商品类别：' + TypeQry.FieldByName('cTypeAbbr').AsString
      + '        商品类别：' + BrandQry.FieldByName('cBrandAbbr').AsString);
    Preview;
  end;
end;

procedure TSetPrdtFrm.BtnAddClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01015', SYS_INSERT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  {处理类型添加}
  if GridType.TitleFont.Color = clWindowText then
  begin
    Application.CreateForm(TAddTypeFrm, AddTypeFrm);
    with AddTypeFrm do
    begin
      BOprType := True;
      ShowModal;
      Release;
    end;
    RefreshQry(TypeQry);
    GridType.SetFocus;
  end;
  {处理品牌添加}
  if GridBrand.TitleFont.Color = clWindowText then
  begin
    Application.CreateForm(TAddBrandFrm, AddBrandFrm);
    with AddBrandFrm do
    begin
      BOprType := True;
      cTypeID := TypeQry.FieldByName('cTypeID').AsString;
      ShowModal;
      Release;
    end;
    GridBrand.SetFocus;
    RefreshQry(BrandQry);
  end;
  {处理商品添加}
  if Header.Font.Color = clWindowText then
  begin
    Application.CreateForm(TAddPrdtFrm, AddPrdtFrm);
    with AddPrdtFrm do
    begin
      BOprType := True;
      cTypeID := TypeQry.FieldByName('cTypeID').AsString;
      cBrandID := BrandQry.FieldByName('cBrandID').AsString;
      LeName.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
      if NextLevel then
        cParentID := DBTV.ActiveNode.DataSet.FieldByName('cPrdtID').AsString;
      ShowModal;
      Release;
    end;
    NextLevel := False;
    DBTV.SetFocus;
    RefreshQry(PrdtQry);
  end;
end;

procedure TSetPrdtFrm.BtnUpdClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01015', SYS_UPDATE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  {处理类型修改}
  if GridType.TitleFont.Color = clWindowText then
  begin
    Application.CreateForm(TAddTypeFrm, AddTypeFrm);
    with AddTypeFrm do
    begin
      BOprType := False;
      EID.Text := TypeQry.FieldByName('cTypeID').AsString;
      EName.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
      ShowModal;
      Release;
    end;
    RefreshQry(TypeQry);
    GridType.SetFocus;
  end;
  {处理品牌修改}
  if GridBrand.TitleFont.Color = clWindowText then
  begin
    Application.CreateForm(TAddBrandFrm, AddBrandFrm);
    with AddBrandFrm do
    begin
      BOprType := False;
      LEBID.Text := BrandQry.FieldByName('cBrandID').AsString;
      LeBrandName.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
      cTypeID := TypeQry.FieldByName('cTypeID').AsString;
      ShowModal;
      Release;
    end;
    RefreshQry(BrandQry);
    GridBrand.SetFocus;
  end;
  {修改商品添加}
  if Header.Font.Color = clWindowText then
  begin
    Application.CreateForm(TAddPrdtFrm, AddPrdtFrm);
    with AddPrdtFrm do
    begin
      bOprType := False;
      LEID.Text := DBTV.ActiveNode.DataSet.FieldByName('cPrdtID').AsString;
      LEUnit.Text := DBTV.ActiveNode.DataSet.FieldByName('cUnit').AsString;
      LeName.Text := DBTV.ActiveNode.DataSet.FieldByName('cName').AsString;
      cTypeID := TypeQry.FieldByName('cTypeID').AsString;
      cBrandID := BrandQry.FieldByName('cBrandID').AsString;
      ShowModal;
      Release;
    end;
    RefreshQry(PrdtQry);
    DBTV.SetFocus;
  end;
end;

procedure TSetPrdtFrm.BtnDelClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01015', SYS_DELETE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Application.MessageBox(MSG_REALY_DELETE, MSG_APP_TITLE, MB_ICONQUESTION +
    mb_YesNo) = ID_Yes then
  begin
  {处理类型删除}
    if GridType.TitleFont.Color = clWindowText then
      with MainFrm.ADOTmp do
      begin
        Close;
        Sql.Clear;
        Sql.Add('Delete PrdtType where cTypeID = :cTypeID');
        Parameters.ParamByName('cTypeID').Value :=
          TypeQry.fieldByName('cTypeID').Value;
        ExecSql;
        TypeQry.Close;
        TypeQry.Open;
      end;
  {处理品牌删除}
    if GridBrand.TitleFont.Color = clWindowText then
      with MainFrm.ADOTmp do
      begin
        Close;
        Sql.Clear;
        Sql.Add('Delete PrdtBrand where cBrandID = :cBrandID');
        Parameters.ParamByName('cBrandID').Value :=
          BrandQry.fieldByName('cBrandID').Value;
        ExecSql;
        BrandQry.Close;
        BrandQry.Open;
      end;
  {处理编码删除}
    if Header.Font.Color = clWindowText then
      with MainFrm.ADOTmp do
      begin
        Close;
        Sql.Clear;
        Sql.Add('Delete PrdtEnCode where cPrdtID = :cPrdtID');
        Parameters.ParamByName('cPrdtID').Value :=
          DBTV.ActiveNode.DataSet.fieldByName('cPrdtID').Value;
        ExecSql;
        BrandQry.Close;
        BrandQry.Open;
      end;
    ShowMessage(MSG_DELE_DOON)
  end;
end;

procedure TSetPrdtFrm.BtnSelClick(Sender: TObject);
begin
  PrdtID := DBTV.ActiveNode.DataSet.FieldByName('cPrdtID').AsString;
  Close;
end;

procedure TSetPrdtFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then close;
end;

procedure TSetPrdtFrm.GridTypeEnter(Sender: TObject);
begin
  GridType.TitleFont.Color := clWindowText;
  GridBrand.TitleFont.Color := clWindow;
  Header.Font.Color := clWindow;
  BtnAdd.Caption := '新建类别(&W)';
end;

procedure TSetPrdtFrm.GridBrandEnter(Sender: TObject);
begin
  GridType.TitleFont.Color := clWindow;
  GridBrand.TitleFont.Color := clWindowText;
  Header.Font.Color := clWindow;
  BtnAdd.Caption := '新建品牌(&W)';
end;

procedure TSetPrdtFrm.GridTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    GridBrand.SetFocus;
    key := 0;
  end;
end;

procedure TSetPrdtFrm.GridBrandKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    DBTV.SetFocus;
    key := 0;
  end;
end;

procedure TSetPrdtFrm.BtnFindClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01015', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'select cTypeID,cBrandID,cPrdtID From PrdtEnCode '
      + ' Where cName Like :cName order by cName';
    Parameters.ParamByName('cName').Value := '%' + eName.Text + '%';
    Open;
    if not eof then
    begin
      TypeQry.Locate('cTypeID', FieldByName('cTypeID').Value, [loPartialKey]);
      BrandQry.Locate('cBrandID', FieldByName('cBrandID').Value, [loPartialKey]);
      PrdtQry.Locate('cPrdtID', FieldByName('cPrdtID').Value, [loPartialKey]);
    end;
  end;
end;

procedure TSetPrdtFrm.DBTVUserExpand(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode);
var childquery: TADOQuery;
  childdatasource: TDataSource;
begin
  if (node.level + 1 < dbtv.displayfields.count) then exit;

   { Dynamically create new detail parameterized query }
  childdatasource := TDatasource.create(self);
  childdatasource.name := 'ChildDataSource' + inttostr(node.level + 1);
  childquery := TADOQuery.create(self);

  childdatasource.dataset := childquery;
  with childquery do begin
    childquery.sql.assign(ChildPrdtQry.sql);
    childquery.Connection := ChildPrdtQry.Connection;
    Parameters.CreateParameter('cPrdtID', ftString, pdInput, 12, '');
    if lastds = nil then childquery.datasource := dsChild
    else childquery.datasource := lastDS;
    childquery.active := true;
  end;
  with (TreeView as TfcDBTreeView) do begin
    DataSources := DataSources + ';' + ChildDatasource.name;
    displayfields.add(displayfields[displayfields.count - 1]);
    lastDS := Childdatasource;
  end
end;

procedure TSetPrdtFrm.DBTVCalcNodeAttributes(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    sql.Clear;
    Sql.Text := 'Select cParentID From PrdtEnCode where cParentID = '''
      + node.dataset.fieldbyname('cPrdtID').asstring + '''';
    Open;
    Node.HasChildren := not eof;
  end;

end;

procedure TSetPrdtFrm.DBTVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if BtnSel.Enabled then
      BtnSel.SetFocus
    else
      GridType.SetFocus;
    key := 0;
  end;
end;

procedure TSetPrdtFrm.DBTVEnter(Sender: TObject);
begin
  GridType.TitleFont.Color := clWindow;
  GridBrand.TitleFont.Color := clWindow;
  Header.Font.Color := clWindowText;
  BtnAdd.Caption := '新建编码(&W)';
end;

procedure TSetPrdtFrm.N1Click(Sender: TObject);
begin
  NextLevel := True;
  BtnAddClick(Sender);
end;

end.

