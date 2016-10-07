{******************************************************}
{模块名称：查找员工属性                                }
{版本：    0.1                                         }
{作者：    李振华                                      }
{用途：    员工管理                                    }
{日期：    2004年03月20日                              }
{******************************************************}
unit SerachStaff;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, StdCtrls, ExtCtrls,
  Forms, Buttons, Mask, Db, DBTables, Dialogs, ComCtrls, DBCtrls, ExtDlgs,
  Variants, ADODB;

type
  TSerachStaffFrm = class(TForm)
    Label1: TLabel;
    EStaffID: TMaskEdit;
    Label2: TLabel;
    EName: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CBXSex: TComboBox;
    Label5: TLabel;
    CBXDuty: TComboBox;
    Label6: TLabel;
    CBXCole: TComboBox;
    Label7: TLabel;
    EIDAddr: TEdit;
    Label8: TLabel;
    EIDNo: TEdit;
    LENation: TLabeledEdit;
    Label9: TLabel;
    cbxDept: TComboBox;
    LeAddr: TLabeledEdit;
    LETel: TLabeledEdit;
    LeEmail: TLabeledEdit;
    Label10: TLabel;
    BtnFind: TBitBtn;
    BitBtn1: TBitBtn;
    EBirthday: TEdit;
    EWorkTime: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OprFlag: Boolean; //True = Add user False = Update
  end;

var
  SerachStaffFrm: TSerachStaffFrm;

implementation

uses PubMessage, Main, StaffList;

{$R *.DFM}

procedure TSerachStaffFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    Key := 0;
  end;
end;

procedure TSerachStaffFrm.FormCreate(Sender: TObject);
begin
  {添加学历列表}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cColeName From CollegeInfo');
    Application.ProcessMessages;
    AddComBo(CbxCole, MainFrm.AdoTmp, False);
  {添加职务列表}
    Close;
    Sql.Clear;
    Sql.Add('Select cDutyName From DutyInfo');
    Application.ProcessMessages;
    AddComBo(CbxDuty, MainFrm.AdoTmp, False);
  {添加部门列表}
    Close;
    Sql.Clear;
    Sql.Add('Select cDepName From DepartInfo');
    Application.ProcessMessages;
    AddComBo(CbxDept, MainFrm.AdoTmp, False);
  end;

end;

procedure TSerachStaffFrm.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TSerachStaffFrm.BtnFindClick(Sender: TObject);
var
  lEnd, lStart: integer;
begin
  lStart := GetTickCount;
  with MainFrm.StaffList do
  begin
    Close;
    Parameters.ParamByName('cStaffID').Value := '%' + eStaffID.Text + '%';
    Parameters.ParamByName('cName').Value := '%' + eName.Text + '%';
    if cbxSex.Text <> '' then
      Parameters.ParamByName('iSex').Value := cbxSex.ItemIndex
    else
      Parameters.ParamByName('iSex').Value := '%';
    Parameters.ParamByName('dBirthday').Value := '%' + EBirthday.Text + '%';
    Parameters.ParamByName('cNation').Value := '%' + leNation.Text + '%';
    Parameters.ParamByName('cTel').Value := '%' + leTel.Text + '%';
    Parameters.ParamByName('cEMail').Value := '%' + leEMail.Text + '%';
    Parameters.ParamByName('cAddr').Value := '%' + leAddr.Text + '%';
    Parameters.ParamByName('cIDNo').Value := '%' + EIDNo.Text + '%';
    Parameters.ParamByName('cIDAddr').Value := '%' + EIDAddr.Text + '%';
    Parameters.ParamByName('dWorkTime').Value := '%' + EWorkTime.Text + '%';
    Parameters.ParamByName('cColeName').Value := '%' + cbxCole.Text + '%';
    Parameters.ParamByName('cDutyName').Value := '%' + cbxDuty.Text + '%';
    Parameters.ParamByName('cDepName').Value := '%' + cbxDept.Text + '%';
    Open;
  end;
  lEnd := GetTiCkCount;
  ShowHide('查询耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
  Close;
end;

end.

