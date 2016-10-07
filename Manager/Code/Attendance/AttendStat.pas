unit AttendStat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGridEh, ExtCtrls, StdCtrls, DB, ADODB;

type
  TAttendStatFam = class(TFrame)
    ToolBar1: TToolBar;
    TBSum: TToolButton;
    TBPrn: TToolButton;
    PanelTitle: TPanel;
    DSAttendStat: TDataSource;
    Page: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GridList: TDBGridEh;
    Label1: TLabel;
    GridStat: TDBGridEh;
    Bevel1: TBevel;
    SDate: TDateTimePicker;
    EDate: TDateTimePicker;
    LeName: TLabeledEdit;
    cbxDept: TComboBox;
    Label9: TLabel;
    AttendListQry: TADOQuery;
    DataSource1: TDataSource;
    AttendStatQry: TADOQuery;
    procedure FrameEnter(Sender: TObject);
    procedure TBSumClick(Sender: TObject);
    procedure FrameCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure GridListDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure GridListTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure TBPrnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
uses Main, PubMessage;
{$R *.dfm}

procedure TAttendStatFam.FrameEnter(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  OnEnter := nil;
  Page.ActivePageIndex := 0;
  DeCodeDate(Date, Year, Month, Day);
  SDate.Date := EnCodeDate(Year, Month, 1);
  EDate.Date := Date;
  {Ìí¼Ó²¿ÃÅÁÐ±í}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cDepName From DepartInfo');
    Application.ProcessMessages;
    AddComBo(CbxDept, MainFrm.AdoTmp, False);
  end;
  TBSumClick(Sender);
end;

procedure TAttendStatFam.TBSumClick(Sender: TObject);
var
  I: integer;
begin
  if not OperRights(SYS_OPR_ID,'03009',SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  ProcessData(True);
  with AttendListQry do
  begin
    Close;
    Parameters.ParamByName('cDepName').Value := '%' + cbxDept.Text + '%';
    Parameters.ParamByName('SDate').Value := SDate.Date;
    Parameters.ParamByName('EDate').Value := EDate.Date;
    Open;
  end;
  ChgGridWidth(GridList);
  for I := 0 to GridList.Columns.Count - 1 do
    GridList.Columns[I].Title.TitleButton := True;
  with AttendStatQry do
  begin
    Close;
    Parameters.ParamByName('cDepName').Value := '%' + cbxDept.Text + '%';
    Parameters.ParamByName('Name').Value := '%' + leName.Text + '%';
    Parameters.ParamByName('SDate').Value := SDate.Date;
    Parameters.ParamByName('EDate').Value := EDate.Date;
    Open;
  end;
  for I := 0 to GridStat.Columns.Count - 1 do
    GridStat.Columns[I].Title.TitleButton := True;
  ChgGridWidth(GridStat);
  ProcessData(False);
end;

procedure TAttendStatFam.FrameCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  ChgGridWidth(GridList);
  ChgGridWidth(GridStat);
end;

procedure TAttendStatFam.GridListDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (AttendListQry.FieldByName('×´Ì¬').Value = '¿õ¹¤')
    or (AttendListQry.FieldByName('×´Ì¬').Value = 'Î´Ë¢¿¨') then
    (Sender as TDBGridEh).Canvas.Font.Color := clRed
  else if (AttendListQry.FieldByName('×´Ì¬').Value = '³Ùµ½')
    or (AttendListQry.FieldByName('×´Ì¬').Value = 'ÔçÍË') then
    (Sender as TDBGridEh).Canvas.Font.Color := clBlue
  else (Sender as TDBGridEh).Canvas.Font.Color := clGreen;
  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TAttendStatFam.GridListTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender,Column);
end;

procedure TAttendStatFam.TBPrnClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID,'03009',SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;

end;

end.

