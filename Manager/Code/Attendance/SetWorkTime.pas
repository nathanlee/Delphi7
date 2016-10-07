unit SetWorkTime;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, Db, DBTables, Spin, ADODB;

type
  TSetWorkTimeFrm = class(TForm)
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    cbxDept: TComboBox;
    Label1: TLabel;
    Page: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label2: TLabel;
    AMON1: TDateTimePicker;
    Label5: TLabel;
    PMON1: TDateTimePicker;
    Label4: TLabel;
    Label3: TLabel;
    AMOFF1: TDateTimePicker;
    PMOFF1: TDateTimePicker;
    Label7: TLabel;
    EDelay1: TSpinEdit;
    Label6: TLabel;
    PMOFF2: TDateTimePicker;
    AMOFF2: TDateTimePicker;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EDelay2: TSpinEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    AMON2: TDateTimePicker;
    PMON2: TDateTimePicker;
    PMOFF3: TDateTimePicker;
    AMOFF3: TDateTimePicker;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EDelay3: TSpinEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    AMON3: TDateTimePicker;
    PMON3: TDateTimePicker;
    PMOFF4: TDateTimePicker;
    AMOFF4: TDateTimePicker;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EDelay4: TSpinEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    AMON4: TDateTimePicker;
    PMON4: TDateTimePicker;
    PMOFF5: TDateTimePicker;
    AMOFF5: TDateTimePicker;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    EDelay5: TSpinEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    AMON5: TDateTimePicker;
    PMON5: TDateTimePicker;
    PMOFF6: TDateTimePicker;
    AMOFF6: TDateTimePicker;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    EDelay6: TSpinEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    AMON6: TDateTimePicker;
    PMON6: TDateTimePicker;
    PMOFF7: TDateTimePicker;
    AMOFF7: TDateTimePicker;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    EDelay7: TSpinEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    AMON7: TDateTimePicker;
    PMON7: TDateTimePicker;
    AMOC1: TCheckBox;
    AMFC1: TCheckBox;
    PMOC1: TCheckBox;
    PMFC1: TCheckBox;
    AMOC2: TCheckBox;
    PMOC2: TCheckBox;
    AMFC2: TCheckBox;
    PMFC2: TCheckBox;
    AMOC3: TCheckBox;
    PMOC3: TCheckBox;
    AMFC3: TCheckBox;
    PMFC3: TCheckBox;
    AMOC4: TCheckBox;
    PMOC4: TCheckBox;
    AMFC4: TCheckBox;
    PMFC4: TCheckBox;
    AMOC5: TCheckBox;
    PMOC5: TCheckBox;
    AMFC5: TCheckBox;
    PMFC5: TCheckBox;
    AMOC6: TCheckBox;
    PMOC6: TCheckBox;
    AMFC6: TCheckBox;
    PMFC6: TCheckBox;
    AMOC7: TCheckBox;
    PMOC7: TCheckBox;
    AMFC7: TCheckBox;
    PMFC7: TCheckBox;
    procedure BtnCanClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxDeptChange(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetWorkTimeFrm: TSetWorkTimeFrm;

implementation

{$R *.DFM}
uses Main, PubMessage;

procedure TSetWorkTimeFrm.BtnCanClick(Sender: TObject);
begin
  Close;
end;

procedure TSetWorkTimeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    Key := 0;
  end;
end;

procedure TSetWorkTimeFrm.FormCreate(Sender: TObject);
begin
  {添加部门列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cDepName From DepartInfo');
    Application.ProcessMessages;
    AddComBo(cbxDept, MainFrm.AdoTmp, False);
  end;
end;

procedure TSetWorkTimeFrm.cbxDeptChange(Sender: TObject);
var
  I, J: integer;
  ckName: string;
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.clear;
    Sql.Add('select T.* ');
    Sql.Add(' From departTime T,DepartInfo D ');
    Sql.Add(' Where T.iDepID = D.iDepID And D.cDepName = :cDepName ');
    Sql.Add(' Order By iWeekly');
    Parameters.ParamByName('cDepName').Value := CbxDept.Text;
    Open;
    while not eof do
    begin
      AMOn1.Time := StrToTime(FieldByName('cWorkAM').Value);
      AMoff1.Time := StrToTime(FieldByName('cOffAM').Value);
      PMOn1.Time := StrToTime(FieldByName('cWorkPM').Value);
      PMoff1.Time := StrToTime(FieldByName('cOffPM').Value);
      AMOC1.Checked := FieldByName('bWorkAM').AsBoolean;
      AMFC1.Checked := FieldByName('bOffAM').AsBoolean;
      PMOC1.Checked := FieldByName('bWorkPM').AsBoolean;
      PMFC1.Checked := FieldByName('bOffPM').AsBoolean;
      EDelay1.Value := FieldByName('iOutTime').Value;
      Next;
      AMOn2.Time := StrToTime(FieldByName('cWorkAM').Value);
      AMoff2.Time := StrToTime(FieldByName('cOffAM').Value);
      PMOn2.Time := StrToTime(FieldByName('cWorkPM').Value);
      PMoff2.Time := StrToTime(FieldByName('cOffPM').Value);
      AMOC2.Checked := FieldByName('bWorkAM').AsBoolean;
      AMFC2.Checked := FieldByName('bOffAM').AsBoolean;
      PMOC2.Checked := FieldByName('bWorkPM').AsBoolean;
      PMFC2.Checked := FieldByName('bOffPM').AsBoolean;
      EDelay2.Value := FieldByName('iOutTime').Value;
      Next;
      AMOn3.Time := StrToTime(FieldByName('cWorkAM').Value);
      AMoff3.Time := StrToTime(FieldByName('cOffAM').Value);
      PMOn3.Time := StrToTime(FieldByName('cWorkPM').Value);
      PMoff3.Time := StrToTime(FieldByName('cOffPM').Value);
      AMOC3.Checked := FieldByName('bWorkAM').AsBoolean;
      AMFC3.Checked := FieldByName('bOffAM').AsBoolean;
      PMOC3.Checked := FieldByName('bWorkPM').AsBoolean;
      PMFC3.Checked := FieldByName('bOffPM').AsBoolean;
      EDelay3.Value := FieldByName('iOutTime').Value;
      Next;
      AMOn4.Time := StrToTime(FieldByName('cWorkAM').Value);
      AMoff4.Time := StrToTime(FieldByName('cOffAM').Value);
      PMOn4.Time := StrToTime(FieldByName('cWorkPM').Value);
      PMoff4.Time := StrToTime(FieldByName('cOffPM').Value);
      AMOC4.Checked := FieldByName('bWorkAM').AsBoolean;
      AMFC4.Checked := FieldByName('bOffAM').AsBoolean;
      PMOC4.Checked := FieldByName('bWorkPM').AsBoolean;
      PMFC4.Checked := FieldByName('bOffPM').AsBoolean;
      EDelay4.Value := FieldByName('iOutTime').Value;
      Next;
      AMOn5.Time := StrToTime(FieldByName('cWorkAM').Value);
      AMoff5.Time := StrToTime(FieldByName('cOffAM').Value);
      PMOn5.Time := StrToTime(FieldByName('cWorkPM').Value);
      PMoff5.Time := StrToTime(FieldByName('cOffPM').Value);
      AMOC5.Checked := FieldByName('bWorkAM').AsBoolean;
      AMFC5.Checked := FieldByName('bOffAM').AsBoolean;
      PMOC5.Checked := FieldByName('bWorkPM').AsBoolean;
      PMFC5.Checked := FieldByName('bOffPM').AsBoolean;
      EDelay5.Value := FieldByName('iOutTime').Value;
      Next;
      AMOn6.Time := StrToTime(FieldByName('cWorkAM').Value);
      AMoff6.Time := StrToTime(FieldByName('cOffAM').Value);
      PMOn6.Time := StrToTime(FieldByName('cWorkPM').Value);
      PMoff6.Time := StrToTime(FieldByName('cOffPM').Value);
      AMOC6.Checked := FieldByName('bWorkAM').AsBoolean;
      AMFC6.Checked := FieldByName('bOffAM').AsBoolean;
      PMOC6.Checked := FieldByName('bWorkPM').AsBoolean;
      PMFC6.Checked := FieldByName('bOffPM').AsBoolean;
      EDelay6.Value := FieldByName('iOutTime').Value;
      Next;
      AMOn7.Time := StrToTime(FieldByName('cWorkAM').Value);
      AMoff7.Time := StrToTime(FieldByName('cOffAM').Value);
      PMOn7.Time := StrToTime(FieldByName('cWorkPM').Value);
      PMoff7.Time := StrToTime(FieldByName('cOffPM').Value);
      AMOC7.Checked := FieldByName('bWorkAM').AsBoolean;
      AMFC7.Checked := FieldByName('bOffAM').AsBoolean;
      PMOC7.Checked := FieldByName('bWorkPM').AsBoolean;
      PMFC7.Checked := FieldByName('bOffPM').AsBoolean;
      EDelay7.Value := FieldByName('iOutTime').Value;
      Next;
    end;
  end;
  if cbxDept.Text <> '' then
   Page.Enabled := True;
end;

procedure TSetWorkTimeFrm.BtnOKClick(Sender: TObject);
var
  i,iDepID: integer;

begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select iDepID From DepartInfo where cDepName = :cDepName');
    Parameters.ParamByName('cDepName').Value := cbxDept.Text;
    Open;
    iDepID := FieldByName('iDepID').Value;
    Sql.Clear;
    Sql.Add('Delete DepartTime where iDepID = :iDepID');
    Parameters.ParamByName('iDepID').Value := iDepID;
    ExecSql;
    Sql.Clear;
    Sql.Text := 'Insert Into DepartTime '
      + ' (iDepID,iWeekly,cWorkAM,bWorkAM,cOffAM,bOffAM,cWorkPM,bWorkPM,cOffPM,bOffPM,iOutTime) '
      + ' Values '
      + ' (:iDepID,:iWeekly,:dWorkAM,:bWorkAM,:dOffAM,:bOffAM,:dWorkPM,:bWorkPM,:dOffPM,:bOffPM,:iOutTime) ';
    Parameters.ParamByName('iDepID').Value := iDepID;
    {周日}
    I:= Integer(AMOFF1.Checked);
    Parameters.ParamByName('iWeekly').Value := 1;
    Parameters.ParamByName('dWorkAM').Value := TimeToStr(AMon1.Time);
    Parameters.ParamByName('bWorkAM').Value := AMOC1.Checked;
    Parameters.ParamByName('dOffAM').Value := TimeToStr(AMOff1.Time);
    Parameters.ParamByName('bOffAM').Value := AMFC1.Checked;
    Parameters.ParamByName('dWorkPM').Value := TimeToStr(PMon1.Time);
    Parameters.ParamByName('bWorkPM').Value := PMOC1.Checked;
    Parameters.ParamByName('dOffPM').Value := TimeToStr(PMOff1.Time);
    Parameters.ParamByName('bOffPM').Value := PMFC1.Checked;
    Parameters.ParamByName('iOutTime').Value := EDelay1.Value;
    ExecSql;
    {周一}
    Parameters.ParamByName('iWeekly').Value := 2;
    Parameters.ParamByName('dWorkAM').Value := TimeToStr(AMon2.Time);
    Parameters.ParamByName('bWorkAM').Value := AMOC2.Checked;
    Parameters.ParamByName('dOffAM').Value := TimeToStr(AMOff2.Time);
    Parameters.ParamByName('bOffAM').Value := AMFC2.Checked;
    Parameters.ParamByName('dWorkPM').Value := TimeToStr(PMon2.Time);
    Parameters.ParamByName('bWorkPM').Value := PMOC2.Checked;
    Parameters.ParamByName('dOffPM').Value := TimeToStr(PMOff2.Time);
    Parameters.ParamByName('bOffPM').Value := PMFC2.Checked;
    Parameters.ParamByName('iOutTime').Value := EDelay2.Value;
    ExecSql;
    {周二}
    Parameters.ParamByName('iWeekly').Value := 3;
    Parameters.ParamByName('dWorkAM').Value := TimeToStr(AMon3.Time);
    Parameters.ParamByName('bWorkAM').Value := AMOC3.Checked;
    Parameters.ParamByName('dOffAM').Value := TimeToStr(AMOff3.Time);
    Parameters.ParamByName('bOffAM').Value := AMFC3.Checked;
    Parameters.ParamByName('dWorkPM').Value := TimeToStr(PMon3.Time);
    Parameters.ParamByName('bWorkPM').Value := PMOC3.Checked;
    Parameters.ParamByName('dOffPM').Value := TimeToStr(PMOff3.Time);
    Parameters.ParamByName('bOffPM').Value := PMFC3.Checked;
    Parameters.ParamByName('iOutTime').Value := EDelay3.Value;
    ExecSql;
    {周三}
    Parameters.ParamByName('iWeekly').Value := 4;
    Parameters.ParamByName('dWorkAM').Value := TimeToStr(AMon4.Time);
    Parameters.ParamByName('bWorkAM').Value := AMOC4.Checked;
    Parameters.ParamByName('dOffAM').Value := TimeToStr(AMOff4.Time);
    Parameters.ParamByName('bOffAM').Value := AMFC4.Checked;
    Parameters.ParamByName('dWorkPM').Value := TimeToStr(PMon4.Time);
    Parameters.ParamByName('bWorkPM').Value := PMOC4.Checked;
    Parameters.ParamByName('dOffPM').Value := TimeToStr(PMOff4.Time);
    Parameters.ParamByName('bOffPM').Value := PMFC4.Checked;
    Parameters.ParamByName('iOutTime').Value := EDelay4.Value;
    ExecSql;
    {周四}
    Parameters.ParamByName('iWeekly').Value := 5;
    Parameters.ParamByName('dWorkAM').Value := TimeToStr(AMon5.Time);
    Parameters.ParamByName('bWorkAM').Value := AMOC5.Checked;
    Parameters.ParamByName('dOffAM').Value := TimeToStr(AMOff5.Time);
    Parameters.ParamByName('bOffAM').Value := AMFC5.Checked;
    Parameters.ParamByName('dWorkPM').Value := TimeToStr(PMon5.Time);
    Parameters.ParamByName('bWorkPM').Value := PMOC5.Checked;
    Parameters.ParamByName('dOffPM').Value := TimeToStr(PMOff5.Time);
    Parameters.ParamByName('bOffPM').Value := PMFC5.Checked;
    Parameters.ParamByName('iOutTime').Value := EDelay5.Value;
    ExecSql;
    {周五}
    Parameters.ParamByName('iWeekly').Value := 6;
    Parameters.ParamByName('dWorkAM').Value := TimeToStr(AMon6.Time);
    Parameters.ParamByName('bWorkAM').Value := AMOC6.Checked;
    Parameters.ParamByName('dOffAM').Value := TimeToStr(AMOff6.Time);
    Parameters.ParamByName('bOffAM').Value := AMFC6.Checked;
    Parameters.ParamByName('dWorkPM').Value := TimeToStr(PMon6.Time);
    Parameters.ParamByName('bWorkPM').Value := PMOC6.Checked;
    Parameters.ParamByName('dOffPM').Value := TimeToStr(PMOff6.Time);
    Parameters.ParamByName('bOffPM').Value := PMFC6.Checked;
    Parameters.ParamByName('iOutTime').Value := EDelay6.Value;
    ExecSql;
    {周六}
    Parameters.ParamByName('iWeekly').Value := 7;
    Parameters.ParamByName('dWorkAM').Value := TimeToStr(AMon7.Time);
    Parameters.ParamByName('bWorkAM').Value := AMOC7.Checked;
    Parameters.ParamByName('dOffAM').Value := TimeToStr(AMOff7.Time);
    Parameters.ParamByName('bOffAM').Value := AMFC7.Checked;
    Parameters.ParamByName('dWorkPM').Value := TimeToStr(PMon7.Time);
    Parameters.ParamByName('bWorkPM').Value := PMOC7.Checked;
    Parameters.ParamByName('dOffPM').Value := TimeToStr(PMOff7.Time);
    Parameters.ParamByName('bOffPM').Value := PMFC7.Checked;
    Parameters.ParamByName('iOutTime').Value := EDelay7.Value;
    ExecSql;
  end;
  ShowMessage(MSG_SAVE_DOON);
  CBxDept.SetFocus;
end;

procedure TSetWorkTimeFrm.FormActivate(Sender: TObject);
begin
  Page.ActivePageIndex := DayOfWeek(Date) - 1;
end;

end.

