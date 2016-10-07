unit AddStaffLeave;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, StdCtrls, ExtCtrls,
  Forms, Buttons, Mask, Db, DBTables, Dialogs, ComCtrls, DBCtrls, ExtDlgs,
  Variants;

type
  TAddStaffLeaveFrm = class(TForm)
    Label1: TLabel;
    EStaffID: TMaskEdit;
    Label2: TLabel;
    EName: TEdit;
    Label3: TLabel;
    PDate: TDateTimePicker;
    GroupBox1: TGroupBox;
    PictureDialog: TOpenPictureDialog;
    Label7: TLabel;
    EIDAddr: TEdit;
    Label8: TLabel;
    EIDNo: TEdit;
    LENation: TLabeledEdit;
    LeAddr: TLabeledEdit;
    LETel: TLabeledEdit;
    LeEmail: TLabeledEdit;
    Label10: TLabel;
    Birthday: TDateTimePicker;
    BtnSave: TBitBtn;
    BitBtn2: TBitBtn;
    DBImage: TDBImage;
    leSex: TLabeledEdit;
    leCole: TLabeledEdit;
    LeDuty: TLabeledEdit;
    LeDept: TLabeledEdit;
    Label4: TLabel;
    LDate: TDateTimePicker;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure EStaffIDExit(Sender: TObject);
    procedure DBImageDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddStaffLeaveFrm: TAddStaffLeaveFrm;

implementation

uses PubMessage, Main, StaffList, ADODB;

{$R *.DFM}

procedure TAddStaffLeaveFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    Key := 0;
  end;
end;

procedure TAddStaffLeaveFrm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TAddStaffLeaveFrm.BtnSaveClick(Sender: TObject);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Update StaffInfo');
    Sql.Add('  Set dLeaveTime = :dLeaveTime');
    Sql.Add('  Where cStaffID = :cStaffID');
    Parameters.ParamByName('cStaffID').Value := eStaffID.Text;
    Parameters.ParamByName('dLeaveTime').Value := LDate.Date;
    ExecSql;
  end;
  ShowMessage(MSG_SAVE_DOON);
  Close;
end;

procedure TAddStaffLeaveFrm.EStaffIDExit(Sender: TObject);
begin
  {判断编码是否没有重复}
  if length(eStaffID.Text) = 7 then
    with MainFrm.ADOTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select S.*,');
      Sql.Add('    Sex=case S.iSex when 1 then ''女'' else ''男'' end,');
      Sql.Add('    cColeName,cDutyName,cDepName ');
      Sql.Add('  From StaffInfo S,DutyInfo T,CollegeInfo C,DepartInfo D ');
      Sql.Add('    Where S.iDepID *= D.iDepID');
      Sql.Add('      And S.iColeID *= C.iColeID And S.iDutyID *= T.iDutyID');
      Sql.Add('      And S.cStaffID = :cStaffID');
      Parameters.ParamByName('cStaffID').Value := eStaffID.Text;
      Open;
      if not eof then
      begin
        eStaffID.Text := FieldByName('cStaffID').Value;
        eName.Text := FieldByName('cName').Value;
        leSex.Text := FieldByName('Sex').Value;
        Birthday.date := FieldByName('dBirthday').Value;
        leNation.Text := FieldByName('cNation').Value;
        leTel.Text := FieldByName('cTel').Value;
        leEMail.Text := FieldByName('cEMail').Value;
        leAddr.Text := FieldByName('cAddr').Value;
        EIDNo.Text := FieldByName('cIDNo').Value;
        EIDAddr.Text := FieldByName('cIDAddr').Value;
        PDate.Date := FieldByName('dWorkTime').Value;
        leCole.Text := FieldByName('cColeName').AsString;
        leDuty.Text := FieldByName('cDutyName').AsString;
        leDept.Text := FieldByName('cDepName').AsString;
        LDate.SetFocus;
      end;
    end;
end;

procedure TAddStaffLeaveFrm.DBImageDblClick(Sender: TObject);
begin
  if PictureDialog.Execute then
    DBImage.Picture.LoadFromFile(PictureDialog.FileName);
end;

procedure TAddStaffLeaveFrm.FormCreate(Sender: TObject);
begin
  LDate.Date := Date;
end;

end.

