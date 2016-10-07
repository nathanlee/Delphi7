unit SerachList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ADODB, DB, ExtCtrls;

type
  TSerachListFrm = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    BDate: TDateTimePicker;
    EDate: TDateTimePicker;
    SBProv: TSpeedButton;
    Label3: TLabel;
    EISN: TEdit;
    CbxProv: TComboBox;
    SBPrdtID: TSpeedButton;
    EPrdtName: TEdit;
    SBStk: TSpeedButton;
    CBXStk: TComboBox;
    EVNo: TEdit;
    SBStaff: TSpeedButton;
    SBOpr: TSpeedButton;
    Label2: TLabel;
    CbxStaff: TComboBox;
    CBXOpr: TComboBox;
    BtnFind: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BtnFindClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SBProvClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pages: Integer;
  end;

var
  SerachListFrm: TSerachListFrm;

implementation

{$R *.dfm}
uses Main, SerachCust, PubMessage, SetPrdt;

procedure TSerachListFrm.BtnFindClick(Sender: TObject);
var
  lEnd: integer;
  lStart: integer;
begin
  lStart := GetTickCount;
  {}
  case Pages of
    0: {�ɹ�}
      with MainFrm.IHeadQry do
      begin
        Close;
        Parameters.ParamByName('sDate').Value := BDate.Date;
        Parameters.ParamByName('eDate').Value := EDate.Date;
        Parameters.ParamByName('cSN').Value := '%' + EiSN.text + '%';
        if CbxStk.text = 'ȫ��' then
          Parameters.ParamByName('cStkName').Value := '%'
        else
          Parameters.ParamByName('cStkName').Value := '%' + CbxStk.text + '%';
        if CbxStaff.text = 'ȫ��' then
          Parameters.ParamByName('cStaffName').Value := '%'
        else
          Parameters.ParamByName('cStaffName').Value := '%' + CbxStaff.text + '%';
        if CbxOpr.text = 'ȫ��' then
          Parameters.ParamByName('cOprName').Value := '%'
        else
          Parameters.ParamByName('cOprName').Value := '%' + CbxOpr.text + '%';
        Parameters.ParamByName('cPrdtName').Value := '%' + EPrdtName.text + '%'; ;
        if CbxProv.text = 'ȫ��' then
          Parameters.ParamByName('cProName').Value := '%'
        else
          Parameters.ParamByName('cProName').Value := '%' + cbxProv.text + '%';
        Open;
        RefreshQry(MainFrm.IListQry);
      end;
    1: {����}
      with MainFrm.OHeadQry do
      begin
        Close;
        Parameters.ParamByName('sDate').Value := BDate.Date;
        Parameters.ParamByName('eDate').Value := EDate.Date;
        Parameters.ParamByName('cSN').Value := '%' + EiSN.text + '%';
        if CbxStk.text = 'ȫ��' then
          Parameters.ParamByName('cStkName').Value := '%'
        else
          Parameters.ParamByName('cStkName').Value := '%' + CbxStk.text + '%';
        if CbxStaff.text = 'ȫ��' then
          Parameters.ParamByName('cStaffName').Value := '%'
        else
          Parameters.ParamByName('cStaffName').Value := '%' + CbxStaff.text + '%';
        if CbxOpr.text = 'ȫ��' then
          Parameters.ParamByName('cOprName').Value := '%'
        else
          Parameters.ParamByName('cOprName').Value := '%' + CbxOpr.text + '%';
        Parameters.ParamByName('cPrdtName').Value := '%' + EPrdtName.text + '%'; ;
        if CbxProv.text = 'ȫ��' then
          Parameters.ParamByName('cCustName').Value := '%'
        else
          Parameters.ParamByName('cCustName').Value := '%' + cbxProv.text + '%';
        Open;
          RefreshQry(MainFrm.OListQry);
      end;
    2: {�ɹ��˻�}
      with MainFrm.IRHeadQry do
      begin
        Close;
        Parameters.ParamByName('sDate').Value := BDate.Date;
        Parameters.ParamByName('eDate').Value := EDate.Date;
        Parameters.ParamByName('cSN').Value := '%' + EiSN.text + '%';
        if CbxStk.text = 'ȫ��' then
          Parameters.ParamByName('cStkName').Value := '%'
        else
          Parameters.ParamByName('cStkName').Value := '%' + CbxStk.text + '%';
        if CbxOpr.text = 'ȫ��' then
          Parameters.ParamByName('cOprName').Value := '%'
        else
          Parameters.ParamByName('cOprName').Value := '%' + CbxOpr.text + '%';
        Parameters.ParamByName('cPrdtName').Value := '%' + EPrdtName.text + '%'; ;
        if CbxProv.text = 'ȫ��' then
          Parameters.ParamByName('cProName').Value := '%'
        else
          Parameters.ParamByName('cProName').Value := '%' + cbxProv.text + '%';
        Open;
          RefreshQry(MainFrm.IRListQry);
      end;
    3: {�����˻�}
      with MainFrm.ORHeadQry do
      begin
        Close;
        Parameters.ParamByName('sDate').Value := BDate.Date;
        Parameters.ParamByName('eDate').Value := EDate.Date;
        Parameters.ParamByName('cSN').Value := '%' + EiSN.text + '%';
        if CbxStk.text = 'ȫ��' then
          Parameters.ParamByName('cStkName').Value := '%'
        else
          Parameters.ParamByName('cStkName').Value := '%' + CbxStk.text + '%';
        if CbxOpr.text = 'ȫ��' then
          Parameters.ParamByName('cOprName').Value := '%'
        else
          Parameters.ParamByName('cOprName').Value := '%' + CbxOpr.text + '%';
        Parameters.ParamByName('cPrdtName').Value := '%' + EPrdtName.text + '%'; ;
        if CbxProv.text = 'ȫ��' then
          Parameters.ParamByName('cCustName').Value := '%'
        else
          Parameters.ParamByName('cCustName').Value := '%' + cbxProv.text + '%';
        Open;
          RefreshQry(MainFrm.ORListQry);
      end;
    4: {�ڲ�����}
      with MainFrm.MHeadQry do
      begin
        Close;
        Parameters.ParamByName('sDate').Value := BDate.Date;
        Parameters.ParamByName('eDate').Value := EDate.Date;
        Parameters.ParamByName('cSN').Value := '%' + EiSN.text + '%';
        if CbxOpr.text = 'ȫ��' then
          Parameters.ParamByName('cOprName').Value := '%'
        else
          Parameters.ParamByName('cOprName').Value := '%' + CbxOpr.text + '%';
        Parameters.ParamByName('cPrdtName').Value := '%' + EPrdtName.text + '%'; ;
        Open;
        if not eof then
          RefreshQry(MainFrm.MListQry);
      end;
    5: {�ڲ�����}
      with MainFrm.ChkHeadQry do
      begin
        Close;
        Parameters.ParamByName('sDate').Value := BDate.Date;
        Parameters.ParamByName('eDate').Value := EDate.Date;
        Parameters.ParamByName('cSN').Value := '%' + EiSN.text + '%';
        if CbxOpr.text = 'ȫ��' then
          Parameters.ParamByName('cOprName').Value := '%'
        else
          Parameters.ParamByName('cOprName').Value := '%' + CbxOpr.text + '%';
        Parameters.ParamByName('cPrdtName').Value := '%' + EPrdtName.text + '%'; ;
        Open;
          RefreshQry(MainFrm.ChkListQry);
      end;
  end;
  lEnd := GetTiCkCount;
  ShowHide('��ѯ��ʱ��' + FloatToStr((lEnd - lStart) / 1000.0) + '��');
  Close;
