{****************************************************}
{���ܣ�������������                                }
{�������ڣ�2003.08.01                                }
{���ߣ�Nathan Lee                                    }
{����޸����ڣ�                                      }
{                                                    }
{                                                    }
{������ݿ���־���������ݿ�                          }
{backup log unioncom with no_log                     }
{dbcc shrinkdatabase(unioncom)                       }
{ 094771                                             }
{****************************************************}
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, fcClearPanel, fcButtonGroup, fcOutlookBar,
  Menus, ToolWin, fcOutlookList, fcButton, fcImgBtn, fcShapeBtn, ImgList,
  Grids, DBGridEh, ADODB, DB, StdCtrls, Buttons, EhLibADO, PrnDbgeh,
  fcdbtreeview, fcTreeHeader;

type
  TMainFrm = class(TForm)
    MainMenu: TMainMenu;
    A1: TMenuItem;
    T1: TMenuItem;
    H1: TMenuItem;
    OutlookBar: TfcOutlookBar;
    fcOutlookBar1OutlookList1: TfcOutlookList;
    List: TfcShapeBtn;
    fcOutlookBar1OutlookList2: TfcOutlookList;
    Report: TfcShapeBtn;
    fcOutlookBar1OutlookList3: TfcOutlookList;
    Setting: TfcShapeBtn;
    CoolBar1: TCoolBar;
    ImageOutLook: TImageList;
    ADOConn: TADOConnection;
    ToolBar1: TToolBar;
    TBNew: TToolButton;
    TBUpdate: TToolButton;
    ImageBtn: TImageList;
    TBPrnList: TToolButton;
    TBDel: TToolButton;
    TBVou: TToolButton;
    ToolBar2: TToolBar;
    TBSum: TToolButton;
    TBPrn: TToolButton;
    TBFind: TToolButton;
    ADOTmp: TADOQuery;
    DSIHead: TDataSource;
    iListQry: TADOQuery;
    DSIList: TDataSource;
    S1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    TypeQry: TADOQuery;
    DSType: TDataSource;
    BrandQry: TADOQuery;
    DSBrand: TDataSource;
    PrdtQry: TADOQuery;
    dsPrdt: TDataSource;
    N9: TMenuItem;
    DSArea: TDataSource;
    AreaQry: TADOQuery;
    DSPro: TDataSource;
    ProInfoQry: TADOQuery;
    N7: TMenuItem;
    N14: TMenuItem;
    DSCust: TDataSource;
    CustInfoQry: TADOQuery;
    DSStaff: TDataSource;
    StaffQry: TADOQuery;
    StaffQrycStaffID: TStringField;
    StaffQrycName: TStringField;
    StaffQryiSex: TBooleanField;
    StaffQrycTel: TStringField;
    StaffQrycEmail: TStringField;
    StaffQrycAddr: TStringField;
    StaffQrycIDNo: TStringField;
    DSIRHead: TDataSource;
    IRHeadQry: TADOQuery;
    DSIRList: TDataSource;
    IRListQry: TADOQuery;
    DSOHead: TDataSource;
    OHeadQry: TADOQuery;
    DSOList: TDataSource;
    OListQry: TADOQuery;
    DSORHead: TDataSource;
    ORHeadQry: TADOQuery;
    ORListQry: TADOQuery;
    DSORList: TDataSource;
    DSMHead: TDataSource;
    MHeadQry: TADOQuery;
    DSMList: TDataSource;
    MListQry: TADOQuery;
    DSChkHead: TDataSource;
    ChkHeadQry: TADOQuery;
    DSChkList: TDataSource;
    ChkListQry: TADOQuery;
    Panel14: TPanel;
    Page: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    GridIList: TDBGridEh;
    GridIHead: TDBGridEh;
    Panel2: TPanel;
    SBIProv: TSpeedButton;
    IBDate: TDateTimePicker;
    IEDate: TDateTimePicker;
    TabSheet2: TTabSheet;
    Splitter7: TSplitter;
    GridOHead: TDBGridEh;
    GridOList: TDBGridEh;
    TabSheet3: TTabSheet;
    Splitter6: TSplitter;
    GridIRList: TDBGridEh;
    GridRIHead: TDBGridEh;
    TabSheet4: TTabSheet;
    Splitter8: TSplitter;
    GridRSHead: TDBGridEh;
    GridRSList: TDBGridEh;
    TabSheet5: TTabSheet;
    Splitter9: TSplitter;
    GridMHead: TDBGridEh;
    GRIDMList: TDBGridEh;
    TabSheet6: TTabSheet;
    Splitter10: TSplitter;
    GridCHead: TDBGridEh;
    GridCList: TDBGridEh;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet7: TTabSheet;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Splitter3: TSplitter;
    GridBrand: TDBGridEh;
    GridType: TDBGridEh;
    TabSheet13: TTabSheet;
    Splitter5: TSplitter;
    Panel4: TPanel;
    GridProv: TDBGridEh;
    DBGridEh6: TDBGridEh;
    TabSheet14: TTabSheet;
    Splitter4: TSplitter;
    Panel5: TPanel;
    GridCust: TDBGridEh;
    DBGridEh5: TDBGridEh;
    TabSheet15: TTabSheet;
    GridStaff: TDBGridEh;
    PanelTitle: TPanel;
    Label3: TLabel;
    EISN: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Panel6: TPanel;
    SBSCust: TSpeedButton;
    Label2: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    OBDate: TDateTimePicker;
    OEDate: TDateTimePicker;
    EOSN: TEdit;
    Panel3: TPanel;
    SBIRProv: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Bevel3: TBevel;
    IRBDate: TDateTimePicker;
    IREDate: TDateTimePicker;
    EIRSN: TEdit;
    Panel11: TPanel;
    SBSRCust: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Bevel4: TBevel;
    SRBDate: TDateTimePicker;
    SREDate: TDateTimePicker;
    ESRSN: TEdit;
    Panel12: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel5: TBevel;
    MBDate: TDateTimePicker;
    MEDate: TDateTimePicker;
    EMSN: TEdit;
    Panel13: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel6: TBevel;
    CBDate: TDateTimePicker;
    CEDate: TDateTimePicker;
    ECSN: TEdit;
    SBCStk: TSpeedButton;
    Panel15: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Bevel7: TBevel;
    SBSIStk: TSpeedButton;
    SIBDate: TDateTimePicker;
    SIEDate: TDateTimePicker;
    GridSIList: TDBGridEh;
    SBSIProv: TSpeedButton;
    CBXSIType: TComboBox;
    SBSIPrdtID: TSpeedButton;
    ESIPrdtID: TEdit;
    P_StatIList: TADOStoredProc;
    CbxIProv: TComboBox;
    CBXIRProv: TComboBox;
    CBXSCust: TComboBox;
    CBXSRCust: TComboBox;
    CBXCStk: TComboBox;
    CbxSIStk: TComboBox;
    CBXSIProv: TComboBox;
    SBSIPType: TSpeedButton;
    CBXSIPType: TComboBox;
    SBSIPBrand: TSpeedButton;
    CBXSIPBrand: TComboBox;
    Panel16: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Bevel8: TBevel;
    SBSSStk: TSpeedButton;
    SBSSCust: TSpeedButton;
    SBSSPrdtID: TSpeedButton;
    SBSSPType: TSpeedButton;
    SBSSPBrand: TSpeedButton;
    SSBDate: TDateTimePicker;
    SSEDate: TDateTimePicker;
    CbxSSType: TComboBox;
    ESSPrdtID: TEdit;
    CbxSSStk: TComboBox;
    CbxSSCust: TComboBox;
    CBXSSPType: TComboBox;
    CBXSSPBrand: TComboBox;
    GridSSList: TDBGridEh;
    PageRet: TPageControl;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    Panel17: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Bevel9: TBevel;
    SBSIRStk: TSpeedButton;
    SBSIRProv: TSpeedButton;
    SBSIRPrdtID: TSpeedButton;
    SBSIRPType: TSpeedButton;
    SBSIRPBrand: TSpeedButton;
    SSIRBDate: TDateTimePicker;
    SSIREDate: TDateTimePicker;
    CBXSIRType: TComboBox;
    ESIRPrdtID: TEdit;
    CbxSIRStk: TComboBox;
    CBXSIRProv: TComboBox;
    CBXSIRPType: TComboBox;
    CBXSIRPBrand: TComboBox;
    GridSIRList: TDBGridEh;
    Panel18: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Bevel10: TBevel;
    SBSSRStk: TSpeedButton;
    SBSSRCust: TSpeedButton;
    SBSSRPrdtID: TSpeedButton;
    SBSSRPType: TSpeedButton;
    SBSSRPBrand: TSpeedButton;
    SSRBDate: TDateTimePicker;
    SSREDate: TDateTimePicker;
    CbxSSRType: TComboBox;
    ESSRPrdtID: TEdit;
    CBXSSRStk: TComboBox;
    CBXSSRCust: TComboBox;
    CBXSSRPType: TComboBox;
    CBXSSRPBrand: TComboBox;
    GridSSRList: TDBGridEh;
    Panel19: TPanel;
    SBSStk: TSpeedButton;
    SBSPrdtID: TSpeedButton;
    SBSPType: TSpeedButton;
    SBSPBrand: TSpeedButton;
    SDate: TDateTimePicker;
    ESPrdtID: TEdit;
    CBXSStk: TComboBox;
    CBXSPType: TComboBox;
    CBXSPBrand: TComboBox;
    GridStockList: TDBGridEh;
    Panel20: TPanel;
    Label24: TLabel;
    Bevel12: TBevel;
    SBJStk: TSpeedButton;
    SBJPrdtID: TSpeedButton;
    SBJPType: TSpeedButton;
    SBJPBrand: TSpeedButton;
    JBDate: TDateTimePicker;
    JEDate: TDateTimePicker;
    EJPrdtID: TEdit;
    CBXJStk: TComboBox;
    CBXJPType: TComboBox;
    CBXJPBrand: TComboBox;
    GridJXCList: TDBGridEh;
    NShowPanel: TMenuItem;
    DStatI: TDataSource;
    DStatS: TDataSource;
    P_StatSList: TADOStoredProc;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    Panel21: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Bevel11: TBevel;
    SBSMOStk: TSpeedButton;
    SBSMPrdtID: TSpeedButton;
    SBSMPType: TSpeedButton;
    SBSMPBrand: TSpeedButton;
    SMBDate: TDateTimePicker;
    SMEDate: TDateTimePicker;
    CBXSMType: TComboBox;
    ESMPrdtID: TEdit;
    CBXSMOStk: TComboBox;
    CBXSMPType: TComboBox;
    CBXSMPBrand: TComboBox;
    GridSMList: TDBGridEh;
    Panel22: TPanel;
    Label23: TLabel;
    Label25: TLabel;
    Bevel13: TBevel;
    SBSCStk: TSpeedButton;
    SBSCPrdtID: TSpeedButton;
    SBSCPType: TSpeedButton;
    SBSCPBrand: TSpeedButton;
    SCBDate: TDateTimePicker;
    SCEDate: TDateTimePicker;
    CBXSCType: TComboBox;
    ESCPrdtID: TEdit;
    CBXSCStk: TComboBox;
    CBXSCPType: TComboBox;
    CBXSCPBrand: TComboBox;
    GridSCList: TDBGridEh;
    DStatUni: TDataSource;
    P_StatUnIList: TADOStoredProc;
    P_StatUnSList: TADOStoredProc;
    DStatUnS: TDataSource;
    SBSMTStk: TSpeedButton;
    CBXsmtstk: TComboBox;
    DStatM: TDataSource;
    P_StatMList: TADOStoredProc;
    DStatC: TDataSource;
    P_StatCList: TADOStoredProc;
    Label26: TLabel;
    DStock: TDataSource;
    P_StatStock: TADOStoredProc;
    DSJXC: TDataSource;
    P_JXC: TADOStoredProc;
    PrnEh: TPrintDBGridEh;
    N1: TMenuItem;
    N3: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    PopFindMenu: TPopupMenu;
    N13: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    PopAddMenu: TPopupMenu;
    PA0: TMenuItem;
    PA1: TMenuItem;
    PA2: TMenuItem;
    PA3: TMenuItem;
    PA4: TMenuItem;
    PA5: TMenuItem;
    IHeadQry: TADOQuery;
    SBar: TStatusBar;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    Panel7: TPanel;
    Header: TfcTreeHeader;
    DBTV: TfcDBTreeView;
    ChildPrdtQry: TADOQuery;
    dsChild: TDataSource;
    PopPrdt: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure fcOutlookBar1OutlookList1ItemClick(
      OutlookList: TfcCustomOutlookList; Item: TfcOutlookListItem);
    procedure FormCreate(Sender: TObject);
    procedure TBNewClick(Sender: TObject);
    procedure TBFindClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TBUpdateClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure GridTypeEnter(Sender: TObject);
    procedure GridTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TBDelClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N5Click(Sender: TObject);
    procedure GridProvColWidthsChanged(Sender: TObject);
    procedure GridStaffColWidthsChanged(Sender: TObject);
    procedure StaffQryiSexGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure N6Click(Sender: TObject);
    procedure SBIProvClick(Sender: TObject);
    procedure CBXSIPTypeChange(Sender: TObject);
    procedure NShowPanelClick(Sender: TObject);
    procedure TBSumClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure TBPrnClick(Sender: TObject);
    procedure TBPrnListClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure PageResize(Sender: TObject);
    procedure IHeadQryAfterScroll(DataSet: TDataSet);
    procedure PA0Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure GridIHeadTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure GridOHeadDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure DBTVCalcNodeAttributes(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure DBTVUserExpand(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure MenuItem1Click(Sender: TObject);
    procedure HeaderSectionClick(HeaderControl: TfcTreeHeader;
      Section: TfcTreeHeaderSection);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
    lastds: TDataSource; //Ѱ���¼������õ�DataSource
    NextLevel: Boolean; //�Ƿ�����¼�����
    OldSection: TfcTreeHeaderSection;
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;
  {ˢ�¶�Ӧҳ����������}
procedure RefreshData;

implementation


{$R *.dfm}
uses PubMessage, AddPrdt, AddStaff, AddProvInfo, SetPrdt,
  AddType, AddBrand, SerachCust, StockInto, unStockInto,
  AddCustInfo, SaleInto, unSaleInto, MoveInto, CheckInto,
  SetStock, QRStockList, QRSaleList, SerachList, cAbout,
  Login, chgpsd, RegSoft, MainOption;


{***************************************************************}
{OutLook��  �������                                           }
{ 6, 7, 8, 9, 10, 11, 12�ǵ��ݴ��������Ǳ���ͻ�������        }
{***************************************************************}

procedure TMainFrm.fcOutlookBar1OutlookList1ItemClick(
  OutlookList: TfcCustomOutlookList; Item: TfcOutlookListItem);
begin
  case OutLookList.Items[Item.Index].Tag of
    6, 7, 8, 9, 10, 11, 12: CoolBar1.Bands[1].Visible := True;
  else CoolBar1.Bands[1].Visible := False;
  end;
  CoolBar1.Bands[0].Visible := not CoolBar1.Bands[1].Visible;
  Application.ProcessMessages;
  Page.ActivePageIndex := OutLookList.Items[Item.Index].Tag;
  case Page.ActivePageIndex of
    0: PanelTitle.Caption := '��ⵥ';
    1: PanelTitle.Caption := '���ⵥ';
    2: PanelTitle.Caption := '�ɹ��˻���';
    3: PanelTitle.Caption := '�����˻���';
    4: PanelTitle.Caption := '��Ʒ������';
    5: PanelTitle.Caption := '����̵㵥';

    6: PanelTitle.Caption := '�ɹ�ͳ�Ʊ�';
    7: PanelTitle.Caption := '����ͳ�Ʊ�';
    8: PanelTitle.Caption := '�˻�ͳ�Ʊ�';
    9: PanelTitle.Caption := '����ͳ�Ʊ�';
    10: PanelTitle.Caption := '�̵�ͳ�Ʊ�';
    11: PanelTitle.Caption := '�տ��ͳ�Ʊ�';
    12: PanelTitle.Caption := '������ͳ�Ʊ�';

    13: PanelTitle.Caption := '��Ʒ�����';
    14: PanelTitle.Caption := '��Ӧ�̱����';
    15: PanelTitle.Caption := '�ͻ������';
    16: PanelTitle.Caption := 'ҵ��Ա�����';

  end;
  RefreshData;
  PageResize(Page);
end;

{***************************************************************}
{��ʼ�����������ݿ�                                             }
{                                                               }
{***************************************************************}

procedure TMainFrm.FormCreate(Sender: TObject);
var
  I: integer;
  Year, Month, Day: Word;
begin
  SYS_OPR_ID := ParamStr(1);
  SYS_OPR_NAME := ParamStr(2);
  Caption := MSG_APP_TITLE + '-' + Caption;
  Application.ProcessMessages;
  WindowState := wsMaximized;
  {�������ݿ�}
  case DBConnect of
    -1:
      begin
        ShowMessage('������в��������ļ�������');
        Application.Terminate;
      end;
    0:
      begin
        ShowMessage('���ݿ��޷�����,���������ļ�����������');
        Application.Terminate;
      end;
  end;
  {���������յĸ�ʽ}
  DateSeparator := '-';
  ShortDateFormat := 'YYYY-MM-DD';
  LongDateFormat := 'YYYY��MM��DD��';
  TwoDigitYearCenturyWindow := 70;
  DecodeDate(Date, Year, Month, Day);
  {ȡ������ʾ��ʽ}
  with AdoTmp do
  begin
    Sql.Clear;
    Sql.Add('Select iDigital From ConstValue');
    Open;
    if (not eof) and (FieldByName('iDigital').Value > 0) then
    begin
      QTY_DIG_FRT := SYS_QTY_FORMAT + '.';
      for I := 1 to FieldByName('iDigital').Value do
        QTY_DIG_FRT := QTY_DIG_FRT + '0';
    end
    else QTY_DIG_FRT := SYS_QTY_FORMAT;
  end;
  {����ҳ���ʼ��}
  {��ӹ�Ӧ���б�}
  with AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cProName From ProvInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxIProv, AdoTmp, True); //��ⵥ
  AddCombo(CbxIRProv, AdoTmp, True); //�ɹ��˻���
  AddCombo(cbxSIProv, AdoTmp, True); //�ɹ�ͳ��
  AddCombo(cbxSIRProv, AdoTmp, True); //�ɹ��˻�ͳ��

  {��ӿͻ��б�}
  with AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cCustName From CustInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxSCust, AdoTmp, True); //���۵�
  AddCombo(CbxSRCust, AdoTmp, True); //�����˻���
  AddCombo(CbxSSCust, AdoTmp, True); //����ͳ��
  AddCombo(CbxSSRCust, AdoTmp, True); //�����˻�ͳ��

  {��Ӳֿ���Ϣ}
  with AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cStkName From StkInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxcStk, AdoTmp, True); //�̵㵥
  AddComBo(CbxSIStk, AdoTmp, True); //���ͳ��
  AddComBo(CbxSSStk, AdoTmp, True); //����ͳ��
  AddComBo(CbxSIRStk, AdoTmp, True); //����˻�ͳ��
  AddComBo(CbxSSRStk, AdoTmp, True); //�����˻�ͳ��
  AddComBo(CbxSMOStk, AdoTmp, True); //��Ʒ����ͳ��Դ�ֿ�
  AddComBo(CbxSMTStk, AdoTmp, True); //��Ʒ����ͳ��Ŀ��ֿ�
  AddComBo(CbxSCStk, AdoTmp, True); //��Ʒ�̵�ͳ��
  AddComBo(CbxSStk, AdoTmp, True); //���ͳ��
  AddComBo(CbxJStk, AdoTmp, True); //������ͳ��

  {�����Ʒ���}
  with AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cTypeAbbr From PrdtType');
  end;
  Application.ProcessMessages;
  AddCombo(CBXSIPType, AdoTmp, True); //���ͳ��
  AddCombo(CBXSSPType, AdoTmp, True); //����ͳ��
  AddCombo(CBXSIRPType, AdoTmp, True); //����˻�ͳ��
  AddCombo(CBXSSRPType, AdoTmp, True); //�����˻�ͳ��
  AddCombo(CBXSMPType, AdoTmp, True); //��Ʒ����ͳ��
  AddCombo(CBXSCPType, AdoTmp, True); //�̵�ͳ��
  AddComBo(CbxSPType, AdoTmp, True); //���ͳ��
  AddComBo(CbxJPType, AdoTmp, True); //������ͳ��

  {��ʼ������}
  Application.ProcessMessages;
  iBDate.Date := EnCodeDate(Year, Month, 1); //��ⵥ��ʼ����
  iEDate.Date := EnCodeDate(Year, Month, Day);
  OBDate.Date := iBDate.date; //���ⵥ��ʼ����
  OEDate.Date := iEDate.date;
  IRBDate.Date := iBDate.date; //����˻�����ʼ����
  IREDate.Date := iEDate.date;
  SRBDate.Date := iBDate.date; //�����˻�����ʼ����
  SREDate.Date := iEDate.date;
  MBDate.Date := iBDate.date; //��������ʼ����
  MEDate.Date := iEDate.date;
  CBDate.Date := iBDate.date; //�̵㵥��ʼ����
  CEDate.Date := iEDate.date;
  SiBDate.Date := iBDate.Date; //���ͳ�Ƴ�ʼ����
  SiEDate.Date := iEDate.Date;
  SSBDate.Date := iBDate.Date; //����ͳ�Ƴ�ʼ����
  SSEDate.Date := iEDate.Date;
  SSIRBDate.Date := iBDate.Date; //����˻�ͳ�Ƴ�ʼ����
  SSIREDate.Date := iEDate.Date;
  SSRBDate.Date := iBDate.Date; //�����˻�ͳ�Ƴ�ʼ����
  SSREDate.Date := iEDate.Date;
  SMBDate.Date := iBDate.Date; //����ͳ�Ƴ�ʼ����
  SMEDate.Date := iEDate.Date;
  SCBDate.Date := iBDate.Date; //�̵�ͳ�Ƴ�ʼ����
  SCEDate.Date := iEDate.Date;
  SDate.Date := Date; //���ͳ�Ƴ�ʼ����
  JBDate.Date := iBDate.Date; //������ͳ�Ƴ�ʼ����
  JEDate.Date := iEDate.Date;
  {��ʼ��ͳ������}
  CBXSIType.ItemIndex := 0; //���ͳ�Ƴ�ʼ����
  CBXSSType.ItemIndex := 0; //����ͳ�Ƴ�ʼ����
  CBXSIRType.ItemIndex := 0; //����˻�ͳ�Ƴ�ʼ����
  CBXSSRType.ItemIndex := 0; //�����˻�ͳ�Ƴ�ʼ����
  CBXSMType.ItemIndex := 0; //����ͳ�Ƴ�ʼ����
  CBXSCType.ItemIndex := 0; //�̵�ͳ�Ƴ�ʼ����
  {����ҳ���ʼ��}
  OutLookBar.ActivePage := List;
  for I := 0 to Page.PageCount - 1 do
  begin
    Page.Pages[I].TabVisible := False;
  end;
  Page.ActivePageIndex := 0;
  PageRet.ActivePageIndex := 0;
   {����������ʾ��ʽ}
  GridIList.Columns[3].DisplayFormat := QTY_DIG_FRT; //��ⵥ��ʽ
  GridOList.Columns[3].DisplayFormat := QTY_DIG_FRT; //���ⵥ��ʽ
  GridIRList.Columns[3].DisplayFormat := QTY_DIG_FRT; //����˻�����ʽ
  GridRSList.Columns[3].DisplayFormat := QTY_DIG_FRT; //�����˻�����ʽ
  GridMList.Columns[3].DisplayFormat := QTY_DIG_FRT; //��������ʽ
  GridCList.Columns[3].DisplayFormat := QTY_DIG_FRT; //�̵㵥��ʽ
  GridCList.Columns[4].DisplayFormat := QTY_DIG_FRT; //�̵㵥��ʽ
  GridCList.Columns[5].DisplayFormat := QTY_DIG_FRT; //�̵㵥��ʽ

  OldSection := Header.Sections[0];

