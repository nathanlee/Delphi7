{**********************************
*ģ�����ƣ��ͻ���ѯģ��
*�汾��    0.1
*���ߣ�    ����
*��;��    ��ѯ��Ӧ�̡��ͻ���ҵ��Ա���ֿ���Ϣ
*���ڣ�    2003��8��24��
**********************************}
unit SerachCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGridEh,
  ADODB;

type
  TSerachCustFrm = class(TForm)
    BitBtn2: TBitBtn;
    BtnFind: TBitBtn;
    Page: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    LeName: TLabeledEdit;
    LeContact: TLabeledEdit;
    LeEMail: TLabeledEdit;
    LeTel: TLabeledEdit;
    LeWebPage: TLabeledEdit;
    LeCName: TLabeledEdit;
    LeCContact: TLabeledEdit;
    LECEmail: TLabeledEdit;
    LeCTel: TLabeledEdit;
    LECWebPage: TLabeledEdit;
    leStaffName: TLabeledEdit;
    LEStaffIDNo: TLabeledEdit;
    leStaffEMail: TLabeledEdit;
    LEStaffTel: TLabeledEdit;
    leStaffID: TLabeledEdit;
    GridProv: TDBGridEh;
    BtnAdd: TButton;
    BtnPre: TButton;
    BtnOK: TBitBtn;
    ProInfoQry: TADOQuery;
    DSPro: TDataSource;
    TabSheet4: TTabSheet;
    LeStkLinkMan: TLabeledEdit;
    leStkTel: TLabeledEdit;
    leStkAddr: TLabeledEdit;
    leStkName: TLabeledEdit;
    leProAddr: TLabeledEdit;
    LECAddr: TLabeledEdit;
    leStaffAddr: TLabeledEdit;
    TabSheet5: TTabSheet;
    LEArea: TLabeledEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnPreClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure ProInfoQryAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ID, Name: wideString;
  end;

var
  SerachCustFrm: TSerachCustFrm;


implementation

uses Main, PubMessage, AddProvInfo, AddStaff, AddStk, AddCustInfo, AddArea;

{$R *.DFM}

procedure TSerachCustFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) or (key = vk_down) then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;
  if key = vk_up then
  begin
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), 0, 0);
    keybd_event(VK_Tab, MapVirtualKey(VK_Tab, 0), KEYEVENTF_KEYUP, 0);
    keybd_event(VK_Shift, MapVirtualKey(VK_Shift, 0), KEYEVENTF_KEYUP, 0);
    key := 0;
  end;
end;

