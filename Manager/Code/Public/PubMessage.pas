{****************************************************
*���ܣ�������ʾ��Ϣ�뺯��
*�������ڣ�2003.08.01
*���ߣ�Nathan Lee
*����޸����ڣ�
*****************************************************}
unit PubMessage;

interface

uses
  Windows, Forms, DB, StdCtrls, SysUtils, ADODB, DBGridEh, DBCtrlsEh, ComCtrls,
  Classes, Variants, registry, IniFiles, fcDBTreeView, FileCtrl, DBGridEhImpExp,
  IdGlobal;


//ϵͳ������Ϣ
type
  TSystemInfo = record
    ServerName: string;
    DataBaseName: string;
    BackupDevice: string;
    DataBaseUserID: string;
    DataBaseUserPassword: string;
  end;
{
  �����̣߳�����ͳ��ʱʹ��
type
  TStatThread = class(TThread)
  protected
    procedure Execute; override;
  public
  end;
procedure TStatThread.Execute;
var
  I:integer;
begin
  MainFrm.Bar.Visible := True;
  ShowHide(MSG_PROCESS_DATA);
  for I := 0 to 50 do
    MainFrm.Bar.StepIt;
end;}

const

  MSG_COPYRIGHT = 'CopyRight 2004';
  MSG_ORGANIZATION = 'Fox Studio';
  MSG_APP_TITLE = '���ܽ�����������';

  SYS_DEMO = False; //True:����ʾ�� False:û��ʹ����������

  SYS_BROWSE = 0;
  SYS_INSERT = 1;
  SYS_UPDATE = 2;
  SYS_DELETE = 3;
  SYS_VOUCH = 4;
  SYS_SELECT = 5;
  SYS_PRINT = 6;

  {�����͵��۸�ʽ}
  SYS_QTY_FORMAT = '#,###,###,##0';
  SYS_PRICE_FORMAT = '#,###,###,##0.00';

  MSG_VERSION_DATE_OUT =
    '�������δע�ᣡ����ʹ�������ѹ������������������ϵ�Ի�ȡע����!';

  SYS_USE_DAYS = 30;
  //�����Ķ���
  CB_ShOWDROPDOWN = $14F;
  //����Կ��
  eKey = 'ZSEQSCPKNUK.';
  //��ʾ��Ϣ
  MSG_REALY_EXIT = 'ȷ��Ҫ�˳�ϵͳ��?';
  MSG_REALY_CLOSE = 'ȷ��Ҫ�뿪��?';
  MSG_REALY_DELETE = '���Ҫɾ����?';

  SYS_CONST_MAKER = '�Ƶ���';
  SYS_CONST_HANDLE = '������';
  SYS_CONST_SALER = 'ҵ��Ա';
  SYS_CONST_STORENO = '�ֿ�';

  MSG_PRICE_ERR = '��Ʒ�۸�����';
  MSG_PRDT_ID_ERR = '��Ʒ������������';
  MSG_ID_ALREADY = '�˱���Ѵ��ڣ�������һ��';
  MSG_TID_ERR = '�����볤��ӦΪ��λ';
  MSG_BID_ERR = 'Ʒ�Ʊ��볤��ӦΪ��λ';
  MSG_ID_ERR = '��������Ʒ����';
  MSG_NAME_ERR = '��Ʒ���Ʋ���Ϊ��';
  MSG_STOCK_ERR = '�����������';
  MSG_STOCK_ID_ERR = '�����û�������ŵ���Ʒ';
  MSG_VNO = '�����뷢Ʊ����';
  MSG_PLSE_DATE = '������������';
  MSG_PLSE_HAND = '�����������Ա����';
  MSG_PLSE_STORE = '������ֿ�����';
  MSG_PLSE_SameSTORE = '�����ֿ�������ֿⲻ����ͬ';

  MSG_SAVE_DOON = '�����ѱ������';
  MSG_UPDT_DOON = '�����Ѹ������';
  MSG_TUNE_DOON = '���ݵ������';
  MSG_EXPT_DOON = '�������ݵ������';
  MSG_DELE_DOON = '������ɾ�����';
  MSG_DELE_ERROR = '�����޷�ɾ�����˱�������ʹ����';

  MSG_DATA_ALREADY = '�ü�¼�Ѵ��ڣ�����������';
  MSG_DATA_SAVE_ERR = '���ݴ�������,������û�н��������豸������ϵͳ����Ա��ϵ';
  MSG_PROCESS_DATA = '���ڴ�������,���Ժ򡭡�';
  MSG_DATA_NONE = 'û�з�����������Ϣ';
  MSG_NONE = '';

  //�û�Ȩ�޹�����
  MSG_PSD_CHGERR = '������������벻��ͬ������������';
  MSG_BAR_ERR = '��������벻�ԣ�����������';
  MSG_PSD_ERR = '��������벻�ԣ�����������';
  MSG_LOGIN_ID = '�������û����';
  MSG_LOGIN_ID_ERR = '�޴��û���ţ�����������';
  MSG_LOGIN_ACCESS = '���û��������¼';
  MSG_USE_LIMITED = '�Բ�����û��ʹ�ô˹��ܵ�Ȩ�ޣ�';
  //ϵͳ��־������
  MSG_BACK_DOON = '���ݱ������';
  MSG_RESTORE_DOON = '���ݻָ����';
  //ϵͳ����ά��
  MSG_REQCONST = '�����볣����';
  MSG_REQVALUE = '�����볣��ֵ';
  //�ͻ���Ա������
  MSG_CUSTID_CODE = '�ͻ�����ӦΪ��λ';
  MSG_CUSTID_ERR = '����Ŀͻ����벻����';
  MSG_CUSTNAME_ERR = '�޴˿ͻ���Ϣ';
  MSG_CUSTAREA_ERR = '������ͻ���������';
  MSG_PLSE_CUST = '������ͻ�����';
  MSG_StaffID_ERR = 'Ա���������ӦΪ��λ';
  MSG_StaffID_ERR2 = '��Ա������Ѿ����ڣ���ʹ����һ������';
  MSG_StaffNAME_ERR = '������Ա������';
  MSG_StaffNation_ERR = '������Ա������';
  MSG_DeptName_ERR = '��ѡ�е��벿�ŵ�����';
  //�����ӡ��ʾ
  MSG_PRN_DATA_NONE = 'û�пɹ���ӡ������';
  //������
  MSG_PLSE_VNO = '�����뷢Ʊ����';
  MSG_VNO_DUP = '�˷�Ʊ�����Ѿ����ڣ���������ķ�Ʊ����';
  MSG_BILLNO_DUP = '��֧Ʊ�����Ѿ����ڣ����������֧Ʊ����';
  QES_DELE_SUBJECT = '���Ҫ��ɾ�������Ŀ��';
  MSG_BANKNAME_ERR = '���������Ʋ���Ϊ��';
  MSG_ACCTID_ERR = '�����ʺ�����';
  MSG_ACCTID_ALREADY = '�������ʺ��Ѵ��ڣ�������һ���µı��';
  MSG_PLSE_SUMMINFO = '������ժҪ��Ϣ';
  MSG_ACCTRECE_ERR = '�������������(֧)������Ӧ��(��)��';
  MSG_AMT_ERR = '�����������';
  MSG_SUB_ERR = '��Ŀ�����������';
  MSG_ACCTID_DUP = 'ת����ת���ʺ��ظ�';
  MSG_FIRST_SUB = '��һ����Ŀ�������ֽ��Ŀ';
  MSG_AMT_ERR2 = '����Ľ����ڵ���ʵ�ʽ��';

