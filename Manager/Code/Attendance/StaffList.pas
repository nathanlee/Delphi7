{******************************************************}
{模块名称：人事管理                                    }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    员工管理                                    }
{日期：    2004年03月20日                              }
{******************************************************}
unit StaffList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrnDbgeh, Grids, DBGridEh, ExtCtrls, Menus, ComCtrls, ToolWin, StdCtrls,
  DB, ADODB;

type
  TStaffListFam = class(TFrame)
    ToolBar1: TToolBar;
    TBNew: TToolButton;
    TBUpdate: TToolButton;
    TBPrnList: TToolButton;
    TBDel: TToolButton;
    TBFind: TToolButton;
    PanelTitle: TPanel;
    GridStaff: TDBGridEh;
    DSStaff: TDataSource;
    TBLeve: TToolButton;
    procedure TBNewClick(Sender: TObject);
    procedure TBUpdateClick(Sender: TObject);
    procedure TBFindClick(Sender: TObject);
    procedure FrameCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure TBLeveClick(Sender: TObject);
    procedure GridStaffTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure TBPrnListClick(Sender: TObject);
    procedure TBDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
  uses Main,PubMessage, AddStaff, SerachStaff, AddStaffLeave;
{$R *.dfm}

{添加新员工}
procedure TStaffListFam.TBNewClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03001',SYS_INSERT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TAddStaffFrm,AddStaffFrm);
  with AddStaffFrm do
  begin
    OprFlag := True;
    ShowModal;
    Free;
  end;
  refreshQry(MainFrm.StaffList);
end;

{修改员工属性}
procedure TStaffListFam.TBUpdateClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03001',SYS_UPDATE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TAddStaffFrm,AddStaffFrm);
  with AddStaffFrm do
  begin
    OprFlag := False;
    eStaffID.Text := MainFrm.StaffList.FieldByName('cStaffID').Value;
    eName.Text :=  MainFrm.StaffList.FieldByName('cName').Value;
    cbxSex.ItemIndex :=
      cbxSex.Items.IndexOf(MainFrm.StaffList.FieldByName('性别').Value);
    Birthday.Date := MainFrm.StaffListdBirthday.Value;
    leNation.Text := MainFrm.StaffListcNation.Value ;
    leTel.Text := MainFrm.StaffListcTel.Value ;
    leEMail.Text := MainFrm.StaffListcEMail.Value;
    leAddr.Text := MainFrm.StaffListcAddr.Value;
    EIDNo.Text :=  MainFrm.StaffListcIDNo.Value;
    EIDAddr.Text := MainFrm.StaffListcIDAddr.Value;
    PDate.Date := MainFrm.StaffListdWorkTime.Value;
    cbxCole.ItemIndex := cbxCole.Items.IndexOf(MainFrm.StaffListcColeName.Value);
    cbxDuty.ItemIndex := cbxDuty.Items.IndexOf(MainFrm.StaffListcDutyName.Value);
    cbxDept.ItemIndex := cbxDept.Items.IndexOf(MainFrm.StaffListcDepName.Value);
    ShowModal;
    Free;
  end;
  refreshQry(MainFrm.StaffList);
end;

procedure TStaffListFam.TBFindClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03001',SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TSerachStaffFrm,SerachStaffFrm);
  with SerachStaffFrm do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TStaffListFam.FrameCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
//  ChgGridWidth(GridStaff);
end;

procedure TStaffListFam.TBLeveClick(Sender: TObject);
begin
  Application.CreateForm(TAddStaffLeaveFrm,AddStaffLeaveFrm);
  with AddStaffLeaveFrm do
  begin
    eStaffID.Text := MainFrm.StaffList.FieldByName('cStaffID').Value;
    eName.Text :=  MainFrm.StaffList.FieldByName('cName').Value;
    leSex.text := MainFrm.StaffList.FieldByName('性别').Value;
    Birthday.Date := MainFrm.StaffListdBirthday.Value;
    leNation.Text := MainFrm.StaffListcNation.Value ;
    leTel.Text := MainFrm.StaffListcTel.Value ;
    leEMail.Text := MainFrm.StaffListcEMail.Value;
    leAddr.Text := MainFrm.StaffListcAddr.Value;
    EIDNo.Text :=  MainFrm.StaffListcIDNo.Value;
    EIDAddr.Text := MainFrm.StaffListcIDAddr.Value;
    PDate.Date := MainFrm.StaffListdWorkTime.Value;
    leCole.text := MainFrm.StaffListcColeName.Value;
    leDuty.text := MainFrm.StaffListcDutyName.Value;
    leDept.text := MainFrm.StaffListcDepName.Value;
    ShowModal;
    Free;
  end;
end;

procedure TStaffListFam.GridStaffTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender,Column);
end;

procedure TStaffListFam.TBPrnListClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03001',SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
end;

procedure TStaffListFam.TBDelClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03001',SYS_DELETE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Application.MessageBox('确认要删除这个员工记录吗？', MSG_APP_TITLE,
    MB_ICONQUESTION + mb_YesNo) = ID_Yes then
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Delete StaffInfo ');
    Sql.Add('  Where cStaffID = :cStaffID ');
    Parameters.ParamByName('cStaffID').Value := MainFrm.StaffList.fieldByName('cStaffID').Value;
    ExecSql;
    MainFrm.StaffList.Active := False;
    MainFrm.StaffList.Active := True;
  end;

end;

end.
