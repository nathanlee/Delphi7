unit AddAttendList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, Db, DBTables;

type
  TAddAttendListFrm = class(TForm)
    RG: TRadioGroup;
    Half: TDateTimePicker;
    cbxNoon: TComboBox;
    SDate: TDateTimePicker;
    EDate: TDateTimePicker;
    Lab: TLabel;
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    LabName: TLabel;
    cbxType: TComboBox;
    LeStaffID: TLabeledEdit;
    Label1: TLabel;
    procedure RGClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnCanClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure LeStaffIDExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Flag: integer; //3:出差 4：请假 5：休息
  end;

var
  AddAttendListFrm: TAddAttendListFrm;

implementation

uses PubMessage, Main, ADODB;

{$R *.DFM}

procedure TAddAttendListFrm.RGClick(Sender: TObject);
begin
  case RG.ItemIndex of
    0:
      begin
        Half.Visible := True;
        CbxNoon.Visible := True;
        SDate.Visible := False;
        EDate.Visible := False;
        Lab.Visible := False;
      end;
    1:
      begin
        Half.Visible := False;
        CBxNoon.Visible := False;
        SDate.Visible := True;
        EDate.Visible := True;
        Lab.Visible := True;
      end;
  end;
end;

procedure TAddAttendListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    Key := 0;
  end;
end;

procedure TAddAttendListFrm.FormCreate(Sender: TObject);
begin
  CBxNoon.ItemIndex := 0;
  Half.Date := Date;
  SDate.Date := Date;
  EDate.Date := Date + 1;
end;

procedure TAddAttendListFrm.BtnCanClick(Sender: TObject);
begin
  Close;
end;

procedure TAddAttendListFrm.BtnOKClick(Sender: TObject);
var
  I, J: Integer;
  TisDate: TDateTime;
begin
  case RG.ItemIndex of
    0:
      with MainFrm.ADOTmp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'Insert Into StaffAttendList (cStaffID,dCheckTime,cCheckStatue,cType,iOutTime,bApply) Values '
          + ' (:cStaffID,:dDate,:CheckStatus,:cType,0,0)';
          Parameters.ParamByName('cStaffID').Value := leStaffID.Text;
        Parameters.ParamByName('dDate').Value := Half.Date;
        Parameters.ParamByName('CheckStatus').Value := cbxNoon.ItemIndex;
        Parameters.ParamByName('cType').Value := IntToStr(Flag);
        ExecSql;
      end;
    1:
      begin
        TisDAte := SDate.Date;
        J := Round(EDate.Date - SDate.Date);
        for I := 0 to J do
        begin
          with MainFrm.ADOTmp do
          begin
            Close;
            Sql.Clear;
            Sql.Text := 'Insert Into StaffAttendList (cStaffID,dCheckTime,cCheckStatue,cType,iOutTime,bApply) Values '
              + ' (:cStaffID,:dDate,:CheckStatus,:cType,0,0)';
              Parameters.ParamByName('cStaffID').Value := leStaffID.Text;
            Parameters.ParamByName('dDate').Value :=
              StrToDate(DateToStr((TisDate + I))) + EnCodeTime(0, 0, 0, 0);
            Parameters.ParamByName('CheckStatus').Value := 2;//全天
            Parameters.ParamByName('cType').Value := IntToStr(Flag);
            ExecSql;
          end;
        end;
      end;
  end;
  ShowMessage(MSG_SAVE_DOON);
  Close;
end;

procedure TAddAttendListFrm.LeStaffIDExit(Sender: TObject);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cName From StaffInfo where cStaffID = :cStaffID');
    Parameters.ParamByName('cStaffID').Value := leStaffID.Text;
    Open;
    if not eof then
      labName.Caption := '姓名：' + FieldByName('cName').Value
    else
    begin
      ShowMessage(MSG_StaffID_ERR);
      leStaffID.SetFocus;
      Exit;
    end;
  end;
end;

end.