var
  {��Ļ�ĳ����}
  Desk_Height, Desk_Width: integer;
  {ϵͳ������Ա����/Ȩ��/�����͵��۸�ʽ}
  SYS_OPR_ID, SYS_OPR_NAME, QTY_DIG_FRT: string;
  {ϵͳʹ��}
  SYS_DATE_OUT: TDateTime;
  RSystemInfo: TSystemInfo;

  {****************************************************}
  {ϵͳʹ�õĹ������������                            }
  {****************************************************}

  {*********************************
  *����/�������ƣ�function DBConnect:Boolean;
  *���ܣ��������ݿ�
  *���룺
  *
  *�����-1:�����ļ������� 0 ���ݿ����Ӳ��ɹ� 1 �ɹ�����
  *������
  *********************************}
function DBConnect(): Integer;

  {*********************************
  *����/�������ƣ�AddComBo(ComBo: TComBoBox; Qry: TADOQuery; bAll: Boolean);
  *���ܣ���Qry��������ӵ�ָ����ComboBox
  *���룺Combo:Ҫ������ݵ�ComboBox��Qry���������ݵ�Query��
  *      bAll:�棺���һ����ȫ�������٣������
  *��������ComboBox
  *������
  *********************************}
procedure AddComBo(ComBo: TComBoBox; Qry: TADOQuery; bAll: Boolean);

  {*********************************
  *����/�������ƣ�FillStr(len: integer; Chr,Str: string): string;
  *���ܣ���ָ�����ַ�����ַ���
  *���룺len:�ܳ���;chr:���������ַ�;Str:�������ַ���
  *�����������Str
  *������
  *********************************}