end;

{***************************************************************}
{��������                                                       }
{                                                               }
{***************************************************************}

procedure TMainFrm.TBNewClick(Sender: TObject);
begin
  //�ж�ע����
  if not f343834djdf398 then
  begin
    if f345iiuko83748(2) then
    begin
      Application.MessageBox(MSG_VERSION_DATE_OUT, MSG_APP_TITLE, MB_OK + MB_ICONWARNING);
      exit;
    end;
  end;
  case Page.ActivePageIndex of
    0: {������ⵥ}
      if not OperRights(SYS_OPR_ID, '01001', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TStockIntoFrm, StockIntoFrm);
        with StockIntoFrm do
        begin
          OprFlag := True;
          ShowModal;
          Free;
        end;
      end;
    1: {���ӳ��ⵥ}
      if not OperRights(SYS_OPR_ID, '01002', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TSaleIntoFrm, SaleIntoFrm);
        with SaleIntoFrm do
        begin
          OprFlag := True;
          ShowModal;
          Free;
        end;
      end;
    2: {��������˻���}
      if not OperRights(SYS_OPR_ID, '01003', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TunStockIntoFrm, unStockIntoFrm);
        with unStockIntoFrm do
        begin
          OprFlag := True;
          ShowModal;
          Release;
        end;
      end;
    3: {���ӳ����˻���}
      if not OperRights(SYS_OPR_ID, '01004', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TunSaleIntoFrm, unSaleIntoFrm);
        with unSaleIntoFrm do
        begin
          OprFlag := True;
          ShowModal;
          Release;
        end;
      end;
    4: {������Ʒ������}
      if not OperRights(SYS_OPR_ID, '01005', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TMoveIntoFrm, MoveIntoFrm);
        with MoveIntoFrm do
        begin
          OprFlag := True;
          ShowModal;
          Release;
        end;
      end;
    5: {���ӿ���̵㵥}
      if not OperRights(SYS_OPR_ID, '01006', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TCheckIntoFrm, CheckIntoFrm);
        with CheckIntoFrm do
        begin
          OprFlag := True;
          ShowModal;
          Release;
        end;
      end;
    13: {��Ʒ���������}
      if not OperRights(SYS_OPR_ID, '01015', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
      {�����������}
        if GridType.TitleFont.Style = [fsBold] then
        begin
          Application.CreateForm(TAddTypeFrm, AddTypeFrm);
          with AddTypeFrm do
          begin
            BOprType := True;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.TypeQry);
          GridType.SetFocus;
        end;
      {����Ʒ�����}
        if GridBrand.TitleFont.Style = [fsBold] then
        begin
          Application.CreateForm(TAddBrandFrm, AddBrandFrm);
          with AddBrandFrm do
          begin
            BOprType := True;
            cTypeID := TypeQry.FieldByName('cTypeID').AsString;
            ShowModal;
            Release;
          end;
          GridBrand.SetFocus;
          RefreshQry(MainFrm.BrandQry);
        end;
  {������Ʒ���}
        if Header.Font.Style = [fsBold] then
        begin
          Application.CreateForm(TAddPrdtFrm, AddPrdtFrm);
          with AddPrdtFrm do
          begin
            BOprType := True;
            cTypeID := TypeQry.FieldByName('cTypeID').AsString;
            cBrandID := BrandQry.FieldByName('cBrandID').AsString;
            LeName.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
            if NextLevel then
              cParentID := DBTV.ActiveNode.DataSet.FieldByName('cPrdtID').AsString;
            ShowModal;
            Release;
          end;
          NextLevel := False;
          DBTV.SetFocus;
          RefreshQry(MainFrm.PrdtQry);
        end;
      end;
    14: {��Ӧ�̵�����}
      if not OperRights(SYS_OPR_ID, '01016', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TAddProvFrm, AddProvFrm);
        with AddProvFrm do
        begin
          if not AreaQry.Eof then
            cbxArea.ItemIndex := cbxArea.Items.IndexOf(AreaQry.FieldByName('cAreaName').Value);
          OprType := True;
          ShowModal;
          Release;
        end;
      end;
    15: {�ͻ�������}
      if not OperRights(SYS_OPR_ID, '01017', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TAddCustFrm, AddCustFrm);
        with AddCustFrm do
        begin
          if not AreaQry.Eof then
            cbxArea.ItemIndex := cbxArea.Items.IndexOf(AreaQry.FieldByName('cAreaName').Value);
          OprType := True;
          ShowModal;
          Release;
        end;
      end;
    16: {ҵ��Ա������}
      if not OperRights(SYS_OPR_ID, '01018', SYS_INSERT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end
      else
      begin
        Application.CreateForm(TAddStaffFrm, AddStaffFrm);
        with AddStaffFrm do
        begin
          OprType := True;
          ShowModal;
          Release;
        end;
      end;
  end;
  refreshData;
end;

{***************************************************************}
{����                                                           }
{                                                               }
{***************************************************************}

procedure TMainFrm.TBFindClick(Sender: TObject);
begin
  case MainFrm.Page.ActivePageIndex of
    0: if not OperRights(SYS_OPR_ID, '01001', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else refreshData;
    1: if not OperRights(SYS_OPR_ID, '01002', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else refreshData;

    2: if not OperRights(SYS_OPR_ID, '01003', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else refreshData;
    3: if not OperRights(SYS_OPR_ID, '01004', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else refreshData;
    4: if not OperRights(SYS_OPR_ID, '01005', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else refreshData;
    5: if not OperRights(SYS_OPR_ID, '01006', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else refreshData;

    13: {��Ʒ��������}
      N4Click(Sender);
    14: {��Ӧ����Ϣ����}
      N5Click(Sender);
    15: {�ͻ���Ϣ����}
      N6Click(Sender);
  end;
end;

{***************************************************************}
{��������                                                       }
{                                                               }
{***************************************************************}

procedure TMainFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {��ݼ����}
  if (Shift = [ssCtrl]) and (Key = Ord('N')) then
    TBNewClick(Sender);
  {��ݼ��޸�}
  if (Shift = [ssCtrl]) and (Key = Ord('U')) then
    TBUpdateClick(Sender);
  {��ݼ���ӡ}
  if (Shift = [ssCtrl]) and (Key = Ord('P')) then
    TBPrnListClick(Sender);
  {��ݼ�ɾ��}
  if (Shift = [ssCtrl]) and (Key = VK_Delete) then
    TBDelClick(Sender);
  {��ݼ���ѯ}
  if (Shift = [ssCtrl]) and (Key = Ord('F')) then
    TBFindClick(Sender);
  if key = vk_return then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    key := 0;
  end;
end;

{***************************************************************}
{�޸Ĳ���                                                       }
{                                                               }
{***************************************************************}

procedure TMainFrm.TBUpdateClick(Sender: TObject);
begin
  case Page.ActivePageIndex of
    0: {�޸���ⵥ}
      if not OperRights(SYS_OPR_ID, '01001', SYS_UPDATE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        if IHeadQry.RecordCount > 0 then
        begin
          Application.CreateForm(TStockIntoFrm, StockIntoFrm);
          with StockIntoFrm do
          begin
            OprFlag := False;
            LabelNo.Caption := IHeadQry.fieldByName('cSN').AsString;
            MDate.Date := IHeadQry.fieldByName('dHapdDate').Value;
            eStk.Text := IHeadQry.fieldByName('cStkName').AsString;
            LStkID.Caption := IHeadQry.fieldByName('iStkID').AsString; ;
            eStaff.Text := IHeadQry.fieldByName('cName').AsString;
            LStaffID.Caption := IHeadQry.fieldByName('cStaffID').AsString; ;
            eProv.Text := IHeadQry.fieldByName('cProName').AsString;
            LProvID.Caption := IHeadQry.fieldByName('cProID').AsString;
            LabMaker.Caption := LabMaker.Caption + ' ' + IHeadQry.fieldByName('OprName').AsString;
            MRemark.Text := IHeadQry.fieldByName('cRemark').AsString;
            RNo := IHeadQry.fieldByName('iSNo').AsInteger;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.IHeadQry);
        end;
    1: {�޸ĳ��ⵥ}
      if not OperRights(SYS_OPR_ID, '01002', SYS_UPDATE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        if OHeadQry.RecordCount > 0 then
        begin
          Application.CreateForm(TSaleIntoFrm, SaleIntoFrm);
          with SaleIntoFrm do
          begin
            OprFlag := False;
            LabelNo.Caption := OHeadQry.fieldByName('cSN').AsString;
            MDate.Date := OHeadQry.fieldByName('dHapdDate').Value;
            eStk.Text := OHeadQry.fieldByName('cStkName').AsString;
            LStkID.Caption := OHeadQry.fieldByName('iStkID').AsString; ;
            eStaff.Text := OHeadQry.fieldByName('cName').AsString;
            LStaffID.Caption := OHeadQry.fieldByName('cStaffID').AsString; ;
            eProv.Text := OHeadQry.fieldByName('cCustName').AsString;
            LProvID.Caption := OHeadQry.fieldByName('cCustID').AsString;
            LabMaker.Caption := LabMaker.Caption + ' ' + OHeadQry.fieldByName('OprName').AsString;
            MRemark.Text := OHeadQry.fieldByName('cRemark').AsString;
            RNo := OHeadQry.fieldByName('iSNo').AsInteger;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.OHeadQry);
        end;
    2: {�޸�����˻���}
      if not OperRights(SYS_OPR_ID, '01003', SYS_UPDATE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        if IRHeadQry.RecordCount > 0 then
        begin
          Application.CreateForm(TunStockIntoFrm, unStockIntoFrm);
          with unStockIntoFrm do
          begin
            OprFlag := False;
            LabelNo.Caption := IRHeadQry.fieldByName('cSN').AsString;
            MDate.Date := IRHeadQry.fieldByName('dHapdDate').Value;
            eStk.Text := IRHeadQry.fieldByName('cStkName').AsString;
            LStkID.Caption := IRHeadQry.fieldByName('iStkID').AsString; ;
            eProv.Text := IRHeadQry.fieldByName('cProName').AsString;
            LProvID.Caption := IRHeadQry.fieldByName('cProID').AsString;
            LabMaker.Caption := LabMaker.Caption + ' ' + IRHeadQry.fieldByName('OprName').AsString;
            MRemark.Text := IRHeadQry.fieldByName('cRemark').AsString;
            RNo := IRHeadQry.fieldByName('iSNo').AsInteger;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.IRHeadQry);
        end;
    3: {���ӳ����˻���}
      if not OperRights(SYS_OPR_ID, '01004', SYS_UPDATE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        if ORHeadQry.RecordCount > 0 then
        begin
          Application.CreateForm(TunSaleIntoFrm, unSaleIntoFrm);
          with unSaleIntoFrm do
          begin
            OprFlag := False;
            LabelNo.Caption := ORHeadQry.fieldByName('cSN').AsString;
            MDate.Date := ORHeadQry.fieldByName('dHapdDate').Value;
            eStk.Text := ORHeadQry.fieldByName('cStkName').AsString;
            LStkID.Caption := ORHeadQry.fieldByName('iStkID').AsString; ;
            eProv.Text := ORHeadQry.fieldByName('cCustName').AsString;
            LProvID.Caption := ORHeadQry.fieldByName('cCustID').AsString;
            LabMaker.Caption := LabMaker.Caption + ' ' + ORHeadQry.fieldByName('OprName').AsString;
            MRemark.Text := ORHeadQry.fieldByName('cRemark').AsString;
            RNo := ORHeadQry.fieldByName('iSNo').AsInteger;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.ORHeadQry);
        end;
    4: {�޸���Ʒ������}
      if not OperRights(SYS_OPR_ID, '01005', SYS_UPDATE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        if MHeadQry.RecordCount > 0 then
        begin
          Application.CreateForm(TMoveIntoFrm, MoveIntoFrm);
          with MoveIntoFrm do
          begin
            OprFlag := False;
            LabelNo.Caption := MHeadQry.fieldByName('cSN').AsString;
            MDate.Date := MHeadQry.fieldByName('dHapdDate').Value;
            eOStk.Text := MHeadQry.fieldByName('cOStkName').AsString;
            LOStkID.Caption := MHeadQry.fieldByName('iOStkID').AsString;
            eTStk.Text := MHeadQry.fieldByName('cTStkName').AsString;
            LTStkID.Caption := MHeadQry.fieldByName('iTStkID').AsString;
            LabMaker.Caption := LabMaker.Caption + ' ' + MHeadQry.fieldByName('OprName').AsString;
            MRemark.Text := MHeadQry.fieldByName('cRemark').AsString;
            RNo := MHeadQry.fieldByName('iSNo').AsInteger;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.MHeadQry);
        end;
    5: {�޸Ŀ���̵㵥}
      if not OperRights(SYS_OPR_ID, '01006', SYS_UPDATE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        if ChkHeadQry.RecordCount > 0 then
        begin
          Application.CreateForm(TCheckIntoFrm, CheckIntoFrm);
          with CheckIntoFrm do
          begin
            OprFlag := False;
            LabelNo.Caption := ChkHeadQry.fieldByName('cSN').AsString;
            MDate.Date := ChkHeadQry.fieldByName('dHapdDate').Value;
            eStk.Text := ChkHeadQry.fieldByName('cStkName').AsString;
            LStkID.Caption := ChkHeadQry.fieldByName('iStkID').AsString;
            LabMaker.Caption := LabMaker.Caption + ' ' + ChkHeadQry.fieldByName('OprName').AsString;
            MRemark.Text := ChkHeadQry.fieldByName('cRemark').AsString;
            RNo := ChkHeadQry.fieldByName('iSNo').AsInteger;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.ChkHeadQry);
        end;
    13: {��Ʒ���������}
      begin
        if not OperRights(SYS_OPR_ID, '01015', SYS_UPDATE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
       {���������޸�}
          if GridType.TitleFont.Style = [fsBold] then
          begin
            Application.CreateForm(TAddTypeFrm, AddTypeFrm);
            with AddTypeFrm do
            begin
              BOprType := False;
              EID.Text := TypeQry.FieldByName('cTypeID').AsString;
              EName.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
              ShowModal;
              Release;
            end;
            RefreshQry(TypeQry);
            GridType.SetFocus;
          end;
        {����Ʒ���޸�}
        if GridBrand.TitleFont.Style = [fsBold] then
        begin
          Application.CreateForm(TAddBrandFrm, AddBrandFrm);
          with AddBrandFrm do
          begin
            BOprType := False;
            LEBID.Text := BrandQry.FieldByName('cBrandID').AsString;
            LeBrandName.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
            cTypeID := TypeQry.FieldByName('cTypeID').AsString;
            ShowModal;
            Release;
          end;
          RefreshQry(BrandQry);
          GridBrand.SetFocus;
        end;
        {������Ʒ���}
        if Header.Font.Style = [fsBold] then
        begin
          Application.CreateForm(TAddPrdtFrm, AddPrdtFrm);
          with AddPrdtFrm do
          begin
            bOprType := False;
            LEID.Text := DBTV.ActiveNode.DataSet.FieldByName('cPrdtID').AsString;
            LEUnit.Text := DBTV.ActiveNode.DataSet.FieldByName('cUnit').AsString;
            LeName.Text := DBTV.ActiveNode.DataSet.FieldByName('cName').AsString;
            cTypeID := TypeQry.FieldByName('cTypeID').AsString;
            cBrandID := BrandQry.FieldByName('cBrandID').AsString;
            ShowModal;
            Release;
          end;
          RefreshQry(PrdtQry);
          DBTV.SetFocus;
        end;
      end;
    14: {��Ӧ�̵��޸�}
      begin
        if not OperRights(SYS_OPR_ID, '01016', SYS_UPDATE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
        begin
          Application.CreateForm(TAddProvFrm, AddProvFrm);
          with AddProvFrm do
          begin
            OprType := False;
            cbxArea.ItemIndex := cbxArea.Items.IndexOf(AreaQry.FieldByName('cAreaName').Value);
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
          RefreshQry(MainFrm.ProInfoQry);
        end;
      end;
    15: {�ͻ����޸�}
      begin
        if not OperRights(SYS_OPR_ID, '01017', SYS_UPDATE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
        begin
          Application.CreateForm(TAddCustFrm, AddCustFrm);
          with AddCustFrm do
          begin
            OprType := False;
            cbxArea.ItemIndex := cbxArea.Items.IndexOf(AreaQry.FieldByName('cAreaName').Value);
            leCode.Text := CustInfoQry.fieldByName('cCustID').AsString;
            leName.Text := CustInfoQry.fieldByName('cCustName').AsString;
            leContract.Text := CustInfoQry.fieldByName('cContact').AsString;
            leEmail.Text := CustInfoQry.fieldByName('cEmail').AsString;
            leTel.Text := CustInfoQry.fieldByName('cTel').AsString;
            leAddr.Text := CustInfoQry.fieldByName('cAddr').AsString;
            leWebPage.Text := CustInfoQry.FieldByName('cWebPage').AsString;
            leMainItem.Text := CustInfoQry.FieldByName('cMainItem').AsString;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.CustInfoQry);
        end;
      end;
    16: {ҵ��Ա���޸�}
      begin
        if not OperRights(SYS_OPR_ID, '01017', SYS_UPDATE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
        begin
          Application.CreateForm(TAddStaffFrm, AddStaffFrm);
          with AddStaffFrm do
          begin
            OprType := False;
            LeCode.Text := StaffQry.FieldByName('cStaffID').Value;
            leName.Text := StaffQry.FieldByName('cName').Value;
            if StaffQry.FieldByName('iSex').Value then
              cbxSex.ItemIndex := 1
            else
              cbxSex.ItemIndex := 0;
            lePID.Text := StaffQry.FieldByName('cIDNo').Value;
            leTel.Text := StaffQry.FieldByName('cTel').Value;
            leEmail.Text := StaffQry.FieldByName('cEmail').Value;
            leAddr.Text := StaffQry.FieldByName('cAddr').Value;
            ShowModal;
            Release;
          end;
          RefreshQry(MainFrm.StaffQry);
        end;
      end;
  end;
//  refreshData;
end;

{***************************************************************}
{��Ʒ����ά��                                                   }
{                                                               }
{***************************************************************}

procedure TMainFrm.N4Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01015', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    exit;
  end;
  Application.CreateForm(TSetPrdtFrm, SetPrdtFrm);
  with SetPrdtFrm do
  begin
    ShowModal;
    Release;
  end;
end;

{***************************************************************}
{��Ʒ����ά��                                                   }
{                                                               }
{***************************************************************}

procedure TMainFrm.GridTypeEnter(Sender: TObject);
begin
  if Sender = GridType then
  begin
    GridType.TitleFont.Style := [fsBold];
    GridBrand.TitleFont.Style := [];
    Header.Font.Style := [];
  end;
  if Sender = GridBrand then
  begin
    GridType.TitleFont.Style := [];
    GridBrand.TitleFont.Style := [fsBold];
    Header.Font.Style := [];
  end;
  if Sender = DBTV then
  begin
    GridType.TitleFont.Style := [];
    GridBrand.TitleFont.Style := [];
    Header.Font.Style := [fsBold];
  end;
end;

{***************************************************************}
{��Ʒ����ά��                                                   }
{                                                               }
{***************************************************************}

procedure TMainFrm.GridTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Sender = GridType then
      GridBrand.SetFocus;
    if Sender = GridBrand then
      DBTV.SetFocus;
    if Sender = DBTV then
      GridType.SetFocus;
    key := 0;
  end;
end;

{***************************************************************}
{ɾ������                                                       }
{                                                               }
{***************************************************************}

procedure TMainFrm.TBDelClick(Sender: TObject);
begin
  if Application.MessageBox(MSG_REALY_DELETE, MSG_APP_TITLE, MB_ICONQUESTION +
    mb_YesNo) = ID_Yes then
  begin
    case Page.ActivePageIndex of
      0: {ɾ���ɹ���}
        if not OperRights(SYS_OPR_ID, '01001', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          if IHeadQry.RecordCount > 0 then
            with ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Text := 'P_IPrdt_Del :iSNo';
              Parameters.ParamByName('iSNo').Value := IHeadQry.FieldByName('iSNo').Value;
              ExecSql;
              IHeadQry.Close;
              IHeadQry.Open;
            end;
      1: {ɾ�����ⵥ}
        if not OperRights(SYS_OPR_ID, '01002', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          if OHeadQry.RecordCount > 0 then
            with ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Text := 'P_OPrdt_Del :iSNo';
              Parameters.ParamByName('iSNo').Value := OHeadQry.FieldByName('iSNo').Value;
              ExecSql;
              OHeadQry.Close;
              OHeadQry.Open;
            end;
      2: {ɾ������˻���}
        if not OperRights(SYS_OPR_ID, '01003', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          if IRHeadQry.RecordCount > 0 then
            with ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Text := 'P_RIPrdt_Del :iSNo';
              Parameters.ParamByName('iSNo').Value := IRHeadQry.FieldByName('iSNo').Value;
              ExecSql;
              IRHeadQry.Close;
              IRHeadQry.Open;
            end;
      3: {ɾ�������˻���}
        if not OperRights(SYS_OPR_ID, '01004', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          if ORHeadQry.RecordCount > 0 then
            with ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Text := 'P_ROPrdt_Del :iSNo';
              Parameters.ParamByName('iSNo').Value := ORHeadQry.FieldByName('iSNo').Value;
              ExecSql;
              ORHeadQry.Close;
              ORHeadQry.Open;
            end;
      4: {ɾ����������}
        if not OperRights(SYS_OPR_ID, '01005', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          if MHeadQry.RecordCount > 0 then
            with ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Text := 'P_MovePrdt_Del :iSNo';
              Parameters.ParamByName('iSNo').Value := MHeadQry.FieldByName('iSNo').Value;
              ExecSql;
              MHeadQry.Close;
              MHeadQry.Open;
            end;
      5: {ɾ������̵㵥}
        if not OperRights(SYS_OPR_ID, '01006', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          if ChkHeadQry.RecordCount > 0 then
            with ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Text := 'P_ChkPrdt_Del :iSNo';
              Parameters.ParamByName('iSNo').Value := ChkHeadQry.FieldByName('iSNo').Value;
              ExecSql;
              ChkHeadQry.Close;
              ChkHeadQry.Open;
            end;
      13: {ɾ����Ʒ����}
        if not OperRights(SYS_OPR_ID, '01015', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
        begin
        {��������ɾ��}
          if (GridType.TitleFont.Style = [FsBold]) and (TypeQry.RecordCount > 0) then
            with MainFrm.ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Add('Delete PrdtType where cTypeID = :cTypeID');
              Parameters.ParamByName('cTypeID').Value :=
                TypeQry.fieldByName('cTypeID').Value;
              ExecSql;
              TypeQry.Close;
              TypeQry.Open;
            end;
        {����Ʒ��ɾ��}
          if (GridBrand.TitleFont.Style = [FsBold]) and (BrandQry.RecordCount > 0) then
            with MainFrm.ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Add('Delete PrdtBrand where cBrandID = :cBrandID');
              Parameters.ParamByName('cBrandID').Value :=
                BrandQry.fieldByName('cBrandID').Value;
              ExecSql;
              BrandQry.Close;
              BrandQry.Open;
            end;
        {�������ɾ��}
          if (Header.Font.Style = [FsBold]) and (PrdtQry.RecordCount > 0) then
            with MainFrm.ADOTmp do
            begin
              Close;
              Sql.Clear;
              Sql.Add('Delete PrdtEnCode where cPrdtID = :cPrdtID');
              Parameters.ParamByName('cPrdtID').Value :=
                DBTV.ActiveNode.DataSet.fieldByName('cPrdtID').Value;
              ExecSql;
              BrandQry.Close;
              BrandQry.Open;
            end;
        end;
      {ɾ����Ӧ����Ϣ}
      14:
        if not OperRights(SYS_OPR_ID, '01016', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
        begin
          try
            if ProInfoQry.RecordCount > 0 then
              with MainFrm.ADOTmp do
              begin
                Close;
                Sql.Clear;
                Sql.Add('Delete ProvInfo where cProID = :cProID');
                Parameters.ParamByName('cProID').Value :=
                  ProInfoQry.fieldByName('cProID').Value;
                ExecSql;
                ProInfoQry.Close;
                ProInfoQry.Open;
              end
            else
              with MainFrm.ADOTmp do
              begin
                Close;
                Sql.Clear;
                Sql.Add('Delete AreaInfo where iAreaID = :iAreaID');
                Parameters.ParamByName('iAreaID').Value :=
                  AreaQry.fieldByName('iAreaID').Value;
                ExecSql;
                AreaQry.Close;
                AreaQry.Open;
              end
          except
            ShowMessage(MSG_DELE_ERROR);
          end;
        end;
      {ɾ���ͻ���Ϣ}
      15:
        if not OperRights(SYS_OPR_ID, '01017', SYS_DELETE) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
        begin
          try
            if CustInfoQry.RecordCount > 0 then
              with MainFrm.ADOTmp do
              begin
                Close;
                Sql.Clear;
                Sql.Add('Delete CustInfo where cCustID = :cCustID');
                Parameters.ParamByName('cCustID').Value :=
                  CustInfoQry.fieldByName('cCustID').Value;
                ExecSql;
                CustInfoQry.Close;
                CustInfoQry.Open;
              end
            else
              with MainFrm.ADOTmp do
              begin
                Close;
                Sql.Clear;
                Sql.Add('Delete AreaInfo where iAreaID = :iAreaID');
                Parameters.ParamByName('iAreaID').Value :=
                  AreaQry.fieldByName('iAreaID').Value;
                ExecSql;
                AreaQry.Close;
                AreaQry.Open;
              end
          except
            ShowMessage(MSG_DELE_ERROR);
          end;
        end;
      16: {ɾ������˻���}
        ShowMessage('�������ڴ�ɾ��ҵ��Ա��Ϣ');
    end;
    ShowMessage(MSG_DELE_DOON)
  end;
end;

procedure TMainFrm.N9Click(Sender: TObject);
begin
  Close;
end;

{***************************************************************}
{ȷ���˳�                                                       }
{                                                               }
{***************************************************************}

procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox(MSG_REALY_EXIT, MSG_APP_TITLE,
    MB_ICONQUESTION + mb_YesNo) = ID_Yes then
    CanClose := True
  else
    CanClose := False;
end;

procedure TMainFrm.N5Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01016', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    exit;
  end;
  {��ѯ��Ӧ����Ϣ}
  Application.CreateForm(TSerachCustFrm, SerachCustFrm);
  with SerachCustFrm do
  begin
    Page.ActivePageIndex := 0;
    Page.Pages[0].TabVisible := True;
    ShowModal;
    Release;
  end;
end;

procedure TMainFrm.GridProvColWidthsChanged(Sender: TObject);
begin
  //����ǰ1��
  TStringGrid(GridProv).FixedCols := 1;
end;

procedure TMainFrm.GridStaffColWidthsChanged(Sender: TObject);
begin
  //����ǰ1��
  TStringGrid(GridStaff).FixedCols := 2;
end;

procedure TMainFrm.StaffQryiSexGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if StaffQryiSex.AsBoolean then
    Text := '��'
  else
    Text := 'Ů';
end;

procedure TMainFrm.N6Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01017', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    exit;
  end;
  {��ѯ�ͻ���Ϣ}
  Application.CreateForm(TSerachCustFrm, SerachCustFrm);
  with SerachCustFrm do
  begin
    BtnAdd.Caption := '�½��ͻ�(&W)';
    Page.ActivePageIndex := 1;
    Page.Pages[1].TabVisible := True;
    ShowModal;
    Release;
  end;
end;

procedure TMainFrm.SBIProvClick(Sender: TObject);
begin
  {��ѯ��Ӧ����Ϣ}
  if (Sender = SBIProv) or (Sender = SBIRProv)
    or (Sender = SBSIProv) or (Sender = SBSIRProv) then
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
      begin
        if Sender = SBIProv then cbxIProv.Text := Name;
        if Sender = SBIRProv then cbxIRProv.Text := Name;
        if Sender = SBSIProv then cbxSIProv.Text := Name;
        if Sender = SBSIRProv then cbxSIRProv.Text := Name;
      end;
      Release;
    end;
  end;
  {��ѯ�ͻ���Ϣ}
  if (Sender = SBSCust) or (Sender = SBSRCust)
    or (Sender = SBSSCust) or (Sender = SBSSRCust) then
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
      begin
        if Sender = SBSCust then cbxSCust.Text := Name;
        if Sender = SBSRCust then cbxSRCust.Text := Name;
        if Sender = SBSSCust then cbxSSCust.Text := Name;
        if Sender = SBSSRCust then cbxSSRCust.Text := Name;
      end;
      Release;
    end;
  end;
  {��ѯ�ֿ���Ϣ}
  if (sender = SBCStk) or (sender = SBSIStk) or (sender = SBJStk)
    or (Sender = SBSMOStk) or (sender = SBSMTStk) or (sender = SBSCStk)
    or (Sender = SBSStk) or (Sender = SBSSStk) or (sender = SBSSRStk) then
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
      begin
        if Sender = SBCStk then cbxCStk.Text := Name;
        if Sender = SBSIStk then cbxSIStk.Text := Name;
        if Sender = SBSSStk then cbxSSStk.Text := Name;
        if Sender = SBSSRStk then cbxSSRStk.Text := Name;
        if Sender = SBSMOStk then cbxSMOStk.Text := Name;
        if Sender = SBSMTStk then cbxSMTStk.Text := Name;
        if Sender = SBSCStk then cbxSCStk.Text := Name;
        if Sender = SBSStk then cbxSStk.Text := Name;
        if Sender = SBJStk then cbxJStk.Text := Name;
      end;
      Release;
    end;
  end;
  {��ѯ��Ʒ���}
  if (sender = SBSIPType) or (sender = SBSIPBrand) or (sender = SBSIPrdtID)
    or (sender = SBSSPType) or (sender = SBSSPBrand) or (sender = SBSSPrdtID)
    or (sender = SBSIRPType) or (sender = SBSIRPBrand) or (sender = SBSIRPrdtID)
    or (sender = SBSMPType) or (sender = SBSMPBrand) or (sender = SBSMPrdtID)
    or (sender = SBSSRPType) or (sender = SBSSRPBrand) or (sender = SBSSRPrdtID)
    or (sender = SBSCPType) or (sender = SBSCPBrand) or (sender = SBSCPrdtID)
    or (sender = SBSPType) or (sender = SBSPBrand) or (sender = SBSPrdtID)
    or (sender = SBJPType) or (sender = SBJPBrand) or (sender = SBJPrdtID) then
  begin
    Application.CreateForm(TSetPrdtFrm, SetPrdtFrm);
    with SetPrdtFrm do
    begin
      BtnSel.Enabled := True;
      ShowModal;
      if PrdtID <> '' then
      begin
        {��Ʒ�ɹ����ѡ��}
        if sender = SBSIPType then
        begin
          CbxSIPType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXSIPTypeChange(CbxSIPType);
        end;
        if sender = SBSIPBrand then CbxSIPBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBSIPrdtID then ESIPrdtID.Text := PrdtQry.FieldByName('cName').AsString;
        {��Ʒ�������ѡ��}
        if sender = SBSSPType then
        begin
          CbxSSPType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXSIPTypeChange(CbxSSPType);
        end;
        if sender = SBSSPBrand then CbxSSPBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBSSPrdtID then ESSPrdtID.Text := PrdtQry.FieldByName('cName').AsString;
        {�ɹ��˻����ѡ��}
        if sender = SBSIRPType then
        begin
          CbxSIRPType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXSIPTypeChange(CbxSIRPType);
        end;
        if sender = SBSIRPBrand then CbxSIRPBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBSIRPrdtID then ESIRPrdtID.Text := PrdtQry.FieldByName('cName').AsString;
        {�����˻����ѡ��}
        if sender = SBSSRPType then
        begin
          CbxSSRPType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXSIPTypeChange(CbxSSRPType);
        end;
        if sender = SBSSRPBrand then CbxSSRPBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBSSRPrdtID then ESSRPrdtID.Text := PrdtQry.FieldByName('cName').AsString;
        {��Ʒ�������ѡ��}
        if sender = SBSMPType then
        begin
          CbxSMPType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXSIPTypeChange(CbxSMPType);
        end;
        if sender = SBSMPBrand then CbxSMPBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBSMPrdtID then ESMPrdtID.Text := PrdtQry.FieldByName('cName').AsString;
        {�̵���Ʒ���ѡ��}
        if sender = SBSCPType then
        begin
          CbxSCPType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXSIPTypeChange(CbxSCPType);
        end;
        if sender = SBSCPBrand then CbxSCPBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBSCPrdtID then ESCPrdtID.Text := PrdtQry.FieldByName('cName').AsString;
        {���ͳ�����ѡ��}
        if sender = SBSPType then
        begin
          CbxSPType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXSIPTypeChange(CbxSPType);
        end;
        if sender = SBSPBrand then CbxSPBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBSPrdtID then ESPrdtID.Text := PrdtQry.FieldByName('cName').AsString;

        {������ͳ�����ѡ��}
        if sender = SBJPType then
        begin
          CbxJPType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXSIPTypeChange(CbxJPType);
        end;
        if sender = SBJPBrand then CbxJPBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBJPrdtID then EJPrdtID.Text := PrdtQry.FieldByName('cName').AsString;
      end;
      Release;
    end;
  end;
end;

procedure TMainFrm.CBXSIPTypeChange(Sender: TObject);
var
  SQLStr, ComboText: string;
begin
  {������Ʒ��������ƷƷ��}
  ComboText := Trim((Sender as TComboBox).Text);
  if ComboText = 'ȫ��' then
    SqlStr := '%'
  else
    SqlStr := ComboText + '%';
  with ADOTmp do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select cBrandAbbr From PrdtBrand where cTypeID ');
    Sql.Add(' in (Select cTypeID From PrdtType where cTypeAbbr like :cTypeAbbr)');
    Parameters.ParamByName('cTypeAbbr').DataType := ftString;
    Parameters.ParamByName('cTypeAbbr').size := 20;
    Parameters.ParamByName('cTypeAbbr').Value := SqlStr;
  end;

  if (Sender = CBXSIPType) and (ComboText <> 'ȫ��') then {���ͳ��}
    AddCombo(cbxSIPBrand, ADOTmp, True);
  if (Sender = CBXSSPType) and (ComboText <> 'ȫ��') then {����ͳ��}
    AddCombo(cbxSSPBrand, ADOTmp, True);
  if (Sender = CBXSIRPType) and (ComboText <> 'ȫ��') then {�ɹ��˻�ͳ��}
    AddCombo(cbxSIRPBrand, ADOTmp, True);
  if (Sender = CBXSSRPType) and (ComboText <> 'ȫ��') then {�����˻�ͳ��}
    AddCombo(cbxSSRPBrand, ADOTmp, True);
  if (Sender = CBXSMPType) and (ComboText <> 'ȫ��') then {��Ʒ����ͳ��}
    AddCombo(cbxSMPBrand, ADOTmp, True);
  if (Sender = CBXSCPType) and (ComboText <> 'ȫ��') then {��Ʒ�̵�ͳ��}
    AddCombo(cbxSCPBrand, ADOTmp, True);
  if (Sender = CBXSPType) and (ComboText <> 'ȫ��') then {��Ʒ���ͳ��}
    AddCombo(cbxSPBrand, ADOTmp, True);
  if (Sender = CBXJPType) and (ComboText <> 'ȫ��') then {��Ʒ������ͳ��}
    AddCombo(cbxJPBrand, ADOTmp, True);

end;

procedure TMainFrm.NShowPanelClick(Sender: TObject);
begin
  NShowPanel.Checked := not NShowPanel.Checked;
  OutlookBar.Visible := NShowPanel.Checked;
end;

{����ͳ��}

procedure TMainFrm.TBSumClick(Sender: TObject);
var
  I: integer;
  lEnd: integer;
  lStart: integer;
begin
  ShowHide(MSG_PROCESS_DATA);
  Application.ProcessMessages;
  lStart := GetTickCount;
  ProcessData(True);
  case Page.ActivePageIndex of
    6: {�ɹ�ͳ��}
      begin
        if not OperRights(SYS_OPR_ID, '01007', SYS_SELECT) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          with P_StatIList do
          begin
            Close;
            Parameters.ParamByName('@Flag').Value := CBXSIType.ItemIndex;
            Parameters.ParamByName('@dBDate').Value := SIBDate.Date;
            Parameters.ParamByName('@dEDate').Value := SIEDate.Date;
            if CBXSIProv.Text = 'ȫ��' then
              Parameters.ParamByName('@cProName').Value := '%'
            else
              Parameters.ParamByName('@cProName').Value := '%' + CBXSIProv.Text + '%';
            if CBXSIStk.Text = 'ȫ��' then
              Parameters.ParamByName('@cStkName').Value := '%'
            else
              Parameters.ParamByName('@cStkName').Value := '%' + CBXSIStk.Text + '%';
            if CBXSIPType.Text = 'ȫ��' then
              Parameters.ParamByName('@cTypeAbbr').Value := '%'
            else
              Parameters.ParamByName('@cTypeAbbr').Value := '%' + CBXSIPType.Text + '%';
            if CBXSIPBrand.Text = 'ȫ��' then
              Parameters.ParamByName('@cBrandAbbr').Value := '%'
            else
              Parameters.ParamByName('@cBrandAbbr').Value := '%' + CBXSIPBrand.Text + '%';
            if ESIPrdtID.Text = '' then
              Parameters.ParamByName('@cName').Value := '%'
            else
              Parameters.ParamByName('@cName').Value := '%' + ESIPrdtID.Text + '%';
            Open;
            lEnd := GetTiCkCount;
          end;
        FormatGrid(GridSIList, CBXSIType.Itemindex);
      end;
    7: {����ͳ��}
      begin
        if not OperRights(SYS_OPR_ID, '01008', SYS_SELECT) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          with P_StatSList do
          begin
            Close;
            Parameters.ParamByName('@Flag').Value := CBXSSType.ItemIndex;
            Parameters.ParamByName('@dBDate').Value := SSBDate.Date;
            Parameters.ParamByName('@dEDate').Value := SSEDate.Date;
            if CBXSSCust.Text = 'ȫ��' then
              Parameters.ParamByName('@cCustName').Value := '%'
            else
              Parameters.ParamByName('@cCustName').Value := '%' + CBXSSCust.Text + '%';
            if CBXSSStk.Text = 'ȫ��' then
              Parameters.ParamByName('@cStkName').Value := '%'
            else
              Parameters.ParamByName('@cStkName').Value := '%' + CBXSSStk.Text + '%';
            if CBXSSPType.Text = 'ȫ��' then
              Parameters.ParamByName('@cTypeAbbr').Value := '%'
            else
              Parameters.ParamByName('@cTypeAbbr').Value := '%' + CBXSSPType.Text + '%';
            if CBXSSPBrand.Text = 'ȫ��' then
              Parameters.ParamByName('@cBrandAbbr').Value := '%'
            else
              Parameters.ParamByName('@cBrandAbbr').Value := '%' + CBXSSPBrand.Text + '%';
            if ESSPrdtID.Text = '' then
              Parameters.ParamByName('@cName').Value := '%'
            else
              Parameters.ParamByName('@cName').Value := '%' + ESSPrdtID.Text + '%';
            Open;
            lEnd := GetTiCkCount;
          end;
        FormatGrid(GridSSList, CBXSSType.Itemindex);
      end;
    8: {�˻�ͳ��}
      case PageRet.ActivePageIndex of
        0: {�ɹ��˻�ͳ��}
          begin
            if not OperRights(SYS_OPR_ID, '01009', SYS_SELECT) then
            begin
              ShowMessage(MSG_USE_LIMITED);
            end
            else
              with P_StatUnIList do
              begin
                Close;
                Parameters.ParamByName('@Flag').Value := CBXSIRType.ItemIndex;
                Parameters.ParamByName('@dBDate').Value := SSRBDate.Date;
                Parameters.ParamByName('@dEDate').Value := SSREDate.Date;
                if CBXSIRProv.Text = 'ȫ��' then
                  Parameters.ParamByName('@cProName').Value := '%'
                else
                  Parameters.ParamByName('@cProName').Value := '%' + CBXSIRProv.Text + '%';
                if CBXSIRStk.Text = 'ȫ��' then
                  Parameters.ParamByName('@cStkName').Value := '%'
                else
                  Parameters.ParamByName('@cStkName').Value := '%' + CBXSIRStk.Text + '%';
                if CBXSIRPType.Text = 'ȫ��' then
                  Parameters.ParamByName('@cTypeAbbr').Value := '%'
                else
                  Parameters.ParamByName('@cTypeAbbr').Value := '%' + CBXSIRPType.Text + '%';
                if CBXSIRPBrand.Text = 'ȫ��' then
                  Parameters.ParamByName('@cBrandAbbr').Value := '%'
                else
                  Parameters.ParamByName('@cBrandAbbr').Value := '%' + CBXSIRPBrand.Text + '%';
                if ESIRPrdtID.Text = '' then
                  Parameters.ParamByName('@cName').Value := '%'
                else
                  Parameters.ParamByName('@cName').Value := '%' + ESIRPrdtID.Text + '%';
                Open;
              end;
            lEnd := GetTiCkCount;
            FormatGrid(GridSIRList, CBXSIRType.Itemindex);
          end;
        1: {�����˻�ͳ��}
          if not OperRights(SYS_OPR_ID, '01010', SYS_SELECT) then
          begin
            ShowMessage(MSG_USE_LIMITED);
          end
          else
          begin
            with P_StatUnSList do
            begin
              Close;
              Parameters.ParamByName('@Flag').Value := CBXSSRType.ItemIndex;
              Parameters.ParamByName('@dBDate').Value := SSRBDate.Date;
              Parameters.ParamByName('@dEDate').Value := SSREDate.Date;
              if CBXSSRCust.Text = 'ȫ��' then
                Parameters.ParamByName('@cCustName').Value := '%'
              else
                Parameters.ParamByName('@cCustName').Value := '%' + CBXSSRCust.Text + '%';
              if CBXSSRStk.Text = 'ȫ��' then
                Parameters.ParamByName('@cStkName').Value := '%'
              else
                Parameters.ParamByName('@cStkName').Value := '%' + CBXSSRStk.Text + '%';
              if CBXSSRPType.Text = 'ȫ��' then
                Parameters.ParamByName('@cTypeAbbr').Value := '%'
              else
                Parameters.ParamByName('@cTypeAbbr').Value := '%' + CBXSSRPType.Text + '%';
              if CBXSSRPBrand.Text = 'ȫ��' then
                Parameters.ParamByName('@cBrandAbbr').Value := '%'
              else
                Parameters.ParamByName('@cBrandAbbr').Value := '%' + CBXSSRPBrand.Text + '%';
              if ESSRPrdtID.Text = '' then
                Parameters.ParamByName('@cName').Value := '%'
              else
                Parameters.ParamByName('@cName').Value := '%' + ESSRPrdtID.Text + '%';
              Open;
              lEnd := GetTiCkCount;
            end;
            FormatGrid(GridSSRList, CBXSSRType.Itemindex);
          end;
      end;

    9: {��Ʒ����ͳ��}
      begin
        if not OperRights(SYS_OPR_ID, '01011', SYS_SELECT) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          with P_StatMList do
          begin
            Close;
            Parameters.ParamByName('@Flag').Value := CBXSMType.ItemIndex;
            Parameters.ParamByName('@dBDate').Value := SMBDate.Date;
            Parameters.ParamByName('@dEDate').Value := SMEDate.Date;
            if CBXSMOStk.Text = 'ȫ��' then
              Parameters.ParamByName('@cOStkName').Value := '%'
            else
              Parameters.ParamByName('@cOStkName').Value := '%' + CBXSMOStk.Text + '%';
            if CBXSMTStk.Text = 'ȫ��' then
              Parameters.ParamByName('@cTStkName').Value := '%'
            else
              Parameters.ParamByName('@cTStkName').Value := '%' + CBXSMTStk.Text + '%';
            if CBXSMPType.Text = 'ȫ��' then
              Parameters.ParamByName('@cTypeAbbr').Value := '%'
            else
              Parameters.ParamByName('@cTypeAbbr').Value := '%' + CBXSMPType.Text + '%';
            if CBXSMPBrand.Text = 'ȫ��' then
              Parameters.ParamByName('@cBrandAbbr').Value := '%'
            else
              Parameters.ParamByName('@cBrandAbbr').Value := '%' + CBXSMPBrand.Text + '%';
            if ESMPrdtID.Text = '' then
              Parameters.ParamByName('@cName').Value := '%'
            else
              Parameters.ParamByName('@cName').Value := '%' + ESMPrdtID.Text + '%';
            Open;
            lEnd := GetTiCkCount;
          end;
        with GridSMList do
          if CBXSMType.ItemIndex = 0 then {��ʱ��ͳ��}
          begin
            Columns[0].Width := 100;
            Columns[0].Title.Caption := '����';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '�ϼ�';
            Columns[1].Width := 50;
            Columns[1].Title.Caption := '�����ֿ�';
            Columns[2].Width := 50;
            Columns[2].Title.Caption := '�����ֿ�';
            Columns[3].Width := 100;
            Columns[3].Title.Caption := '��Ʒ����';
            Columns[4].Width := 240;
            Columns[4].Title.Caption := '��Ʒ����';
            Columns[5].Width := 35;
            Columns[5].Title.Caption := '��λ';
            Columns[6].Width := 80;
            Columns[6].Title.Caption := '����';
            Columns[6].Footer.ValueType := fvtSum;
            Columns[6].DisplayFormat := QTY_DIG_FRT;
            Columns[6].Footer.DisplayFormat := QTY_DIG_FRT;
            Columns[6].Footer.FieldName := 'TQty';
            Columns[7].Width := 100;
            Columns[7].Title.Caption := '���';
            Columns[7].Footer.ValueType := fvtSum;
            Columns[7].Footer.FieldName := 'TAmt';
            Columns[7].DisplayFormat := '##,###,##0.00';
            Columns[7].Footer.DisplayFormat := '##,###,##0.00';
          end
          else {����Ʒͳ��}
          begin
            Columns[0].Width := 50;
            Columns[0].Title.Caption := '�����ֿ�';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '�ϼ�';
            Columns[1].Width := 50;
            Columns[1].Title.Caption := '�����ֿ�';
            Columns[2].Width := 100;
            Columns[2].Title.Caption := '��Ʒ����';
            Columns[3].Width := 240;
            Columns[3].Title.Caption := '��Ʒ����';
            Columns[4].Width := 35;
            Columns[4].Title.Caption := '��λ';
            Columns[5].Width := 80;
            Columns[5].Title.Caption := '����';
            Columns[5].Footer.ValueType := fvtSum;
            Columns[5].DisplayFormat := QTY_DIG_FRT;
            Columns[5].Footer.DisplayFormat := QTY_DIG_FRT;
            Columns[5].Footer.FieldName := 'TQty';
            Columns[6].Width := 100;
            Columns[6].Title.Caption := '���';
            Columns[6].Footer.ValueType := fvtSum;
            Columns[6].Footer.FieldName := 'TAmt';
            Columns[6].DisplayFormat := '##,###,##0.00';
            Columns[6].Footer.DisplayFormat := '##,###,##0.00';
            for I := 0 to Columns.Count - 1 do
            begin
              Columns[I].Title.TitleButton := True;
            end;
          end;
      end;
    10: {��Ʒ�̵�ͳ��}
      begin
        if not OperRights(SYS_OPR_ID, '01012', SYS_SELECT) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          with P_StatCList do
          begin
            Close;
            Parameters.ParamByName('@Flag').Value := CBXSCType.ItemIndex;
            Parameters.ParamByName('@dBDate').Value := SCBDate.Date;
            Parameters.ParamByName('@dEDate').Value := SCEDate.Date;
            if CBXSCStk.Text = 'ȫ��' then
              Parameters.ParamByName('@cStkName').Value := '%'
            else
              Parameters.ParamByName('@cStkName').Value := '%' + CBXSCStk.Text + '%';
            if CBXSCPType.Text = 'ȫ��' then
              Parameters.ParamByName('@cTypeAbbr').Value := '%'
            else
              Parameters.ParamByName('@cTypeAbbr').Value := '%' + CBXSCPType.Text + '%';
            if CBXSCPBrand.Text = 'ȫ��' then
              Parameters.ParamByName('@cBrandAbbr').Value := '%'
            else
              Parameters.ParamByName('@cBrandAbbr').Value := '%' + CBXSCPBrand.Text + '%';
            if ESCPrdtID.Text = '' then
              Parameters.ParamByName('@cName').Value := '%'
            else
              Parameters.ParamByName('@cName').Value := '%' + ESCPrdtID.Text + '%';
            Open;
            lEnd := GetTiCkCount;
          end;
        with GridSCList do
          if CBXSCType.ItemIndex = 0 then {��ʱ��ͳ��}
          begin
            Columns[0].Width := 100;
            Columns[0].Title.Caption := '����';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '�ϼ�';
            Columns[1].Title.Caption := '��Ʒ����';
            Columns[1].Width := 100;
            Columns[2].Title.Caption := '��Ʒ����';
            Columns[2].Width := 240;
            Columns[3].Title.Caption := '��λ';
            Columns[3].Width := 35;
            Columns[4].Title.Caption := 'ӯ������';
            Columns[4].Width := 80;
            Columns[4].Footer.ValueType := fvtSum;
            Columns[4].DisplayFormat := QTY_DIG_FRT;
            Columns[4].Footer.DisplayFormat := QTY_DIG_FRT;
            Columns[4].Footer.FieldName := 'TQty';
          end
          else {����Ʒͳ��}
          begin
            Columns[0].Width := 100;
            Columns[0].Title.Caption := '��Ʒ����';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '�ϼ�';
            Columns[1].Width := 240;
            Columns[1].Title.Caption := '��Ʒ����';
            Columns[2].Width := 35;
            Columns[2].Title.Caption := '��λ';
            Columns[3].Width := 80;
            Columns[3].Title.Caption := 'ӯ������';
            Columns[3].Footer.ValueType := fvtSum;
            Columns[3].DisplayFormat := QTY_DIG_FRT;
            Columns[3].Footer.DisplayFormat := QTY_DIG_FRT;
            Columns[3].Footer.FieldName := 'TQty';
            for I := 0 to Columns.Count - 1 do
            begin
              Columns[I].Title.TitleButton := True;
            end;
          end;
      end;
    11: {��Ʒ�տ��ͳ��}
      begin
        if not OperRights(SYS_OPR_ID, '01013', SYS_SELECT) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          with P_StatStock do
          begin
            Close;
            Parameters.ParamByName('@dHapdDate').Value := SDate.Date;
            if CBXSStk.Text = 'ȫ��' then
              Parameters.ParamByName('@cStkName').Value := '%'
            else
              Parameters.ParamByName('@cStkName').Value := '%' + CBXSStk.Text + '%';
            if CBXSPType.Text = 'ȫ��' then
              Parameters.ParamByName('@cTypeAbbr').Value := '%'
            else
              Parameters.ParamByName('@cTypeAbbr').Value := '%' + CBXSPType.Text + '%';
            if CBXSPBrand.Text = 'ȫ��' then
              Parameters.ParamByName('@cBrandAbbr').Value := '%'
            else
              Parameters.ParamByName('@cBrandAbbr').Value := '%' + CBXSPBrand.Text + '%';
            if ESPrdtID.Text = '' then
              Parameters.ParamByName('@cName').Value := '%'
            else
              Parameters.ParamByName('@cName').Value := '%' + ESPrdtID.Text + '%';
            Parameters.ParamByName('@cPrdtID').Value := '%';
            Open;
            lEnd := GetTiCkCount;
          end;
        with GridStockList do
        begin
          Columns[0].Width := 90;
          Columns[0].Title.Caption := '�ֿ�';
          Columns[0].Footer.ValueType := fvtStaticText;
          Columns[0].Footer.Value := '�ϼ�';
          Columns[1].Width := 100;
          Columns[1].Title.Caption := '��Ʒ����';
          Columns[2].Width := 340;
          Columns[2].Title.Caption := '��Ʒ����';
          Columns[3].Width := 35;
          Columns[3].Title.Caption := '��λ';
          Columns[4].Width := 80;
          Columns[4].Title.Caption := '�������';
          Columns[4].Footer.ValueType := fvtSum;
          Columns[4].DisplayFormat := QTY_DIG_FRT;
          Columns[4].Footer.DisplayFormat := QTY_DIG_FRT;
          Columns[4].Footer.FieldName := 'StkQty';
          Columns[5].Visible := False;
          for I := 0 to Columns.Count - 1 do
          begin
            Columns[I].Title.TitleButton := True;
          end;
        end;
      end;
    12: {������ͳ��}
      begin
        if not OperRights(SYS_OPR_ID, '01014', SYS_SELECT) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
          with P_JXC do
          begin
            Close;
            Parameters.ParamByName('@dSDate').Value := JBDate.Date;
            Parameters.ParamByName('@dEDate').Value := JEDate.Date;
            if CBXJPType.Text = 'ȫ��' then
              Parameters.ParamByName('@cTypeAbbr').Value := '%'
            else
              Parameters.ParamByName('@cTypeAbbr').Value := '%' + CBXJPType.Text + '%';
            if CBXJPBrand.Text = 'ȫ��' then
              Parameters.ParamByName('@cBrandAbbr').Value := '%'
            else
              Parameters.ParamByName('@cBrandAbbr').Value := '%' + CBXJPBrand.Text + '%';
            if EJPrdtID.Text = '' then
              Parameters.ParamByName('@cName').Value := '%'
            else
              Parameters.ParamByName('@cName').Value := '%' + EJPrdtID.Text + '%';
            Open;
            lEnd := GetTiCkCount;
          end;
        with GridJXCList do
        begin
          Columns[0].Width := 80;
          Columns[0].Title.Caption := '��Ʒ����';
          Columns[0].Footer.ValueType := fvtStaticText;
          Columns[0].Footer.Value := '�ϼ�';
          Columns[1].Width := 340;
          Columns[1].Title.Caption := '��Ʒ����';
          Columns[2].Width := 35;
          Columns[2].Title.Caption := '��λ';
          Columns[3].Width := 80;
          Columns[3].Title.Caption := '���ڽ��';
          Columns[3].Footer.ValueType := fvtSum;
          Columns[3].DisplayFormat := QTY_DIG_FRT;
          Columns[3].Footer.DisplayFormat := QTY_DIG_FRT;
          Columns[3].Footer.FieldName := 'LastQty';
          Columns[4].Width := 80;
          Columns[4].Title.Caption := '���ڲɹ�';
          Columns[4].Footer.ValueType := fvtSum;
          Columns[4].DisplayFormat := QTY_DIG_FRT;
          Columns[4].Footer.DisplayFormat := QTY_DIG_FRT;
          Columns[4].Footer.FieldName := 'IQty';
          Columns[5].Width := 80;
          Columns[5].Title.Caption := '��������';
          Columns[5].Footer.ValueType := fvtSum;
          Columns[5].DisplayFormat := QTY_DIG_FRT;
          Columns[5].Footer.DisplayFormat := QTY_DIG_FRT;
          Columns[5].Footer.FieldName := 'sQty';
          Columns[6].Width := 80;
          Columns[6].Title.Caption := '�ɹ��˻�';
          Columns[6].Footer.ValueType := fvtSum;
          Columns[6].DisplayFormat := QTY_DIG_FRT;
          Columns[6].Footer.DisplayFormat := QTY_DIG_FRT;
          Columns[6].Footer.FieldName := 'IRQty';
          Columns[7].Width := 80;
          Columns[7].Title.Caption := '�����˻�';
          Columns[7].Footer.ValueType := fvtSum;
          Columns[7].DisplayFormat := QTY_DIG_FRT;
          Columns[7].Footer.DisplayFormat := QTY_DIG_FRT;
          Columns[7].Footer.FieldName := 'SRQty';
          Columns[8].Width := 80;
          Columns[8].Title.Caption := '�̵�ӯ��';
          Columns[8].Footer.ValueType := fvtSum;
          Columns[8].DisplayFormat := QTY_DIG_FRT;
          Columns[8].Footer.DisplayFormat := QTY_DIG_FRT;
          Columns[8].Footer.FieldName := 'CQty';
          Columns[9].Width := 80;
          Columns[9].Title.Caption := '��ǰ���';
          Columns[9].Footer.ValueType := fvtSum;
          Columns[9].DisplayFormat := QTY_DIG_FRT;
          Columns[9].Footer.DisplayFormat := QTY_DIG_FRT;
          Columns[9].Footer.FieldName := 'StkQty';
          for I := 0 to Columns.Count - 1 do
          begin
            Columns[I].Title.TitleButton := True;
          end;
        end;
      end;
  end;
  ProcessData(False);
  PageResize(Page);
  ShowHide('ͳ�ƺ�ʱ��' + FloatToStr((lEnd - lStart) / 1000.0) + '��');
end;

procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I: integer;
begin
  for I := 0 to MainFrm.ComponentCount - 1 do
  begin
    if MainFrm.Components[I] is TADOQuery then
      (MainFrm.Components[I] as TADOQuery).close;
    if MainFrm.Components[I] is TADOStoredProc then
      (MainFrm.Components[I] as TADOStoredProc).close;
  end;
  ADOConn.Connected := False;
end;

procedure TMainFrm.N2Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '01019', SYS_INSERT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
  end
  else
  begin
    with AdoTmp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('Select top 1 * from PrdtStock');
      Open;
      if not eof then
      begin
        ShowMessage('�Ѿ��������ڳ����');
        exit;
      end;
    end;
    Application.CreateForm(TSetStockFrm, SetStockFrm);
    with SetStockFrm do
    begin
      ShowModal;
      Release;
    end;
  end;
end;

procedure TMainFrm.TBPrnClick(Sender: TObject);
begin

  PrnEh.PageHeader.CenterText.clear;
  PrnEh.PageHeader.CenterText.Add(PanelTitle.Caption);
  PrnEH.BeforeGridText.Clear;
  case Page.ActivePageIndex of
    6: {�ɹ�ͳ��}
      with PrnEh do
      begin
        DBGridEh := GridSIList;
        BeforeGridText.Add('�ֿ⣺' + CBXSIStk.Text + '        ���ڣ�'
          + DateToStr(SIBDate.Date) + '��' + DateToStr(SIEDate.Date)
          + '      ��Ʒ���' + CBXSIPType.Text + '       ��ƷƷ�ƣ�' + CBXSIPBrand.Text);
        BeforeGridText.Add('��Ӧ�̣�' + CBXSIProv.Text);
        Preview;
        Exit;
      end;
    7: {����ͳ��}
      with PrnEh do
      begin
        DBGridEh := GridSSList;
        BeforeGridText.Add('�ֿ⣺' + CBXSSStk.Text + '        ���ڣ�'
          + DateToStr(SSBDate.Date) + '��' + DateToStr(SSEDate.Date)
          + '      ��Ʒ���' + CBXSSPType.Text + '       ��ƷƷ�ƣ�' + CBXSSPBrand.Text);
        BeforeGridText.Add('�ͻ����ƣ�' + CBXSSCust.Text);
        Preview;
        Exit;
      end;
    9: {����ͳ��}
      with PrnEh do
      begin
        DBGridEh := GridSMList;
        BeforeGridText.Add('�����ֿ⣺' + CBXSMOStk.Text + '     ����ֿ⣺'
          + CBXSMTStk.Text + '     ���ڣ�' + DateToStr(SMBDate.Date)
          + '��' + DateToStr(SMEDate.Date));
        BeforeGridText.Add('      ��Ʒ���' + CBXSMPType.Text + '       ��ƷƷ�ƣ�'
          + CBXSMPBrand.Text);
        Preview;
        Exit;
      end;
    10: {�̵�ͳ��}
      with PrnEh do
      begin
        DBGridEh := GridSCList;
        BeforeGridText.Add('�ֿ⣺' + CBXSCStk.Text + '        ���ڣ�'
          + DateToStr(SCBDate.Date) + '��' + DateToStr(SCEDate.Date)
          + '      ��Ʒ���' + CBXSCPType.Text + '       ��ƷƷ�ƣ�' + CBXSCPBrand.Text);
        Preview;
        Exit;
      end;
    11: {���ͳ��}
      with PrnEh do
      begin
        DBGridEh := GridStockList;
        BeforeGridText.Add('�ֿ⣺' + CBXSStk.Text + '        ���ڣ�' + DateToStr(SDate.Date)
          + '      ��Ʒ���' + CBXSPType.Text + '       ��ƷƷ�ƣ�' + CBXSPBrand.Text);
        Preview;
        Exit;
      end;
    12: {������ͳ��}
      with PrnEh do
      begin
        DBGridEh := GridJXCList;
        BeforeGridText.Add('�ֿ⣺' + CBXJStk.Text + '        ���ڣ�'
          + DateToStr(JBDate.Date) + '��' + DateToStr(JEDate.Date)
          + '      ��Ʒ���' + CBXJPType.Text + '       ��ƷƷ�ƣ�' + CBXJPBrand.Text);
        Preview;
        Exit;
      end;
  end;
  case PageRet.ActivePageIndex of
    0: {�ɹ��˻�ͳ��}
      with PrnEh do
      begin
        DBGridEh := GridSIRList;
        BeforeGridText.Add('�ֿ⣺' + CBXSIRStk.Text + '        ���ڣ�'
          + DateToStr(SSIRBDate.Date) + '��' + DateToStr(SSIREDate.Date)
          + '      ��Ʒ���' + CBXSIRPType.Text + '       ��ƷƷ�ƣ�' + CBXSIRPBrand.Text);
        BeforeGridText.Add('��Ӧ�̣�' + CBXSIRProv.Text);
        Preview;
        Exit;
      end;
    1: {�����˻�ͳ��}
      with PrnEh do
      begin
        DBGridEh := GridSSRList;
        BeforeGridText.Add('�ֿ⣺' + CBXSSRStk.Text + '        ���ڣ�'
          + DateToStr(SSRBDate.Date) + '��' + DateToStr(SSREDate.Date)
          + '      ��Ʒ���' + CBXSSRPType.Text + '       ��ƷƷ�ƣ�' + CBXSSRPBrand.Text);
        BeforeGridText.Add('�ͻ���' + CBXSSRCust.Text);
        Preview;
        Exit;
      end;
  end;
end;

procedure TMainFrm.TBPrnListClick(Sender: TObject);
var
  dd: string;
  cnt: integer;
begin
  PrnEh.PageHeader.CenterText.clear;
  PrnEh.PageHeader.CenterText.Add(PanelTitle.Caption);
  PrnEH.BeforeGridText.Clear;

  case Page.ActivePageIndex of
    0:
      if not OperRights(SYS_OPR_ID, '01001', SYS_PRINT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
      begin
        cnt := 0;
        {ȡ����¼���������㱨����}
        with AdoTmp do
        begin
          Close;
          Sql.clear;
          Sql.text := 'select ct = count(*) from StockList where iSNo = :iSNo';
          Parameters.paramByName('iSNo').Value := IHeadQry.fieldByname('iSNo').Value;
          Open;
          if FieldByName('Ct').AsInteger > 0 then
            Cnt := FieldByName('Ct').AsInteger
          else
            exit;
        end;
        Application.CreateForm(TFQRStockList, FQRStockList);
        with FQRStockList do
        begin
          QRep.Page.Length := ColumnHeaderBand1.Size.Length
            + SummaryBand1.Size.Length * 5
            + cnt * DetailBand1.Size.Length;
          QRLabCust.Caption := '��Ӧ������:' + IHeadQry.FieldByName('cProName').AsSTring; ;
          QRLabSN.Caption := IHeadQry.FieldByName('cSN').AsSTring; ;
          dd := IHeadQry.FieldByName('dHapdDate').AsSTring;
          QRLabDate.Caption := '����:' + Copy(dd, 1, 4) + '��' + Copy(dd, 6, 2) + '��' + Copy(dd, 9, 2) + '��';
          QRep.Preview;
          Release;
        end;
      end;
    1: {���ⵥ}
      if not OperRights(SYS_OPR_ID, '01001', SYS_PRINT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
      begin
        cnt := 0;
        {ȡ����¼���������㱨����}
        with AdoTmp do
        begin
          Close;
          Sql.clear;
          Sql.text := 'select ct = count(*) from SaleList where iSNo = :iSNo';
          Parameters.paramByName('iSNo').Value := OHeadQry.fieldByname('iSNo').Value;
          Open;
          if FieldByName('Ct').AsInteger > 0 then
            Cnt := FieldByName('Ct').AsInteger
          else
            exit;
        end;
        Application.CreateForm(TFQRSaleList, FQRSaleList);
        with FQRSaleList do
        begin
          QRep.Page.Length := ColumnHeaderBand1.Size.Length
            + SummaryBand1.Size.Length * 2
            + cnt * DetailBand1.Size.Length;
          QRLabCust.Caption := '�ͻ�����:' + OHeadQry.FieldByName('cCustName').AsSTring; ;
          QRLabSN.Caption := OHeadQry.FieldByName('cSN').AsSTring;
          dd := OHeadQry.FieldByName('dHapdDate').AsSTring;
          QRLabcVNo.Caption := QRLabcVNo.Caption + OHeadQry.FieldByName('cVNo').AsSTring;
          QRLabDate.Caption := '����:' + Copy(dd, 1, 4) + '��' + Copy(dd, 6, 2) + '��' + Copy(dd, 9, 2) + '��';
          QRMemo.Lines.Add('��ע��');
          QRMemo.Lines.Add(OHeadQry.FieldByName('cRemark').AsSTring);
          QRep.Preview;
          Release;
        end;
      end;
    13: {��Ʒ����}
      if not OperRights(SYS_OPR_ID, '01015', SYS_PRINT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        with PrnEh do
        begin
          //DBGridEh := GridPrdt;
          BeforeGridText.Add('��Ʒ���' + TypeQry.FieldByName('cTypeAbbr').AsString
            + '        ��Ʒ���' + BrandQry.FieldByName('cBrandAbbr').AsString);
          Preview;
        end;
    14: {��Ӧ�̱���}
      if not OperRights(SYS_OPR_ID, '01016', SYS_PRINT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        with PrnEh do
        begin
          DBGridEh := GridProv;
          BeforeGridText.Add('��������' + AreaQry.FieldByName('cAreaName').AsString);
          Preview;
        end;
    15: {�ͻ�����}
      if not OperRights(SYS_OPR_ID, '01017', SYS_PRINT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        with PrnEh do
        begin
          DBGridEh := GridCust;
          BeforeGridText.Add('��������' + AreaQry.FieldByName('cAreaName').AsString);
          Preview;
        end;
  end;
end;

procedure TMainFrm.N3Click(Sender: TObject);
begin
  {����Ʒ��������}
  fcOutlookBar1OutlookList1ItemClick(
    fcOutlookBar1OutlookList3, fcOutlookBar1OutlookList3.Items[0]);
end;

procedure TMainFrm.N10Click(Sender: TObject);
begin
  {����Ӧ�̱�������}
  fcOutlookBar1OutlookList1ItemClick(
    fcOutlookBar1OutlookList3, fcOutlookBar1OutlookList3.Items[1]);
end;

procedure TMainFrm.N11Click(Sender: TObject);
begin
  {���ͻ���������}
  fcOutlookBar1OutlookList1ItemClick(
    fcOutlookBar1OutlookList3, fcOutlookBar1OutlookList3.Items[2]);
end;

procedure TMainFrm.N12Click(Sender: TObject);
begin
  {��ҵ���������}
  fcOutlookBar1OutlookList1ItemClick(
    fcOutlookBar1OutlookList3, fcOutlookBar1OutlookList3.Items[3]);
end;

procedure TMainFrm.PageResize(Sender: TObject);
begin
  {�������С�ı�ʱ��Grid�еĿ�ȵ���Ϊ�ʺϿ��}
  case Page.ActivePageIndex of
    0:
      begin
        ChgGridWidth(GridIHead);
        ChgGridWidth(GridIList);
      end;
    1:
      begin
        ChgGridWidth(GridOHead);
        ChgGridWidth(GridOList);
      end;
    2:
      begin
        ChgGridWidth(GridRIHead);
        ChgGridWidth(GridIRList);
      end;
    3:
      begin
        ChgGridWidth(GridRSHead);
        ChgGridWidth(GridRSList);
      end;
    4:
      begin
        ChgGridWidth(GridMHead);
        ChgGridWidth(GridMList);
      end;
    5:
      begin
        ChgGridWidth(GridCHead);
        ChgGridWidth(GridCList);
      end;
    6: if CBXSIType.ItemIndex = 0 then
        ChgGridWidth(GridSIList)
      else
        ChgGridWidth(GridSIList);
    7: if CBXSSType.ItemIndex = 0 then
        ChgGridWidth(GridSSList)
      else
        ChgGridWidth(GridSSList);
    9: if CBXSMType.ItemIndex = 0 then
        ChgGridWidth(GridSMList)
      else
        ChgGridWidth(GridSMList);
    10: if CBXSCType.ItemIndex = 0 then
        ChgGridWidth(GridSCList)
      else
        ChgGridWidth(GridSCList);
    11: ChgGridWidth(GridStockList);
    12: ChgGridWidth(GridJXCList);
    13:
      begin
        ChgGridWidth(GridBrand);
        Header.Sections[1].Width := Header.Width - 21 - Header.Sections[0].Width
          - Header.Sections[2].Width;
      end;
  end;
  case PageRet.ActivePageIndex of
    0:
      if CBXSIRType.ItemIndex = 0 then
        ChgGridWidth(GridSIRList)
      else
        ChgGridWidth(GridSIRList);
    1:
      if CbxSSRType.ItemIndex = 0 then
        ChgGridWidth(GridSSRList)
      else
        ChgGridWidth(GridSSRList);
  end;
end;

procedure TMainFrm.IHeadQryAfterScroll(DataSet: TDataSet);
begin
  if dataset = IHeadQry then GridIList.SumList.RecalcAll;
  if dataset = IRHeadQry then GridIRList.SumList.RecalcAll;
  if dataset = OHeadQry then GridOList.SumList.RecalcAll;
  if dataset = ORHeadQry then GridRSList.SumList.RecalcAll;
  if dataset = MHeadQry then GridMList.SumList.RecalcAll;
  if dataset = ChkHeadQry then GridCList.SumList.RecalcAll;
  if dataset = TypeQry then GridBrand.SumList.RecalcAll;
end;

  {ˢ�¶�Ӧҳ����������}

procedure RefreshData;
var
  lEnd: integer;
  lStart: integer;
begin
  ShowHide(MSG_PROCESS_DATA);
  Application.ProcessMessages;
  lStart := GetTickCount;
  case MainFrm.Page.ActivePageIndex of
    0: {��ⵥ��¼}
      if not OperRights(SYS_OPR_ID, '01001', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        with MainFrm.IHeadQry do
        begin
          Close;
          Parameters.ParamByName('sDate').Value := MainFrm.IBDate.Date;
          Parameters.ParamByName('eDate').Value := MainFrm.IeDate.Date;
          Parameters.ParamByName('cSN').Value := '%' + MainFrm.EiSN.text + '%';
          Parameters.ParamByName('cStaffName').Value := '%';
          Parameters.ParamByName('cOprName').Value := '%';
          Parameters.ParamByName('cStkName').Value := '%';
          Parameters.ParamByName('cPrdtName').Value := '%';
          if MainFrm.CbxIProv.text = 'ȫ��' then
            Parameters.ParamByName('cProName').Value := '%'
          else
            Parameters.ParamByName('cProName').Value := '%' + MainFrm.cbxiProv.text + '%';
          Open;
          RefreshQry(MainFrm.IListQry);
        end;
    1: {���ⵥ��¼}
      if not OperRights(SYS_OPR_ID, '01002', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        with MainFrm.OHeadQry do
        begin
          Close;
          Parameters.ParamByName('sDate').Value := MainFrm.OBDate.Date;
          Parameters.ParamByName('eDate').Value := MainFrm.OeDate.Date;
          Parameters.ParamByName('cSN').Value := '%' + MainFrm.EOSN.text + '%';
          Parameters.ParamByName('cStaffName').Value := '%';
          Parameters.ParamByName('cStkName').Value := '%';
          Parameters.ParamByName('cOprName').Value := '%';
          Parameters.ParamByName('cPrdtName').Value := '%';
          if MainFrm.CbxSCust.text = 'ȫ��' then
            Parameters.ParamByName('cCustName').Value := '%'
          else
            Parameters.ParamByName('cCustName').Value := '%' + MainFrm.cbxSCust.text + '%';
          Open;
          RefreshQry(MainFrm.OListQry);
        end;
    2: {����˻�����¼}
      if not OperRights(SYS_OPR_ID, '01003', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        with MainFrm.IRHeadQry do
        begin
          Close;
          Parameters.ParamByName('sDate').Value := MainFrm.IRBDate.Date;
          Parameters.ParamByName('eDate').Value := MainFrm.IReDate.Date;
          Parameters.ParamByName('cSN').Value := '%' + MainFrm.EIRSN.text + '%';
          Parameters.ParamByName('cStkName').Value := '%';
          Parameters.ParamByName('cOprName').Value := '%';
          Parameters.ParamByName('cPrdtName').Value := '%';
          if MainFrm.CbxIRProv.text = 'ȫ��' then
            Parameters.ParamByName('cProName').Value := '%'
          else
            Parameters.ParamByName('cProName').Value := '%' + MainFrm.cbxIRProv.text + '%';
          Open;
          REfreshQry(MainFrm.IRListQry);
        end;
    3: {�����˻�����¼}
      with MainFrm.ORHeadQry do
        if not OperRights(SYS_OPR_ID, '01004', SYS_SELECT) then
        begin
          ShowMessage(MSG_USE_LIMITED);
        end
        else
        begin
          Close;
          Parameters.ParamByName('sDate').Value := MainFrm.SRBDate.Date;
          Parameters.ParamByName('eDate').Value := MainFrm.SReDate.Date;
          Parameters.ParamByName('cStkName').Value := '%';
          Parameters.ParamByName('cSN').Value := '%' + MainFrm.ESRSN.text + '%';
          Parameters.ParamByName('cOprName').Value := '%';
          Parameters.ParamByName('cPrdtName').Value := '%';
          if MainFrm.cbxSRCust.text = 'ȫ��' then
            Parameters.ParamByName('cCustName').Value := '%'
          else
            Parameters.ParamByName('cCustName').Value := '%' + MainFrm.cbxSRCust.text + '%';
          Open;
          REfreshQry(MainFrm.ORListQry);
        end;
    4: {����������¼}
      if not OperRights(SYS_OPR_ID, '01005', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        with MainFrm.MHeadQry do
        begin
          Close;
          Parameters.ParamByName('sDate').Value := MainFrm.MBDate.Date;
          Parameters.ParamByName('eDate').Value := MainFrm.MeDate.Date;
          Parameters.ParamByName('cSN').Value := '%' + MainFrm.EMSN.text + '%';
          Parameters.ParamByName('cOprName').Value := '%';
          Parameters.ParamByName('cPrdtName').Value := '%';
          Open;
          REfreshQry(MainFrm.MListQry);
        end;
    5: {����̵㵥��¼}
      if not OperRights(SYS_OPR_ID, '01006', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
        with MainFrm.ChkHeadQry do
        begin
          Close;
          Parameters.ParamByName('sDate').Value := MainFrm.CBDate.Date;
          Parameters.ParamByName('eDate').Value := MainFrm.CeDate.Date;
          Parameters.ParamByName('cSN').Value := '%' + MainFrm.ECSN.text + '%';
          Parameters.ParamByName('cOprName').Value := '%';
          Parameters.ParamByName('cStkName').Value := '%';
          Parameters.ParamByName('cPrdtName').Value := '%';
          if MainFrm.cbxCStk.text = 'ȫ��' then
            Parameters.ParamByName('cStkName').Value := '%'
          else
            Parameters.ParamByName('cStkName').Value := '%' + MainFrm.cbxCStk.text + '%';
          Open;
          REfreshQry(MainFrm.ChkListQry);
        end;
    13: {��Ʒ��������}
      if not OperRights(SYS_OPR_ID, '01015', SYS_BROWSE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
      begin
        RefReshQry(MainFrm.TypeQry);
        RefReshQry(MainFrm.BrandQry);
        RefReshQry(MainFrm.PrdtQry);
        RefReshQry(MainFrm.ChildPrdtQry);
      end;
    14: {��Ӧ����Ϣ����}
      if not OperRights(SYS_OPR_ID, '01016', SYS_BROWSE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
      begin
        RefreshQry(MainFrm.AreaQry);
        RefreshQry(MainFrm.ProInfoQry);
      end;
    15: {�ͻ���Ϣ����}
      if not OperRights(SYS_OPR_ID, '01017', SYS_BROWSE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
      begin
        RefreshQry(MainFrm.AreaQry);
        RefreshQry(MainFrm.CustInfoQry);
      end;
    16: {ҵ��Ա��Ϣ����}
      if not OperRights(SYS_OPR_ID, '01018', SYS_BROWSE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
      end
      else
      begin
        RefreshQry(MainFrm.StaffQry);
      end;
  end;
  lEnd := GetTiCkCount;
  MainFrm.PageResize(MainFrm);
  ShowHide('��ѯ��ʱ��' + FloatToStr((lEnd - lStart) / 1000.0) + '��');
end;

procedure TMainFrm.PA0Click(Sender: TObject);
begin
  OutLookBar.ActivePage := List;
  if (Sender = PA0) then
    Page.ActivePageIndex := 0;
  if (Sender = PA1) then
    Page.ActivePageIndex := 1;
  if Sender = PA2 then
    Page.ActivePageIndex := 2;
  if Sender = PA3 then
    Page.ActivePageIndex := 3;
  if Sender = PA4 then
    Page.ActivePageIndex := 4;
  if Sender = PA5 then
    Page.ActivePageIndex := 5;
  TBNewClick(Sender);
end;

procedure TMainFrm.N13Click(Sender: TObject);
begin
  {��ѯ������Ϣ}
  case (Sender as TMenuItem).Tag - 100 of
    0:
      if not OperRights(SYS_OPR_ID, '01001', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end;
    1:
      if not OperRights(SYS_OPR_ID, '01002', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end;
    2:
      if not OperRights(SYS_OPR_ID, '01003', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end;
    3:
      if not OperRights(SYS_OPR_ID, '01004', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end;
    4:
      if not OperRights(SYS_OPR_ID, '01005', SYS_SELECT) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end;
    5:
      if not OperRights(SYS_OPR_ID, '01005', SYS_BROWSE) then
      begin
        ShowMessage(MSG_USE_LIMITED);
        exit;
      end;
  end;
  Application.CreateForm(TSerachListFrm, SerachListFrm);
  with SerachListFrm do
  begin
    Pages := (Sender as TMenuItem).Tag - 100;
    ShowModal;
    Release;
  end;
  Page.ActivePageIndex := (Sender as TMenuItem).Tag - 100;
  case Page.ActivePageIndex of
    0: PanelTitle.Caption := '��ⵥ';
    1: PanelTitle.Caption := '���ⵥ';
    2: PanelTitle.Caption := '�ɹ��˻���';
    3: PanelTitle.Caption := '�����˻���';
    4: PanelTitle.Caption := '��Ʒ������';
    5: PanelTitle.Caption := '����̵㵥';

    6: PanelTitle.Caption := '�ɹ�ͳ�Ʊ�';
    7: PanelTitle.Caption := '����ͳ�Ʊ�';
    8: PanelTitle.Caption := '�˻�ͳ�Ʊ�';
    9: PanelTitle.Caption := '����ͳ�Ʊ�';
    10: PanelTitle.Caption := '�̵�ͳ�Ʊ�';
    11: PanelTitle.Caption := '�տ��ͳ�Ʊ�';
    12: PanelTitle.Caption := '������ͳ�Ʊ�';

    13: PanelTitle.Caption := '��Ʒ�����';
    14: PanelTitle.Caption := '��Ӧ�̱����';
    15: PanelTitle.Caption := '�ͻ������';
    16: PanelTitle.Caption := 'ҵ��Ա�����';

  end;
  PageResize(Page);
end;

{����}

procedure TMainFrm.N23Click(Sender: TObject);
begin
  Application.CreateForm(TAboutBox, AboutBox);
  with AboutBox do
  begin
    ShowModal;
    Free;
  end;
end;

{������}

procedure TMainFrm.N21Click(Sender: TObject);
begin
  WinExec('calc.exe', SW_ShowNormal);
end;

{ADO��ʽ�µ�����ͷ����}

procedure TMainFrm.GridIHeadTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TMainFrm.GridOHeadDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
{ ��������ʾ
  with (Sender as TDBGridEh) do
  begin
    if (DataSource.DataSet.RecNo mod 2) = 0 then
      Canvas.Brush.Color := $00B5FFB5;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;}
end;

{��¼ϵͳ}

procedure TMainFrm.FormResize(Sender: TObject);
begin
  OnResize := nil;
  with SBar do
  begin
    Panels[0].Width := SBar.Width - Panels[1].Width - Panels[2].Width;
  end;
  if SYS_OPR_ID = '' then
  begin
    Application.CreateForm(TLoginFrm, LoginFrm);
    with LoginFrm do
    begin
      ShowModal;
      if (not LoginOK) then Application.Terminate;
      Free;
    end;
  end;
  SBar.Panels[2].Text := SYS_OPR_NAME;
  WriteDiary(SYS_OPR_ID, caption, -1);
  RefreshData; //������ѯ
end;

{�޸��û�����}

procedure TMainFrm.N25Click(Sender: TObject);
begin
  Application.CreateForm(TChgPsdFrm, ChgPsdFrm);
  with ChgPsdFrm do
  begin
    LabLoginID.caption := SYS_OPR_ID;
    ShowModal;
    Free;
  end;
end;

procedure TMainFrm.N26Click(Sender: TObject);
begin
  Application.CreateForm(TRegFrm, RegFrm);
  with RegFrm do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TMainFrm.DBTVCalcNodeAttributes(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode);
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    sql.Clear;
    Sql.Text := 'Select cParentID From PrdtEnCode where cParentID = '''
      + node.dataset.fieldbyname('cPrdtID').asstring + '''';
    Open;
    Node.HasChildren := not eof;
  end;
end;

procedure TMainFrm.DBTVUserExpand(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode);
var childquery: TADOQuery;
  childdatasource: TDataSource;
begin
  if (node.level + 1 < dbtv.displayfields.count) then exit;

   { Dynamically create new detail parameterized query }
  childdatasource := TDatasource.create(self);
  childdatasource.name := 'ChildDataSource' + inttostr(node.level + 1);
  childquery := TADOQuery.create(self);

  childdatasource.dataset := childquery;
  with childquery do begin
    childquery.sql.assign(ChildPrdtQry.sql);
    childquery.Connection := ChildPrdtQry.Connection;
    Parameters.CreateParameter('cPrdtID', ftString, pdInput, 12, '');
    if lastds = nil then childquery.datasource := dsChild
    else childquery.datasource := lastDS;
    childquery.active := true;
  end;
  with (TreeView as TfcDBTreeView) do begin
    DataSources := DataSources + ';' + ChildDatasource.name;
    displayfields.add(displayfields[displayfields.count - 1]);
    lastDS := Childdatasource;
  end
end;

procedure TMainFrm.MenuItem1Click(Sender: TObject);
begin
  NextLevel := True;
  TBNewClick(Sender);
end;

procedure TMainFrm.HeaderSectionClick(HeaderControl: TfcTreeHeader;
  Section: TfcTreeHeaderSection);
var
  lEnd: integer;
  lStart: integer;
  aField: TField;
  pties: Properties;
  pty: Property_;
begin
  if section.fieldname = '' then exit;
  lStart := GetTickCount;
  if Section <> OldSection then
  begin
    OldSection.ImageIndex := -1;
    OldSection := Section;
  end;
  aField := ((DBTV.ActiveNode.DataSet) as TCustomADODataSet).FieldByName(section.fieldname);
  pties := ((DBTV.ActiveNode.DataSet) as TCustomADODataSet).Recordset.Fields[aField.FieldNo - 1].Get_Properties;
  pty := pties.Get_Item('Optimize');
  pty.Value := True;
  if (Section.ImageIndex = 9)
    or (Section.ImageIndex = -1) then
  begin
    Section.ImageIndex := 10;
    ((DBTV.ActiveNode.DataSet) as TCustomADODataSet).Sort := section.fieldname + ' DESC';
  end
  else
  begin
    Section.ImageIndex := 9;
    ((DBTV.ActiveNode.DataSet) as TCustomADODataSet).Sort := section.fieldname + ' ASC';
  end;
  lEnd := GetTiCkCount;
  pty.Value := False;
  ShowHide('�����ʱ��' + FloatToStr((lEnd - lStart) / 1000.0) + '��');
end;

procedure TMainFrm.N8Click(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '04009', SYS_BROWSE) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  Application.CreateForm(TMainOptionFrm, MainOptionFrm);
  with MainOptionFrm do
  begin
    ShowModal;
    Free;
  end;
end;

end.