end;

procedure TSerachListFrm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TSerachListFrm.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  deCodeDate(date,Year,Month,day);
  BDate.Date := EnCodeDate(Year, Month, 1); //��ʼ����
  EDate.Date := EnCodeDate(Year, Month, Day);
  {��Ӳֿ���Ϣ}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cStkName From StkInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxStk, MainFrm.AdoTmp, True);
  {���ҵ��Ա��Ϣ}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cName From StaffInfo where bOpr <> 1');
  end;
  Application.ProcessMessages;
  AddComBo(CbxStaff, MainFrm.AdoTmp, True);
  {����Ƶ�Ա��Ϣ}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cName From StaffInfo where bOpr = 1');
  end;
  Application.ProcessMessages;
  AddComBo(CbxOpr, MainFrm.AdoTmp, True);

end;

procedure TSerachListFrm.SBProvClick(Sender: TObject);
begin
  {��ѯ��Ӧ����Ϣ}
  if (Sender = SBProv) and
    ((Pages = 0) or (Pages = 2)) then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 0;
      Page.Pages[0].TabVisible := True;
      BtnAdd.Caption := '�½���Ӧ��(&W)';
      BtnFindClick(Sender);
      ShowModal;
      if Name <> '' then
        cbxProv.Text := Name;
      Release;
    end;
  end;
  {��ѯ�ͻ���Ϣ}
  if (Sender = SBProv) and
    ((Pages = 0) or (Pages = 2)) then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 1;
      Page.Pages[1].TabVisible := True;
      BtnAdd.Caption := '�½��ͻ�(&W)';
      BtnFindClick(Sender);
      ShowModal;
      if Name <> '' then
        cbxProv.Text := Name;
      Release;
    end;
  end;
  {��ѯ�ֿ���Ϣ}
  if (sender = SBStk) then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 3;
      Page.Pages[3].TabVisible := True;
      BtnAdd.Caption := '�½��ֿ�(&W)';
      BtnFindClick(Sender);
      ShowModal;
      if Name <> '' then
        cbxStk.Text := Name;
      Release;
    end;
  end;
  {��ѯ��Ʒ���}
  if (sender = SBPrdtID) then
  begin
    Application.CreateForm(TSetPrdtFrm, SetPrdtFrm);
    with SetPrdtFrm do
    begin
      BtnSel.Enabled := True;
      ShowModal;
      if PrdtID <> '' then
      begin
        {��Ʒ�ɹ����ѡ��}
        EPrdtName.Text := PrdtQry.FieldByName('cName').AsString;
      end;
      Release;
    end;
  end;

end;

procedure TSerachListFrm.FormActivate(Sender: TObject);
begin
  {��ӹ�Ӧ���б�}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    if (Pages = 0) or (Pages = 2) then
      Sql.Add('Select cProName From ProvInfo')
    else
    begin
      Sql.Add('Select cCustName From CustInfo');
      SBProv.Caption := '�ͻ�����';
    end;
  end;
  Application.ProcessMessages;
  AddComBo(CbxProv, MainFrm.AdoTmp, True);
end;

end.