function FillStr(len: integer; Chr, Str: string): string;

  {*********************************
  *����/�������ƣ�ShowHide(Msg:String)
  *���ܣ�����Frm��ʾ��д����ʾ��Ϣ
  *���룺��Frm�����ֱ����ΪMainFrm����ʾ��ʹ��Panel�����־���Panel
  *      Msg����ʾ����ʾ��Ϣ
  *�����
  *������
  *********************************}
procedure ShowHide(Msg: string);

  {*********************************
  *����/�������ƣ�RefreshQry(CurQry: TADOQuery)
  *���ܣ�ˢ��ADOQuery
  *���룺CurQry:Ҫˢ�µ�query
  *�����
  *������
  *********************************}
procedure RefreshQry(CurQry: TADOQuery);

  {*********************************
  *����/�������ƣ�SmallTOBig(small: real): string;
  *���ܣ���Сд�Ľ��ĳɴ�д����ʽ
  *���룺Samll:Ҫת������ֵ
  *�����
  *������
  *  edit1.text:=SmallTOBig(1234567890.1234);�����Զ�Ĭ��С�������λ
  *********************************}
function SmallTOBig(small: real): string;

  {*********************************
  *����/�������ƣ�fcDBTree: TfcDBTreeView; SelQry: TQuery; PrdtID:
                               string): Boolean;
  *���ܣ���DBGridEH��ʵ�ֶ�ѡ��
  *���룺SelGrid�����ж���ѡ���Grid
         SelQry:�������ݵ�Query
         PrdtID:���Ϊ�վͷ��ض�ѡ������ͷ���һ��ID
  *�����
  *������
  *  edit1.text:=SmallTOBig(1234567890.1234);�����Զ�Ĭ��С�������λ
  *********************************}
function PrdtIDSelect(fcDBTree: TfcDBTreeView; SelQry: TADOQuery; PrdtID:
  string): Boolean;

//��ȡ������������ļ�systeminfo.ini
function GetSystemInfo: Boolean;

  {*********************************
  *����/�������ƣ�FormatGrid(Grid: TDBGridEh; Flag integer): Boolean;
  *���ܣ���DBGridEHָ��ÿ�еĸ�ʽ
  *���룺Grid��Ҫָ����ʽ��Grid
         Flag:��ͬ��ʽ���
  *�����
  *������
  *  FormatGrid(Grid,0)
  *********************************}
function FormatGrid(sGrid: TDBGridEh; Flag: integer): Boolean;

  {*********************************
  *����/�������ƣ�ChgGridWidth(GridEh:TDBGridEh;Cols:integer)
  *���ܣ���Ļ��С�ı�ʱ��̬�޸�GridEh�еĿ��
  *      ��ȡϵͳ�����ļ�SystemInfo.INI���������ʹ�ò�����������
  *���룺GridEh:Ҫ����п��Grid��Cols:������
  *�����
  *
  *������
  *********************************}
procedure ChgGridWidth(GridEh: TDBGridEh);

{****************************************************}
{����/�������ƣ�ProcessData(Flag:Boolean);           }
{���ܣ��ڳ�ʱ��ͳ������ʾ��̬Ч��                    }
{���룺Falg:=TRUE,��ʼͳ��                           }
{      Falg:=FALSE,����ͳ��                          }
{�������                                            }
{������ProcessData(True);                            }
{****************************************************}
procedure ProcessData(Flag: Boolean);

{****************************************************}
{����/�������ƣ�GridTitleBtnClickSort;               }
{���ܣ�������ͷ����ADOQueryר��                      }
{���룺Sender                                        }
{      Column                                        }
{�������                                            }
{������GridTitleBtnClickSort;                        }
{****************************************************}
procedure GridTitleBtnClickSort(Sender: TObject; Column: TColumnEh);

{****************************************************}
{����/�������ƣ�Crypt(Text: string): string;         }
{���ܣ���/�����ַ���                                 }
{���룺Ҫ��/���ܵ��ַ���                             }
{                                                    }
{�����                                              }
{������crypt('abc')                                  }
{****************************************************}
function Crypt(Text: string): string;

{****************************************************}
{����/�������ƣ�Crypt(Text: string): string;         }
{���ܣ��û�ʹ��Ȩ���ж�                              }
{���룺��¼����Ȩ�ޱ��                              }
{                                                    }
{������桢��                                        }
{������OperRights('2004001',SYS_BROWSE)                                  }
{****************************************************}
function OperRights(OprID: string; FunID: string; RightsID: integer): Boolean;

