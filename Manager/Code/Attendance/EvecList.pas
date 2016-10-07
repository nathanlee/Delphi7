unit EvecList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGridEh, ExtCtrls, StdCtrls, DB, ADODB;

type
  TEvecListFam = class(TFrame)
    ToolBar1: TToolBar;
    TBPrn: TToolButton;
    PanelTitle: TPanel;
    DSAttendStat: TDataSource;
    LabTitle: TLabel;
    Bevel1: TBevel;
    SDate: TDateTimePicker;
    EDate: TDateTimePicker;
    LeName: TLabeledEdit;
    cbxDept: TComboBox;
    Label9: TLabel;
    GridList: TDBGridEh;
    TBOff: TToolButton;
    TBAppove: TToolButton;
    TBCancel: TToolButton;
    LeaveListQry: TADOQuery;
    TBFind: TToolButton;
    procedure FrameEnter(Sender: TObject);
    procedure FrameCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure TBFindClick(Sender: TObject);
    procedure TBAppoveClick(Sender: TObject);
    procedure GridListDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure TBCancelClick(Sender: TObject);
    procedure TBOffClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
  uses Main, PubMessage, AddAttendList;
{$R *.dfm}

procedure TEvecListFam.FrameEnter(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  OnEnter := nil;
  DeCodeDate(Date, Year, Month, Day);
  SDate.Date := EnCodeDate(Year, Month, 1);
  EDate.Date := Date;
  {添加部门列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cDepName From DepartInfo');
    Application.ProcessMessages;
    AddComBo(CbxDept, MainFrm.AdoTmp, False);
  end;
  TBFindClick(Sender);
end;

procedure TEvecListFam.FrameCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  ChgGridWidth(GridList);
end;

procedure TEvecListFam.TBFindClick(Sender: TObject);
begin
  with LeaveListQry do
  begin
    Close;
    Parameters.ParamByName('cDepName').Value := '%' + cbxDept.Text + '%';
    Parameters.ParamByName('SDate').Value := SDate.Date;
    Parameters.ParamByName('EDate').Value := EDate.Date;
    Open;
  end;

end;

procedure TEvecListFam.TBAppoveClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03006',SYS_VOUCH) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Application.MessageBox('确认审批这个申请吗？', MSG_APP_TITLE,
    MB_ICONQUESTION + mb_YesNo) = ID_Yes then
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Update StaffAttendList ');
    Sql.Add('    Set bApply = 1 ');
    Sql.Add('  Where iSN = :iSN ');
    Parameters.ParamByName('iSN').Value := LeaveListQry.fieldByName('iSN').Value;
    ExecSql;
    RefreshQry(LeaveListQry);
  end;
end;

procedure TEvecListFam.GridListDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   if not LeaveListQry.FieldByName('审批').Value then
    (Sender as TDBGridEh).Canvas.Font.Color := clRed;
  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TEvecListFam.TBCancelClick(Sender: TObject);
begin
  if Application.MessageBox('确认撤销这个申请吗？', MSG_APP_TITLE,
    MB_ICONQUESTION + mb_YesNo) = ID_Yes then
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Delete StaffAttendList ');
    Sql.Add('  Where iSN = :iSN ');
    Parameters.ParamByName('iSN').Value := LeaveListQry.fieldByName('iSN').Value;
    ExecSql;
    RefreshQry(LeaveListQry);
  end;
end;

procedure TEvecListFam.TBOffClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03006',SYS_INSERT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TAddAttendListFrm, AddAttendListFrm);
  with AddAttendListFrm do
  begin
    Flag := 3; //出差
    cbxType.ItemIndex := flag - 3;
    ShowModal;
    Free;
  end;
  RefreshQry(LeaveListQry);
end;

end.

