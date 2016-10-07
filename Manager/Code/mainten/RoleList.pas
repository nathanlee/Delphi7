{******************************************************}
{模块名称：系统角色及其权限管理                        }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    管理系统角色及其权限                        }
{日期：    2004年05月4日                               }
{******************************************************}
unit RoleList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrnDbgeh, Grids, DBGridEh, ExtCtrls, Menus, ComCtrls, ToolWin, StdCtrls,
  DB, ADODB, GridsEh;

type
  TRoleListFam = class(TFrame)
    ToolBar1: TToolBar;
    TBNew: TToolButton;
    TBUpdate: TToolButton;
    PanelTitle: TPanel;
    GridRole: TDBGridEh;
    DSRole: TDataSource;
    RoleList: TADOQuery;
    TBDelete: TToolButton;
    Splitter1: TSplitter;
    GridEhRights: TDBGridEh;
    DSRights: TDataSource;
    RightsList: TADOQuery;
    procedure GridRoleTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure FrameEnter(Sender: TObject);
    procedure TBNewClick(Sender: TObject);
    procedure TBDeleteClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure GridEhRightsColumns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure TBUpdateClick(Sender: TObject);
    procedure GridEhRightsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
uses Main, PubMessage, RolePer;
{$R *.dfm}


{修改员工属性}

procedure TRoleListFam.GridRoleTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TRoleListFam.FrameEnter(Sender: TObject);
begin
  RefreshQry(RoleList);
  RefreshQry(RightsList);
  FrameResize(Sender);
end;

procedure TRoleListFam.TBNewClick(Sender: TObject);
var
  sRole: string;
begin
  if not OperRights(SYS_OPR_ID, '04002', SYS_INSERT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if InputQuery('新建角色', '请输入角色名称', sRole) then
  begin
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Insert into StaffRule (cRuleName) Values (:cRuleName) '
        + 'Insert Into RuleRights (iRuleID,cFunID) Select @@IDENTITY,cFunID From FunList';
      Parameters.ParamByName('cRuleName').Value := sRole;
      ExecSql;
    end;
    FrameEnter(Sender);
  end;
end;

procedure TRoleListFam.TBDeleteClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04002', SYS_DELETE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Application.MessageBox(MSG_REALY_DELETE, MSG_APP_TITLE,
    MB_ICONQUESTION + mb_YesNo) = ID_Yes then
  begin
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'declare @iRuleID Integer Set @iRuleID = :iRuleID '
        + 'delete RuleRights where iRuleID = @iRuleID '
        + 'Delete StaffRule where iRuleID = @iRuleID '
        + 'Delete StaffRole where iRuleID = @iRuleID ';
      Parameters.ParamByName('iRuleID').Value := RoleList.fieldByName('iRuleID').Value;
      ExecSql;
    end;
    FrameEnter(Sender);
    ShowMessage(MSG_DELE_DOON);
  end;
end;

procedure TRoleListFam.FrameResize(Sender: TObject);
begin
  ChgGridWidth(GridEhRights);
end;

procedure TRoleListFam.GridEhRightsColumns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Update RuleRights '
      + 'Set ';
    if (Sender as TDBGridColumnEh) = GridEhRights.Columns[1] then
      Sql.Text := Sql.Text + '  bBrowse = :bValue ';
    if (Sender as TDBGridColumnEh) = GridEhRights.Columns[2] then
      Sql.Text := Sql.Text + '  bInsert = :bValue ';
    if (Sender as TDBGridColumnEh) = GridEhRights.Columns[3] then
      Sql.Text := Sql.Text + '  bUpdate = :bValue ';
    if (Sender as TDBGridColumnEh) = GridEhRights.Columns[4] then
      Sql.Text := Sql.Text + '  bDelete = :bValue ';
    if (Sender as TDBGridColumnEh) = GridEhRights.Columns[5] then
      Sql.Text := Sql.Text + '  bVouch = :bValue ';
    if (Sender as TDBGridColumnEh) = GridEhRights.Columns[6] then
      Sql.Text := Sql.Text + '  bStat = :bValue ';
    if (Sender as TDBGridColumnEh) = GridEhRights.Columns[7] then
      Sql.Text := Sql.Text + '  bPrnint = :bValue ';
    Sql.Text := Sql.Text + 'Where iRuleID = :iRuleID And cFunID = :cFunID';
    Parameters.ParamByName('bValue').Value := Value;
    Parameters.ParamByName('iRuleID').Value := RightsList.fieldByName('iRuleID').Value;
    Parameters.ParamByName('cFunID').Value := RightsList.fieldByName('cFunID').Value;
    ExecSql;
  end;
end;

procedure TRoleListFam.TBUpdateClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04002', SYS_UPDATE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TRolePerForm, RolePerForm);
  with RolePerForm do
  begin
    RoleID := RoleList.FieldByName('iRuleID').Value;
    LabRole.Caption := '角色：' + RoleList.FieldByName('cRuleName').Value;
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'select cOprID,cName '
        + 'From V_OprList V '
        + 'Where cOprID in (select cStaffID From StaffRole Where iRuleID = '
        + IntToStr(RoleID)
        + ')';
      Open;
      while not eof do
      begin
        RolePerForm.ListOpr.Items.Add(Fields[0].value + '   ' + Fields[1].Value);
        Application.ProcessMessages;
        next;
      end;
    end;
    ShowModal;
    Free;
  end;
end;

procedure TRoleListFam.GridEhRightsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 //斑马线显示
 { with (Sender as TDBGridEh) do
  begin
    if (DataSource.DataSet.RecNo mod 2) = 0 then
      Canvas.Brush.Color := $00FCFDDF;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;}
end;

end.