{****************************************************}
{����/�������ƣ�WriteDiary;                          }
{���ܣ�д������־                                    }
{���룺OprID,FunID,RightsID                          }
{                                                    }
{�����                                              }
{������                                              }
{****************************************************}
function WriteDiary(OprID: string; FunID: string; RightsID: integer): Boolean;

{****************************************************}
{����/�������ƣ�ExportToXLS;                         }
{���ܣ���������Excel�ļ�                           }
{���룺GridEH,FileName                               }
{                                                    }
{�����Boolean                                       }
{������ExportToXLS(Grid,'����ͳ�ƣ����ͻ���')        }
{****************************************************}
function ExportToXLS(GridEH: TDBGridEH; FileName: string): Boolean;

{****************************************************}
{����/�������ƣ�GetCPUID:string;                     }
{���ܣ���ȡCPU ID �� CPU Vendor                      }
{���룺��                                            }
{                                                    }
{�����CPUID                                         }
{������GetCPUID                                      }
{****************************************************}
function Q1dfe3df3df4r4dfg: string;
function L398jkfd93r4fjk938: string;

function f343834djdf398: boolean;
function f345iiuko83748(FunID: integer): Boolean;

implementation
uses Main;


function DBConnect(): Integer;
var
  ADOConnectString: string;
begin
  if not GetSystemInfo then
  begin
    Result := 0;
  end
  else
  begin
    MainFrm.ADOConn.Connected := False;
    ADOConnectString := 'Password=' + RSystemInfo.DataBaseUserPassword + ';' +
      'Persist Security Info=True;User ID=' + RSystemInfo.DataBaseUserID + ';' +
      'Initial Catalog=' + RSystemInfo.DataBaseName + ';' +
      'Data Source=' + RSystemInfo.ServerName + ';';
    MainFrm.ADOConn.ConnectionString := 'Provider=SQLOLEDB.1;' + ADOConnectString +
      'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;';
    try
      MainFrm.ADOConn.Connected := true;
    except
      Result := 0;
    end;
    Result := 1;
  end;
end;

procedure AddComBo(ComBo: TComBoBox; Qry: TADOQuery; bAll: Boolean);
begin
  ComBo.Items.Clear;
  if bAll then
  begin
    ComBo.Items.Add('ȫ��');
    Combo.Itemindex := Combo.Items.IndexOf('ȫ��');
  end;
  with Qry do
  begin
    Close;
    Open;
    while not eof do
    begin
      ComBo.Items.Add(Fields[0].AsString);
      Next;
    end;
  end;
end;

{�Զ�����ִ�����}

function FillStr(len: integer; Chr, Str: string): string;
var
  I: Integer;
begin
  for I := 1 to (len - length(Str)) do Str := Chr + Str;
  Result := Str;
end;


{д��ʾ����Ϣ}

procedure ShowHide(Msg: string);
begin
  MainFrm.SBar.Panels[0].Text := Msg;
  Application.ProcessMessages;
end;

  {ˢ��ADOQuery}

procedure RefreshQry(CurQry: TADOQuery);
var
  BM: TbookMark;
begin
  try
    with CurQry do
    begin
      BM := GetBookMark;
      Close;
      Open;
      GotoBookMark(BM);
    end;
  finally
    CurQry.FreeBookMark(BM);
  end;
end;


  {Сд���ת���ɴ�д���}

function SmallTOBig(small: real): string;
var
  SmallMonth, BigMonth: string;
  wei1, qianwei1: string[2];
  qianwei, dianweizhi, qian: integer;