procedure TSerachCustFrm.FormCreate(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to Page.PageCount - 1 do
  begin
    Page.Pages[I].TabVisible := False;
  end;
end;

procedure TSerachCustFrm.BtnFindClick(Sender: TObject);
begin
  case Page.ActivePageIndex of
    0: {���ҹ�Ӧ��}
      with ProInfoQry do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'Select A.*, P.* '
          + 'From AreaInfo A,ProvInfo P '
          + '  where A.iAreaID = P.iAreaID '
          + ' And cProName like :cProName '
          + ' And cContact like :cContact '
          + ' And cTel like :cTel '
          + ' And cEmail like :cEMail '
          + ' And cAddr like :cAddr '
          + ' And cWebPage like :cWebPage ';
        Parameters.ParamByName('cProName').Value := '%' + leName.Text + '%';
        Parameters.ParamByName('cContact').Value := '%' + leContact.Text + '%';
        Parameters.ParamByName('cTel').Value := '%' + leTel.Text + '%';
        Parameters.ParamByName('cEmail').Value := '%' + leEmail.Text + '%';
        Parameters.ParamByName('cAddr').Value := '%' + leProAddr.Text + '%';
        Parameters.ParamByName('cWebPage').Value := '%' + leWebPage.Text + '%';
        Open;
        with GridProv do
        begin
          Columns.Clear;
          Columns.Add;
          Columns[0].Title.Caption := '��Ӧ�̱���';
          Columns[0].FieldName := 'cProID';
          Columns[0].Width := 80;
          Columns.Add;
          Columns[1].Title.Caption := '��Ӧ������';
          Columns[1].FieldName := 'cProName';
          Columns[1].Width := Width - Columns[0].Width - 21;
        end;
      end;
    1: {���ҿͻ�}
      with ProInfoQry do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'Select A.*, P.* '
          + 'From AreaInfo A,CustInfo P '
          + '  where A.iAreaID = P.iAreaID '
          + ' And cCustName like :cProName '
          + ' And cContact like :cContact '
          + ' And cTel like :cTel '
          + ' And cEmail like :cEMail '
          + ' And cAddr like :cAddr '
          + ' And cWebPage like :cWebPage ';
        Parameters.ParamByName('cProName').Value := '%' + leCName.Text + '%';
        Parameters.ParamByName('cContact').Value := '%' + leCContact.Text + '%';
        Parameters.ParamByName('cTel').Value := '%' + leCTel.Text + '%';
        Parameters.ParamByName('cEmail').Value := '%' + leCEmail.Text + '%';
        Parameters.ParamByName('cAddr').Value := '%' + leCAddr.Text + '%';
        Parameters.ParamByName('cWebPage').Value := '%' + leCWebPage.Text + '%';
        Open;
        with GridProv do
        begin
          Columns.Clear;
          Columns.Add;
          Columns[0].Title.Caption := '�ͻ�����';
          Columns[0].FieldName := 'cCustID';
          Columns[0].Width := 80;
          Columns.Add;
          Columns[1].Title.Caption := '�ͻ�����';
          Columns[1].FieldName := 'cCustName';
          Columns[1].Width := Width - Columns[0].Width - 21;
        end;
      end;
    2: {����ҵ��Ա}
      with ProInfoQry do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'Select * '
          + 'From StaffInfo '
          + '  where cStaffID Like :cStaffID '
          + ' And cName like :cName '
          + ' And cIDNo like :cIDNo '
          + ' And cTel like :cTel '
          + ' And cEmail like :cEMail '
          + ' And cAddr like :cAddr ';
        Parameters.ParamByName('cStaffID').Value := '%' + leStaffID.Text + '%';
        Parameters.ParamByName('cName').Value := '%' + leStaffName.Text + '%';
        Parameters.ParamByName('cIDNo').Value := '%' + leStaffIDNo.Text + '%';
        Parameters.ParamByName('cTel').Value := '%' + leStaffTel.Text + '%';
        Parameters.ParamByName('cEmail').Value := '%' + leStaffEmail.Text + '%';
        Parameters.ParamByName('cAddr').Value := '%' + leStaffAddr.Text + '%';
        Open;
        with GridProv do
        begin
          Columns.Clear;
          Columns.Add;
          Columns[0].Title.Caption := 'ҵ��Ա����';
          Columns[0].FieldName := 'cStaffID';
          Columns[0].Width := 80;
          Columns.Add;
          Columns[1].Title.Caption := '����';
          Columns[1].FieldName := 'cName';
          Columns[1].Width := Width - Columns[0].Width - 21;
        end;
      end;

    3: {���Ҳֿ�}
      with ProInfoQry do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'Select * '
          + 'From StkInfo '
          + '  where cStkName like :cStkName '
          + ' And cLinkMan like :cLinkMan '
          + ' And cAddr like :cAddr '
          + ' And cTel like :cTel ';
        Parameters.ParamByName('cStkName').Value := '%' + leStkName.Text + '%';
        Parameters.ParamByName('cLinkMan').Value := '%' + leStkLinkMan.Text + '%';
        Parameters.ParamByName('cTel').Value := '%' + leStkTel.Text + '%';
        Parameters.ParamByName('cAddr').Value := '%' + leStkAddr.Text + '%';
        Open;
        with GridProv do
        begin
          Columns.Clear;
          Columns.Add;
          Columns[0].Title.Caption := '�ֿ����';
          Columns[0].FieldName := 'iStkID';
          Columns[0].Width := 80;
          Columns.Add;
          Columns[1].Title.Caption := '�ֿ�����';
          Columns[1].FieldName := 'cStkName';
          Columns[1].Width := Width - Columns[0].Width - 21;
        end;
      end;

    4: {��������}
      with ProInfoQry do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'Select cAreaName '
          + 'From AreaInfo '
          + '  where cAreaName like :cAreaName ';
        Parameters.ParamByName('cAreaName').Value := '%' + leArea.Text + '%';
        Open;
        with GridProv do
        begin
          Columns.Clear;
          Columns.Add;
          Columns[0].Title.Caption := '��������';
          Columns[0].FieldName := 'cAreaName';
          Columns[0].Width := GridProv.Width - 21;
        end;
      end;
  end;
end;

procedure TSerachCustFrm.BtnAddClick(Sender: TObject);
begin
  case Page.ActivePageIndex of
    0: {�½���Ӧ��}
      begin
        Application.CreateForm(TAddProvFrm, AddProvFrm);
        with AddProvFrm do
        begin
          if not ProInfoQry.Eof then
            cbxArea.ItemIndex := cbxArea.Items.IndexOf(ProInfoQry.FieldByName('cAreaName').Value);
          OprType := True;
          ShowModal;
          Release;
        end;
      end;
    1: {�½��ͻ�}
      begin
        Application.CreateForm(TAddCustFrm, AddCustFrm);
        with AddCustFrm do
        begin
          if not ProInfoQry.Eof then
            cbxArea.ItemIndex := cbxArea.Items.IndexOf(ProInfoQry.FieldByName('cAreaName').Value);
          OprType := True;
          ShowModal;
          Release;
        end;
      end;
    2: {�½�ҵ��Ա}
      begin
        Application.CreateForm(TAddStaffFrm, AddStaffFrm);
        with AddStaffFrm do
        begin
          OprType := True;
          ShowModal;
          Release;
        end;
      end;
    3: {�½��ֿ�}
      begin
        Application.CreateForm(TAddStkFrm, AddStkFrm);
        with AddStkFrm do
        begin
          BOprType := True;
          ShowModal;
          Release;
        end;
      end;
    4: {�½�����}
      begin
        Application.CreateForm(TAddAreaFrm, AddAreaFrm);
        with AddAreaFrm do
        begin
          ShowModal;
          Release;
        end;
      end;

  end;
  refreshQry(ProInfoQry);
end;

procedure TSerachCustFrm.BtnPreClick(Sender: TObject);
begin
  case Page.ActivePageIndex of
    0: {�޸Ĺ�Ӧ��}
      begin
        Application.CreateForm(TAddProvFrm, AddProvFrm);
        with AddProvFrm do
        begin
          OprType := False;
          cbxArea.ItemIndex := cbxArea.Items.IndexOf(ProInfoQry.FieldByName('cAreaName').Value);
          leCode.Text := ProInfoQry.fieldByName('cProID').AsString;
          leName.Text := ProInfoQry.fieldByName('cProName').AsString;
          leContract.Text := ProInfoQry.fieldByName('cContact').AsString;
          leEmail.Text := ProInfoQry.fieldByName('cEmail').AsString;
          leTel.Text := ProInfoQry.fieldByName('cTel').AsString;
          leAddr.Text := ProInfoQry.fieldByName('cAddr').AsString;
          leWebPage.Text := ProInfoQry.FieldByName('cWebPage').AsString;
          leMainItem.Text := ProInfoQry.FieldByName('cMainItem').AsString;
          ShowModal;
          Release;
        end;
      end;
    1: {�޸Ŀͻ�}
      begin
        Application.CreateForm(TAddCustFrm, AddCustFrm);
        with AddCustFrm do
        begin
          OprType := False;
          cbxArea.ItemIndex := cbxArea.Items.IndexOf(ProInfoQry.FieldByName('cAreaName').Value);
          leCode.Text := ProInfoQry.fieldByName('cCustID').AsString;
          leName.Text := ProInfoQry.fieldByName('cCustName').AsString;
          leContract.Text := ProInfoQry.fieldByName('cContact').AsString;
          leEmail.Text := ProInfoQry.fieldByName('cEmail').AsString;
          leTel.Text := ProInfoQry.fieldByName('cTel').AsString;
          leAddr.Text := ProInfoQry.fieldByName('cAddr').AsString;
          leWebPage.Text := ProInfoQry.FieldByName('cWebPage').AsString;
          leMainItem.Text := ProInfoQry.FieldByName('cMainItem').AsString;
          ShowModal;
          Release;
        end;
      end;
    2: {ҵ��Ա����}
      begin
        Application.CreateForm(TAddStaffFrm, AddStaffFrm);
        with AddStaffFrm do
        begin
          OprType := False;
          LeCode.Text := ProInfoQry.FieldByName('cStaffID').Value;
          leName.Text := ProInfoQry.FieldByName('cName').Value;
          if ProInfoQry.FieldByName('iSex').Value then
            cbxSex.ItemIndex := 1
          else
            cbxSex.ItemIndex := 0;
          lePID.Text := ProInfoQry.FieldByName('cIDNo').Value;
          leTel.Text := ProInfoQry.FieldByName('cTel').Value;
          leEmail.Text := ProInfoQry.FieldByName('cEmail').Value;
          leAddr.Text := ProInfoQry.FieldByName('cAddr').Value;
          ShowModal;
          Release;
        end;
      end;
    3: {�޸Ĳֿ�����}
      begin
        Application.CreateForm(TAddStkFrm, AddStkFrm);
        with AddStkFrm do
        begin
          BOprType := False;
          iStkID := ProInfoQry.fieldByName('iStkID').Value;
          leStkName.Text := ProInfoQry.fieldByName('cStkName').Value;
          leStkLinkMan.Text := ProInfoQry.fieldByName('cLinkMan').Value;
          leStkTel.Text := ProInfoQry.fieldByName('cTel').Value;
          leStkAddr.Text := ProInfoQry.fieldByName('cAddr').Value;
          ShowModal;
          Release;
        end;
      end;

  end;
  refreshQry(ProInfoQry);
end;

procedure TSerachCustFrm.BtnOKClick(Sender: TObject);
begin
  case Page.ActivePageIndex of
    0: {ѡ�й�Ӧ��}
      begin
        ID := ProInfoQry.fieldByName('cProID').AsString;
        Name := ProInfoQry.fieldByName('cProName').AsString;
      end;
    1: {ѡ�пͻ�}
      begin
        ID := ProInfoQry.fieldByName('cCustID').AsString;
        Name := ProInfoQry.fieldByName('cCustName').AsString;
      end;
    2: {ѡ��ҵ��Ա}
      begin
        ID := ProInfoQry.fieldByName('cStaffID').AsString;
        Name := ProInfoQry.fieldByName('cName').AsString;
      end;
    3: {ѡ�вֿ�}
      begin
        ID := ProInfoQry.fieldByName('iStkID').AsString;
        Name := ProInfoQry.fieldByName('cStkName').AsString;
      end;
    4: {ѡ������}
      begin
        Name := ProInfoQry.fieldByName('cAreaName').AsString;
      end;
  end;
end;

procedure TSerachCustFrm.ProInfoQryAfterOpen(DataSet: TDataSet);
begin
  if Page.ActivePageIndex <> 4 then
    BtnPre.Enabled := (ProInfoQry.RecordCount > 0);
  BtnOK.Enabled := (ProInfoQry.RecordCount > 0);
end;

end.

