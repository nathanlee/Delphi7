{******************************************************}
{ģ�����ƣ�ϵͳ��ɫ����Ȩ�޹���                        }
{�汾��    0.1                                         }
{���ߣ�    ����                                      }
{��;��    ����ϵͳ��ɫ����Ȩ��                        }
{���ڣ�    2004��05��4��                               }
{******************************************************}
unit DiaryList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrnDbgeh, Grids, DBGridEh, ExtCtrls, Menus, ComCtrls, ToolWin, StdCtrls,
  DB, ADODB;

type
  TDiaryListFam = class(TFrame)
    ToolBar1: TToolBar;
    PanelTitle: TPanel;
    TBDelete: TToolButton;
    Grid: TDBGridEh;
    DSDiary: TDataSource;
    DiaryList: TADOQuery;
    ToolButton1: TToolButton;
    procedure GridRoleTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure FrameEnter(Sender: TObject);
    procedure TBDeleteClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
  uses Main, PubMessage;
{$R *.dfm}


{�޸�Ա������}

procedure TDiaryListFam.GridRoleTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TDiaryListFam.FrameEnter(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04008', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end else WriteDiary(SYS_OPR_ID, '04008', SYS_SELECT);
  RefreshQry(DiaryList);
end;

procedure TDiaryListFam.TBDeleteClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04008', SYS_DELETE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end else WriteDiary(SYS_OPR_ID, '04008', SYS_DELETE);
  if Application.MessageBox(MSG_REALY_DELETE, MSG_APP_TITLE,
    MB_ICONQUESTION + mb_YesNo) = ID_Yes then
  begin
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Text := 'Truncate table OperDiary ';
      ExecSql;
    end;
    FrameEnter(Sender);
    ShowMessage(MSG_DELE_DOON);
  end;
end;

procedure TDiaryListFam.FrameResize(Sender: TObject);
begin
  ChgGridWidth(Grid);
end;

end.