begin
  {------- �޸Ĳ�����ֵ����ȷ -------}
  {С������λ�ã���Ҫ�Ļ�Ҳ���ԸĶ�-2ֵ}
  qianwei := -2;
  {ת���ɻ�����ʽ����Ҫ�Ļ�С�����Ӷ༸����}
  Smallmonth := formatfloat('0.00', small);
  {---------------------------------}
  dianweizhi := pos('.', Smallmonth); {С�����λ��}
  {ѭ��Сд���ҵ�ÿһλ����Сд���ұ�λ�õ����}
  for qian := length(Smallmonth) downto 1 do
  begin
    {��������Ĳ���С����ͼ���}
    if qian <> dianweizhi then
    begin
      {λ���ϵ���ת���ɴ�д}
      case strtoint(copy(Smallmonth, qian, 1)) of
        1: wei1 := 'Ҽ';
        2: wei1 := '��';
        3: wei1 := '��';
        4: wei1 := '��';
        5: wei1 := '��';
        6: wei1 := '½';
        7: wei1 := '��';
        8: wei1 := '��';
        9: wei1 := '��';
        0: wei1 := '��';
      end;
      {�жϴ�дλ�ã����Լ�������real���͵����ֵ}
      case qianwei of
        -3: qianwei1 := '��';
        -2: qianwei1 := '��';
        -1: qianwei1 := '��';
        0: qianwei1 := 'Ԫ';
        1: qianwei1 := 'ʰ';
        2: qianwei1 := '��';
        3: qianwei1 := 'ǧ';
        4: qianwei1 := '��';
        5: qianwei1 := 'ʰ';
        6: qianwei1 := '��';
        7: qianwei1 := 'ǧ';
        8: qianwei1 := '��';
        9: qianwei1 := 'ʮ';
        10: qianwei1 := '��';
        11: qianwei1 := 'ǧ';
      end;
      inc(qianwei);
      BigMonth := wei1 + qianwei1 + BigMonth; {��ϳɴ�д���}
    end;
  end;
  SmallTOBig := BigMonth;
end;

function PrdtIDSelect(fcDBTree: TfcDBTreeView; SelQry: TADOQuery; PrdtID:
  string): Boolean;
var
  i: Integer;
begin
 // fcDBTree.SortMultiSelectList;
  for i := 0 to fcDBTree.MultiSelectListCount - 1 do
  begin
    with fcDBTree.MultiSelectList[i] do
    begin
      DataSet.GotoBookmark(Bookmark);
      SelQry.Edit;
      SelQry.FieldByName('cPrdtID').Value := DataSet.Fields[0].AsString;
      if i < fcDBTree.MultiSelectListCount - 1 then
        SelQry.Append;
    end;
  end;
{  if SelGrid.SelectedRows.Count > 0 then
    with SelGrid.DataSource.DataSet do
      for i := 0 to SelGrid.SelectedRows.Count - 1 do
      begin
        GotoBookmark(pointer(SelGrid.SelectedRows.Items[i]));
        SelQry.Edit;
        SelQry.FieldByName('cPrdtID').Value := Fields[0].AsString;
        if i < SelGrid.SelectedRows.Count - 1 then
          SelQry.Append;
      end
  else if PrdtID <> '' then
  begin
    SelQry.Edit;
    SelQry.FieldByName('cPrdtID').Value := PrdtID;
  end;}
end;

{*********************************
*����/�������ƣ�GetSystemInfo: Boolean;
*���ܣ����򴴽�ʱ���øú���
*      ��ȡϵͳ�����ļ�SystemInfo.INI���������ʹ�ò�����������
*���룺
*�����True:����ȡ�����ݴ���RSystemInfo��¼��
*      False:�����ļ�������
*������
*********************************}

function GetSystemInfo: Boolean;
var
  Ini: TIniFile;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + ExtractFileName('SystemInfo.ini')) then
  begin
    Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + ExtractFileName('SystemInfo.ini'));
    with Ini do
    begin
      RSystemInfo.ServerName := ReadString('DBInfo', 'ServerName', RSystemInfo.ServerName);
      RSystemInfo.DataBaseName := ReadString('DBInfo', 'DataBaseName', RSystemInfo.DataBaseName);
      RSystemInfo.BackupDevice := ReadString('DBInfo', 'BackupDevice', RSystemInfo.BackupDevice);
      RSystemInfo.DataBaseUserID := ReadString('DBInfo', 'DataBaseUserID', RSystemInfo.DataBaseUserID);
      RSystemInfo.DataBaseUserPassword :=
        ReadString('DBInfo', 'DataBaseUserPassword', RSystemInfo.DataBaseUserPassword);
    end;
    Result := True;
  end
  else
    Result := False;
end;

{*********************************************************************
*����/�������ƣ�ChgGridWidth(GridEh:TDBGridEh;Cols:integer)          *
*���ܣ���Ļ��С�ı�ʱ��̬�޸�GridEh�еĿ��                          *
*      ��ȡϵͳ�����ļ�SystemInfo.INI���������ʹ�ò�����������      *
*���룺GridEh:Ҫ����п��Grid��Cols:������                          *
*�����                                                              *
*                                                                    *
*������                                                              *
*********************************************************************}

procedure ChgGridWidth(GridEh: TDBGridEh);
var
  iw, I, iPos: integer;
