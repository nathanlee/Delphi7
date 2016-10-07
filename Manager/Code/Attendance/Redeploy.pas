{******************************************************}
{模块名称：人员内部调动模块                            }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    调整人员的所属部门                          }
{日期：    2004年03月11日 83107329                     }
{******************************************************}
unit Redeploy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, ExtCtrls, Grids, DBGridEh;

type
  TRedePloyFrm = class(TForm)
    CBXDept: TComboBox;
    Label16: TLabel;
    GroupBox1: TGroupBox;
    SBAddToTrg: TSpeedButton;
    SBRemTrg: TSpeedButton;
    GroupBox2: TGroupBox;
    TrgBox: TListBox;
    GridStaff: TDBGridEh;
    GridDeptStaff: TDBGridEh;
    LeName: TLabeledEdit;
    StaffAllQry: TADOQuery;
    StaffDeptQry: TADOQuery;
    DSAll: TDataSource;
    DSDept: TDataSource;
    StaffAllQrycName: TStringField;
    StaffAllQryDSDesigner: TStringField;
    StaffAllQrycDutyName: TStringField;
    BitBtn2: TBitBtn;
    StaffAllQrycStaffID: TStringField;
    BtnFind: TBitBtn;
    StaffDeptQrycName: TStringField;
    StaffDeptQrycStaffID: TStringField;
    StaffDeptQryDSDesigner: TStringField;
    StaffDeptQrycDutyName: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SBAddToTrgClick(Sender: TObject);
    procedure SBRemTrgClick(Sender: TObject);
    procedure GridStaffDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridDeptStaffDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure GridDeptStaffDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BtnFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RedePloyFrm: TRedePloyFrm;

implementation
uses Main, PubMessage;
{$R *.dfm}

procedure TRedePloyFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    Key := 0;
  end;
end;

procedure TRedePloyFrm.FormCreate(Sender: TObject);
begin
  {添加部门列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cDepName From DepartInfo');
    Application.ProcessMessages;
    AddComBo(CbxDept, MainFrm.AdoTmp, False);
  end;
end;

procedure TRedePloyFrm.SBAddToTrgClick(Sender: TObject);
var
  i, iDepID: Integer;
begin
  if GridStaff.SelectedRows.Count > 0 then
  begin
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('Select iDepID From DepartInfo Where lTrim(RTrim(cDepName)) = ''' + Trim(cbxdept.Text) + '''');
      Open;
      iDepID := FieldByName('iDepID').Value;
      Close;
      Sql.Clear;
      Sql.Add('Update StaffInfo Set iDepID = :iDepID Where cSTaffID = :cStaffID');
    end;

    with GridStaff.DataSource.DataSet do
      for i := 0 to GridStaff.SelectedRows.Count - 1 do
      begin
        GotoBookmark(pointer(GridStaff.SelectedRows.Items[i]));
        MainFrm.ADOTmp.Parameters.ParamByName('iDepID').Value := iDepID;
        MainFrm.ADOTmp.Parameters.ParamByName('cStaffID').Value := StaffAllQrycSTaffID.Value;
        MainFrm.ADOTmp.ExecSql;
      end;

    StaffAllQry.Active := False;
    StaffAllQry.Active := True;
    StaffDeptQry.Active := False;
    StaffDeptQry.Active := True;
  end;
end;

procedure TRedePloyFrm.SBRemTrgClick(Sender: TObject);
var
  i, iDepID: Integer;
begin
  if GridDeptStaff.SelectedRows.Count > 0 then
  begin
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('Update StaffInfo Set iDepID = NULL Where cSTaffID = :cStaffID');
    end;

    with GridDeptStaff.DataSource.DataSet do
      for i := 0 to GridDeptStaff.SelectedRows.Count - 1 do
      begin
        GotoBookmark(pointer(GridDeptStaff.SelectedRows.Items[i]));
        MainFrm.ADOTmp.Parameters.ParamByName('cStaffID').Value := FieldByName('cSTaffID').Value;
        MainFrm.ADOTmp.ExecSql;
      end;

    RefreshQry(StaffAllQry);
    StaffDeptQry.Active := False;
    StaffDeptQry.Active := True;
  end;
end;

procedure TRedePloyFrm.GridStaffDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  SBRemTrgClick(Sender);
end;

procedure TRedePloyFrm.GridDeptStaffDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  SBAddToTrgClick(Sender);
end;

procedure TRedePloyFrm.GridDeptStaffDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TDBGridEh;
end;

procedure TRedePloyFrm.BtnFindClick(Sender: TObject);
begin
  if cbxDept.Text <> '' then
  begin
    with StaffAllQry do
    begin
      Close;
      Parameters.ParamByName('cDepName').Value := cbxDept.Text;
      Parameters.ParamByName('cName').Value := '%' + leName.Text + '%';
      open;
    end;
    with StaffDeptQry do
    begin
      Close;
      Parameters.ParamByName('cDepName').Value := cbxDept.Text;
      open;
    end;
  end
  else showMessage(MSG_DeptName_ERR);
end;

end.

