{******************************************************}
{模块名称：系统用户管理                                }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    系统用户管理                                }
{日期：    2004年03月20日                              }
{******************************************************}
unit OperList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrnDbgeh, Grids, DBGridEh, ExtCtrls, Menus, ComCtrls, ToolWin, StdCtrls,
  DB, ADODB;

type
  TOprListFam = class(TFrame)
    ToolBar1: TToolBar;
    TBNew: TToolButton;
    TBUpdate: TToolButton;
    PanelTitle: TPanel;
    GridOpr: TDBGridEh;
    DSStaff: TDataSource;
    OprList: TADOQuery;
    OprListcOprID: TStringField;
    OprListcName: TStringField;
    OprListAccess: TStringField;
    TBDelete: TToolButton;
    OprListcPassWord: TStringField;
    OprListbAllowLogin: TBooleanField;
    procedure GridOprTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure FrameEnter(Sender: TObject);
    procedure TBNewClick(Sender: TObject);
    procedure TBUpdateClick(Sender: TObject);
    procedure TBDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
  uses Main,PubMessage, AddOpr;
{$R *.dfm}


{修改员工属性}
procedure TOprListFam.GridOprTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender,Column);
end;

procedure TOprListFam.FrameEnter(Sender: TObject);
begin
  RefreshQry(OprList);
end;

procedure TOprListFam.TBNewClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04001', SYS_INSERT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TAddOprFrm,AddOprFrm);
  With AddOprFrm do
  begin
    OprFlag := True;
    Caption := Caption + '新建';
    ShowModal;
    Release;
  end;
  RefreshQry(OprList);
end;

procedure TOprListFam.TBUpdateClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04001', SYS_UPDATE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TAddOprFrm,AddOprFrm);
  With AddOprFrm do
  begin
    OprFlag := False;
    Caption := Caption + '属性';
    cbxLoginID.Style := csDropDown;
    cbxLoginID.Text := OprListcOprID.Value;
    eName.Text := OprListcName.Value;
    chkAccess.Checked := OprListbAllowLogin.Value;
    ShowModal;
    Release;
  end;
  RefreshQry(OprList);

end;

procedure TOprListFam.TBDeleteClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04001', SYS_DELETE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Update StaffInfo '
      + ' Set '
      + '   bOpr = 0 '
      + ' Where cStaffID = :cStaffID';
    Parameters.ParamByName('cStaffID').Value := OprListcOprID.Value;
    ExecSql;
  end;
  RefreshQry(OprList);
end;

end.