begin
  iw := 0;
  iPos := iw;
  with GridEh do
  begin
    if DataSource.DataSet.Active then
    begin
      for I := 0 to (GridEh.Columns.Count - 1) do //DataSource.DataSet.FieldCount
      begin
        if (Pos('����', Columns[I].Title.Caption) > 0)
          or (Pos('����', Columns[I].Title.Caption) > 0)
          or (Pos('����', Columns[I].Title.Caption) > 0) then
          iPos := I
        else
          iw := iw + Columns[I].Width;
      end;
      Columns[iPos].Width := Width - 25 - iw;
    end;
  end;
end;

function FormatGrid(sGrid: TDBGridEh; Flag: integer): Boolean;
var
  I: integer;
begin
  with sGrid do
  begin
    Columns.AddAllColumns(True);
    if Flag = 0 then {��ʱ��ͳ��}
    begin
      Columns[0].Width := 100;
      Columns[0].Title.Caption := '����';
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '�ϼ�';
      Columns[1].Width := 100;
      Columns[1].Title.Caption := '��Ʒ����';
      Columns[2].Width := 240;
      Columns[2].Title.Caption := '��Ʒ����';
      Columns[3].Width := 35;
      Columns[3].Title.Caption := '��λ';
      Columns[4].Width := 80;
      Columns[4].Title.Caption := '����';
      Columns[4].Footer.ValueType := fvtSum;
      Columns[4].DisplayFormat := QTY_DIG_FRT;
      Columns[4].Footer.DisplayFormat := QTY_DIG_FRT;
      Columns[4].Footer.FieldName := 'TQty';
      Columns[5].Width := 100;
      Columns[5].DisplayFormat := '##,###,##0.00';
      Columns[5].Title.Caption := '���';
      Columns[5].Footer.ValueType := fvtSum;
      Columns[5].Footer.FieldName := 'TAmt';
      Columns[5].Footer.DisplayFormat := '##,###,##0.00';
    end
    else {����Ʒͳ��}
    begin
      Columns[0].Width := 100;
      Columns[0].Title.Caption := '��Ʒ����';
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '�ϼ�';
      Columns[1].Width := 340;
      Columns[1].Title.Caption := '��Ʒ����';
      Columns[2].Width := 35;
      Columns[2].Title.Caption := '��λ';
      Columns[3].Width := 80;
      Columns[3].Title.Caption := '����';
      Columns[3].Footer.ValueType := fvtSum;
      Columns[3].Footer.FieldName := 'TQty';
      Columns[3].DisplayFormat := QTY_DIG_FRT;
      Columns[3].Footer.DisplayFormat := QTY_DIG_FRT;
      Columns[4].Width := 100;
      Columns[4].Title.Caption := '���';
      Columns[4].Footer.ValueType := fvtSum;
      Columns[4].Footer.FieldName := 'TAmt';
      Columns[4].DisplayFormat := '##,###,##0.00';
      Columns[4].Footer.DisplayFormat := '##,###,##0.00';
    end;
    for I := 0 to Columns.Count - 1 do
    begin
      Columns[I].Title.TitleButton := True;
    end;
  end;
  Result := True;
end;

{****************************************************}
{����/�������ƣ�ProcessData(Flag:Boolean);           }
{���ܣ��ڳ�ʱ��ͳ������ʾ��̬Ч��                    }
{���룺Falg:=TRUE,��ʼͳ��                           }
{      Falg:=FALSE,����ͳ��                          }
{�������                                            }
{������ProcessData(True);                            }
{****************************************************}

procedure ProcessData(Flag: Boolean);
begin
  if Flag then
    ShowHide(MSG_PROCESS_DATA)
  else
    ShowHide(MSG_NONE);
end;

{****************************************************}
{����/�������ƣ�GridTitleBtnClickSort;               }
{���ܣ�������ͷ����ADOQueryר��                      }
{���룺Sender                                        }
{      Column                                        }
{�������                                            }
{������GridTitleBtnClickSort;                        }
{****************************************************}

procedure GridTitleBtnClickSort(Sender: TObject; Column: TColumnEh);
var
  lEnd: integer;
  lStart: integer;
  aField: TField;
  pties: Properties;
  pty: Property_;
