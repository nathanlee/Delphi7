{******************************************************}
{模块名称：人事管理                                    }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    员工管理                                    }
{日期：    2004年03月20日                              }
{******************************************************}
unit StaffLeaveList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrnDbgeh, Grids, DBGridEh, ExtCtrls, Menus, ComCtrls, ToolWin, StdCtrls,
  DB, ADODB;

type
  TStaffLeaveListFam = class(TFrame)
    ToolBar1: TToolBar;
    TBFind: TToolButton;
    PanelTitle: TPanel;
    GridStaff: TDBGridEh;
    DSStaff: TDataSource;
    Label1: TLabel;
    LeName: TLabeledEdit;
    Label14: TLabel;
    Bevel7: TBevel;
    SDate: TDateTimePicker;
    EDate: TDateTimePicker;
    qryLeaveList: TADOQuery;
    procedure FrameCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FrameEnter(Sender: TObject);
    procedure TBFindClick(Sender: TObject);
    procedure GridStaffTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
  uses Main,PubMessage;
{$R *.dfm}

procedure TStaffLeaveListFam.FrameCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  ChgGridWidth(GridStaff);
end;

procedure TStaffLeaveListFam.FrameEnter(Sender: TObject);
var
  Year,Month,Day:Word;
begin
  DeCodeDate(Date,Year,Month,Day);
  SDate.Date := EnCodeDate(Year,Month,1);
  EDate.Date := Date;
  TBFindClick(Sender);
end;

procedure TStaffLeaveListFam.TBFindClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03002',SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
    with QryLeaveList do
    begin
      Close;
      Parameters.ParamByName('cName').Value := '%' + LeName.Text +'%';
      Parameters.ParamByName('sDate').Value := SDate.date;
      Parameters.ParamByName('eDate').Value := eDate.date;
      Open;
    end;

end;

procedure TStaffLeaveListFam.GridStaffTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender,Column);
end;

end.