begin
  lStart := GetTickCount;
  aField := ((Sender as TDBGridEh).DataSource.DataSet as TCustomADODataSet).FieldByName(Column.FieldName);
  pties := ((Sender as TDBGridEh).DataSource.DataSet as TCustomADODataSet).Recordset.Fields[aField.FieldNo - 1].Get_Properties;
  pty := pties.Get_Item('Optimize');
  pty.Value := True;
  if (Column.Title.SortMarker = smNoneEh)
    or (Column.Title.SortMarker = smUpEh) then
  begin
    Column.Title.SortMarker := smDownEh;
    ((Sender as TDBGridEh).DataSource.DataSet as TCustomADODataSet).Sort := Column.FieldName + ' DESC';
  end
  else
  begin
    Column.Title.SortMarker := smUpEh;
    ((Sender as TDBGridEh).DataSource.DataSet as TCustomADODataSet).Sort := Column.FieldName + ' ASC';
  end;
  lEnd := GetTiCkCount;
  pty.Value := False;
  ShowHide('�����ʱ��' + FloatToStr((lEnd - lStart) / 1000.0) + '��');
{  if (Sender as TDBGridEh).DataSource.DataSet.RecordCount > 0 then
  begin
  end;}
end;

{****************************************************}
{����/�������ƣ�Crypt(Text: string): string;         }
{���ܣ���/�����ַ���                                 }
{���룺Ҫ��/���ܵ��ַ���                             }
{                                                    }
{�����                                              }
{������crypt('abc')                                  }
{****************************************************}

function Crypt(Text: string): string;
var
  longkey, cText: string;
  i: integer;
  toto: char;
begin
  for i := 0 to (length(Text) div length(ekey)) do
    longkey := longkey + ekey;

  for i := 1 to length(text) do
  begin
    toto := chr((ord(text[i]) xor ord(longkey[i]))); // XOR algorithm
    cText := cText + toto;
  end;
  Result := cText;
end;

{****************************************************}
{����/�������ƣ�Crypt(Text: string): string;         }
{���ܣ��û�ʹ��Ȩ���ж�                              }
{���룺��¼����Ȩ�ޱ��                              }
{                                                    }
{������桢��                                        }
{������Rights('2004001',SYS_BROWSE)                                  }
{****************************************************}

function OperRights(OprID: string; FunID: string; RightsID: integer): Boolean;
var
  Rights: Boolean;
begin
  Rights := False;
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Select bBrowse,bInsert,bUpdate,bDelete,bVouch,bStat,bPrnint '
      + 'From RuleRights '
      + 'Where cFunID = :FunID '
      + 'And iRuleID in (select iRuleID  From StaffRole where cStaffID = :OprID)';
    Parameters.ParamByName('FunID').Value := FunID;
    Parameters.ParamByName('OprID').Value := OprID;
    Open;
    while not eof do
    begin
      if Fields[RightsID].AsBoolean then
        Rights := Fields[RightsID].Value;
      next;
    end;
  end;
  if SYS_OPR_ID = 'ADMIN' then Rights := True;
  Result := Rights;
end;

{****************************************************}
{����/�������ƣ�WriteDiary;                          }
{���ܣ�д������־                                    }
{���룺OprID,FunID,RightsID                          }
{                                                    }
{�����                                              }
{������                                              }
{****************************************************}

function WriteDiary(OprID: string; FunID: string; RightsID: integer): Boolean;
begin
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Text := 'Exec P_WriteDiary :cOprID,:cFunID,:iRightsID ';
    Parameters.ParamByName('cOprID').Value := OprID;
    Parameters.ParamByName('cFunID').Value := FunID;
    Parameters.ParamByName('iRightsID').Value := RightsID;
    ExecSql;
  end;
  Result := True;
end;

{****************************************************}
{����/�������ƣ�ExportToXLS;                         }
{���ܣ���������Excel�ļ�                           }
{���룺GridEH,FileName                               }
{                                                    }
{�����Boolean                                       }
{������ExportToXLS(Grid,'����ͳ�ƣ����ͻ���')        }
{****************************************************}

function ExportToXLS(GridEH: TDBGridEH; FileName: string): Boolean;
var
  Dir: string;
  lEnd, lStart: integer;
begin
  if SelectDirectory('��ѡ���ļ���', '', Dir) then
    Dir := Dir + '\' + FileName + '.XLS'
  else
    Dir := FileName + '.XLS';

  lStart := GetTickCount;
  SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, GridEH, Dir, true);
  Application.ProcessMessages;
  lEnd := GetTiCkCount;
  ShowHide('�������ݺ�ʱ��' + FloatToStr((lEnd - lStart) / 1000.0) + '��');
  Result := True;
end;
{****************************************************}
{����/�������ƣ�Crypt(Text: string): string;         }
{���ܣ���ȡCPU ID �� CPU Vendor                      }
{���룺��                                            }
{                                                    }
{�����CPUID                                         }
{������GetCPUID                                      }
{****************************************************}
type
  TCPUID = array[1..4] of Longint;
  TVendor = array[0..11] of char;

function GetCpuIDx: TCPUID; assembler; register;
asm
  PUSH    EBX         {Save affected register}
  PUSH    EDI
  MOV     EDI,EAX     {@Resukt}
  MOV     EAX,1
  DW      $A20F       {CPUID Command}
  STOSD               {CPUID[1]}
  MOV     EAX,EBX
  STOSD               {CPUID[2]}
  MOV     EAX,ECX
  STOSD               {CPUID[3]}
  MOV     EAX,EDX
  STOSD               {CPUID[4]}
  POP     EDI         {Restore registers}
  POP     EBX
end;

function GetCPUVendorx: TVendor; assembler; register;
asm
  PUSH    EBX               {Save affected register}
  PUSH    EDI
  MOV     EDI,EAX           {@Result (TVendor)}
  MOV     EAX,0
  DW      $A20F             {CPUID Command}
  MOV     EAX,EBX
  XCHG          EBX,ECX     {save ECX result}
  MOV                   ECX,4
@1:
  STOSB
  SHR     EAX,8
  LOOP    @1
  MOV     EAX,EDX
  MOV                   ECX,4
@2:
  STOSB
  SHR     EAX,8
  LOOP    @2
  MOV     EAX,EBX
  MOV                   ECX,4
@3:
  STOSB
  SHR     EAX,8
  LOOP    @3
  POP     EDI              {Restore registers}
  POP     EBX
end;

function Q1dfe3df3df4r4dfg: string;
var
  CPUID: TCPUID;
  I: Integer;
  Q323, K525: string;
begin
  for I := Low(CPUID) to High(CPUID) do CPUID[I] := -1;
  CPUID := GetCPUIDx;
  Q323 := IntToStr(CPUID[1]) + IntToStr(CPUID[2]) + IntToStr(CPUID[3]) + IntToStr(CPUID[4]);
  k525 := '';
  for I := 1 to length(Q323) do
  begin
    if IsNumeric(Q323[I]) then
      K525 := K525 + Q323[I]
    else
      K525 := K525 + '0';
  end;
  result := K525;
end;

function L398jkfd93r4fjk938: string;
begin
  result := GetCPUVendorx;
end;

function f343834djdf398: boolean;
var
  Reg: Tregistry;
  eie897: Boolean;
  MHz: integer;
begin
  Reg := Tregistry.Create;
  try
    with Reg do
    begin
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey('HARDWARE\DESCRIPTION\System\CentralProcessor\0', False);
      MHz := ReadInteger('~MHz');

      if not ValueExists('ProcessorID') then
      begin
      {δע�����д���ִ�е��ܴ���}
        CloseKey;
        OpenKey('HARDWARE\DESCRIPTION\System\FloatingPointProcessor\0', False);
        if not ValueExists('~MHz') then
          WriteInteger('~MHz', MHz);
        eie897 := False;
      end
      else
    //�Ƚ�ע�����Ƿ���ȷ
        eie897 := ReadString('ProcessorID') = IntToStr(((StrToInt64(Q1dfe3df3df4r4dfg)) shl 3) shr 1);
      CloseKey;
      Free;
    end;
  except
    Reg.CloseKey;
    Reg.Free;
    eie897 := False;
  end;
  result := eie897;
end;

function f345iiuko83748(FunID: integer): Boolean;
var
  Reg: Tregistry;
  MHz, MHz1: integer;
  AA: Boolean;
begin
  case FunID of
    1: //ע���ʽ
      begin
        Reg := Tregistry.Create;
        with Reg do
        begin
          RootKey := HKEY_LOCAL_MACHINE;
          OpenKey('HARDWARE\DESCRIPTION\System\CentralProcessor\0', False);
          MHz := ReadInteger('~MHz');
          CloseKey;
          OpenKey('HARDWARE\DESCRIPTION\System\FloatingPointProcessor\0', False);
          MHz1 := ReadInteger('~MHz');
          if MHz1 > (MHz + 100) then
            aa := True
          else
          begin
            WriteInteger('~MHz', MHz1 + 1);
            aa := False;
          end;
          CloseKey;
          Free;
        end;
      end;
    2: //��¼��ʽ
      begin
        with MainFrm.ADOTmp do
        begin
          Close;
          Sql.Clear;
          Sql.Text := 'Select count(*) From SaleHead';
          Open;
          MHz := Fields[0].Value;
          Close;
          Sql.Clear;
          Sql.Text := 'Select count(*) From StockHead';
          Open;
          MHz1 := Fields[0].Value;
          if (MHz + MHz1) > 100 then
            aa := True;
        end;
      end;
  end;
  Result := aa;
end;
end.

