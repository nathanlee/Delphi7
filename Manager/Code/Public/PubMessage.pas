{****************************************************
*功能：公用提示信息与函数
*创建日期：2003.08.01
*作者：Nathan Lee
*最后修改日期：
*****************************************************}
unit PubMessage;

interface

uses
  Windows, Forms, DB, StdCtrls, SysUtils, ADODB, DBGridEh, DBCtrlsEh, ComCtrls,
  Classes, Variants, registry, IniFiles, fcDBTreeView, FileCtrl, DBGridEhImpExp,
  IdGlobal;


//系统配置信息
type
  TSystemInfo = record
    ServerName: string;
    DataBaseName: string;
    BackupDevice: string;
    DataBaseUserID: string;
    DataBaseUserPassword: string;
  end;
{
  保留线程，用以统计时使用
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
  MSG_APP_TITLE = '智能进销存分析软件';

  SYS_DEMO = False; //True:是演示版 False:没有使用日期限制

  SYS_BROWSE = 0;
  SYS_INSERT = 1;
  SYS_UPDATE = 2;
  SYS_DELETE = 3;
  SYS_VOUCH = 4;
  SYS_SELECT = 5;
  SYS_PRINT = 6;

  {数量和单价格式}
  SYS_QTY_FORMAT = '#,###,###,##0';
  SYS_PRICE_FORMAT = '#,###,###,##0.00';

  MSG_VERSION_DATE_OUT =
    '该软件尚未注册！现在使用期限已过，请向软件开发商联系以获取注册码!';

  SYS_USE_DAYS = 30;
  //按键的定义
  CB_ShOWDROPDOWN = $14F;
  //加密钥匙
  eKey = 'ZSEQSCPKNUK.';
  //提示信息
  MSG_REALY_EXIT = '确定要退出系统吗?';
  MSG_REALY_CLOSE = '确定要离开吗?';
  MSG_REALY_DELETE = '真的要删除吗?';

  SYS_CONST_MAKER = '制单人';
  SYS_CONST_HANDLE = '经手人';
  SYS_CONST_SALER = '业务员';
  SYS_CONST_STORENO = '仓库';

  MSG_PRICE_ERR = '商品价格有误';
  MSG_PRDT_ID_ERR = '商品编码输入有误';
  MSG_ID_ALREADY = '此编号已存在，请另输一个';
  MSG_TID_ERR = '类别编码长度应为二位';
  MSG_BID_ERR = '品牌编码长度应为二位';
  MSG_ID_ERR = '请输入商品编码';
  MSG_NAME_ERR = '商品名称不可为空';
  MSG_STOCK_ERR = '库存数量不足';
  MSG_STOCK_ID_ERR = '库存中没有这个编号的商品';
  MSG_VNO = '请输入发票号码';
  MSG_PLSE_DATE = '日期输入有误';
  MSG_PLSE_HAND = '请输入相关人员姓名';
  MSG_PLSE_STORE = '请输入仓库名称';
  MSG_PLSE_SameSTORE = '请调入仓库与调出仓库不可相同';

  MSG_SAVE_DOON = '数据已保存完毕';
  MSG_UPDT_DOON = '数据已更改完毕';
  MSG_TUNE_DOON = '数据调整完成';
  MSG_EXPT_DOON = '报表数据导出完毕';
  MSG_DELE_DOON = '数据已删除完毕';
  MSG_DELE_ERROR = '编码无法删除，此编码仍在使用中';

  MSG_DATA_ALREADY = '该记录已存在，请重新输入';
  MSG_DATA_SAVE_ERR = '数据处理有误,可能是没有建立备份设备，请与系统管理员联系';
  MSG_PROCESS_DATA = '正在处理数据,请稍候……';
  MSG_DATA_NONE = '没有符合条件的信息';
  MSG_NONE = '';

  //用户权限管理用
  MSG_PSD_CHGERR = '两次输入的密码不相同，请重新输入';
  MSG_BAR_ERR = '输入的条码不对，请重新输入';
  MSG_PSD_ERR = '输入的密码不对，请重新输入';
  MSG_LOGIN_ID = '请输入用户编号';
  MSG_LOGIN_ID_ERR = '无此用户编号，请重新输入';
  MSG_LOGIN_ACCESS = '此用户不允许登录';
  MSG_USE_LIMITED = '对不起！您没有使用此功能的权限！';
  //系统日志及备份
  MSG_BACK_DOON = '数据备份完成';
  MSG_RESTORE_DOON = '数据恢复完成';
  //系统常量维护
  MSG_REQCONST = '请输入常量名';
  MSG_REQVALUE = '请输入常量值';
  //客户、员工管理
  MSG_CUSTID_CODE = '客户编码应为六位';
  MSG_CUSTID_ERR = '输入的客户编码不存在';
  MSG_CUSTNAME_ERR = '无此客户信息';
  MSG_CUSTAREA_ERR = '请输入客户所在区域';
  MSG_PLSE_CUST = '请输入客户名称';
  MSG_StaffID_ERR = '员工编号有误，应为七位';
  MSG_StaffID_ERR2 = '此员工编号已经存在，请使用另一个编码';
  MSG_StaffNAME_ERR = '请输入员工姓名';
  MSG_StaffNation_ERR = '请输入员工籍贯';
  MSG_DeptName_ERR = '请选中调入部门的名称';
  //报表打印提示
  MSG_PRN_DATA_NONE = '没有可供打印的数据';
  //帐务处理
  MSG_PLSE_VNO = '请输入发票号码';
  MSG_VNO_DUP = '此发票号码已经存在，请检查输入的发票号码';
  MSG_BILLNO_DUP = '此支票号码已经存在，请检查输入的支票号码';
  QES_DELE_SUBJECT = '真的要是删除这个科目吗？';
  MSG_BANKNAME_ERR = '开户行名称不可为空';
  MSG_ACCTID_ERR = '银行帐号有误';
  MSG_ACCTID_ALREADY = '此银行帐号已存在，请输入一个新的编号';
  MSG_PLSE_SUMMINFO = '请输入摘要信息';
  MSG_ACCTRECE_ERR = '金额输入有误，收(支)数大于应收(付)数';
  MSG_AMT_ERR = '金额输入有误';
  MSG_SUB_ERR = '科目编号输入有误';
  MSG_ACCTID_DUP = '转入与转出帐号重复';
  MSG_FIRST_SUB = '第一个科目必须是现金科目';
  MSG_AMT_ERR2 = '输入的金额大于单据实际金额';

var
  {屏幕的长与宽}
  Desk_Height, Desk_Width: integer;
  {系统操作人员代码/权限/数量和单价格式}
  SYS_OPR_ID, SYS_OPR_NAME, QTY_DIG_FRT: string;
  {系统使用}
  SYS_DATE_OUT: TDateTime;
  RSystemInfo: TSystemInfo;

  {****************************************************}
  {系统使用的公共函数与过程                            }
  {****************************************************}

  {*********************************
  *函数/过程名称：function DBConnect:Boolean;
  *功能：连接数据库
  *输入：
  *
  *输出：-1:配置文件不存在 0 数据库连接不成功 1 成功连接
  *举例：
  *********************************}
function DBConnect(): Integer;

  {*********************************
  *函数/过程名称：AddComBo(ComBo: TComBoBox; Qry: TADOQuery; bAll: Boolean);
  *功能：将Qry的内容添加到指定的ComboBox
  *输入：Combo:要添加内容的ComboBox；Qry：包含数据的Query；
  *      bAll:真：添加一个‘全部’；假：不添加
  *输出：填充ComboBox
  *举例：
  *********************************}
procedure AddComBo(ComBo: TComBoBox; Qry: TADOQuery; bAll: Boolean);

  {*********************************
  *函数/过程名称：FillStr(len: integer; Chr,Str: string): string;
  *功能：用指定的字符填充字符串
  *输入：len:总长度;chr:用来填充的字符;Str:被填充的字符串
  *输出：填充完的Str
  *举例：
  *********************************}
function FillStr(len: integer; Chr, Str: string): string;

  {*********************************
  *函数/过程名称：ShowHide(Msg:String)
  *功能：向主Frm提示行写入提示信息
  *输入：主Frm的名字必须改为MainFrm，提示行使用Panel，名字就是Panel
  *      Msg：显示的提示信息
  *输出：
  *举例：
  *********************************}
procedure ShowHide(Msg: string);

  {*********************************
  *函数/过程名称：RefreshQry(CurQry: TADOQuery)
  *功能：刷新ADOQuery
  *输入：CurQry:要刷新的query
  *输出：
  *举例：
  *********************************}
procedure RefreshQry(CurQry: TADOQuery);

  {*********************************
  *函数/过程名称：SmallTOBig(small: real): string;
  *功能：将小写的金额改成大写的形式
  *输入：Samll:要转换的数值
  *输出：
  *举例：
  *  edit1.text:=SmallTOBig(1234567890.1234);”他自动默认小数点后两位
  *********************************}
function SmallTOBig(small: real): string;

  {*********************************
  *函数/过程名称：fcDBTree: TfcDBTreeView; SelQry: TQuery; PrdtID:
                               string): Boolean;
  *功能：在DBGridEH中实现多选行
  *输入：SelGrid：进行多项选择的Grid
         SelQry:保存数据的Query
         PrdtID:如果为空就返回多选，否则就返回一个ID
  *输出：
  *举例：
  *  edit1.text:=SmallTOBig(1234567890.1234);”他自动默认小数点后两位
  *********************************}
function PrdtIDSelect(fcDBTree: TfcDBTreeView; SelQry: TADOQuery; PrdtID:
  string): Boolean;

//读取软件运行配置文件systeminfo.ini
function GetSystemInfo: Boolean;

  {*********************************
  *函数/过程名称：FormatGrid(Grid: TDBGridEh; Flag integer): Boolean;
  *功能：在DBGridEH指定每列的格式
  *输入：Grid：要指定格式的Grid
         Flag:不同格式标记
  *输出：
  *举例：
  *  FormatGrid(Grid,0)
  *********************************}
function FormatGrid(sGrid: TDBGridEh; Flag: integer): Boolean;

  {*********************************
  *函数/过程名称：ChgGridWidth(GridEh:TDBGridEh;Cols:integer)
  *功能：屏幕大小改变时动态修改GridEh列的宽度
  *      读取系统配置文件SystemInfo.INI，对软件的使用参数进行配置
  *输入：GridEh:要变更列宽度Grid，Cols:总列数
  *输出：
  *
  *举例：
  *********************************}
procedure ChgGridWidth(GridEh: TDBGridEh);

{****************************************************}
{函数/过程名称：ProcessData(Flag:Boolean);           }
{功能：在长时间统计是显示动态效果                    }
{输入：Falg:=TRUE,开始统计                           }
{      Falg:=FALSE,结束统计                          }
{输出：无                                            }
{举例：ProcessData(True);                            }
{****************************************************}
procedure ProcessData(Flag: Boolean);

{****************************************************}
{函数/过程名称：GridTitleBtnClickSort;               }
{功能：单击列头排序ADOQuery专用                      }
{输入：Sender                                        }
{      Column                                        }
{输出：无                                            }
{举例：GridTitleBtnClickSort;                        }
{****************************************************}
procedure GridTitleBtnClickSort(Sender: TObject; Column: TColumnEh);

{****************************************************}
{函数/过程名称：Crypt(Text: string): string;         }
{功能：加/解密字符串                                 }
{输入：要加/解密的字符串                             }
{                                                    }
{输出：                                              }
{举例：crypt('abc')                                  }
{****************************************************}
function Crypt(Text: string): string;

{****************************************************}
{函数/过程名称：Crypt(Text: string): string;         }
{功能：用户使用权限判断                              }
{输入：登录名、权限编号                              }
{                                                    }
{输出：真、假                                        }
{举例：OperRights('2004001',SYS_BROWSE)                                  }
{****************************************************}
function OperRights(OprID: string; FunID: string; RightsID: integer): Boolean;

{****************************************************}
{函数/过程名称：WriteDiary;                          }
{功能：写操作日志                                    }
{输入：OprID,FunID,RightsID                          }
{                                                    }
{输出：                                              }
{举例：                                              }
{****************************************************}
function WriteDiary(OprID: string; FunID: string; RightsID: integer): Boolean;

{****************************************************}
{函数/过程名称：ExportToXLS;                         }
{功能：导出报表到Excel文件                           }
{输入：GridEH,FileName                               }
{                                                    }
{输出：Boolean                                       }
{举例：ExportToXLS(Grid,'销售统计（按客户）')        }
{****************************************************}
function ExportToXLS(GridEH: TDBGridEH; FileName: string): Boolean;

{****************************************************}
{函数/过程名称：GetCPUID:string;                     }
{功能：获取CPU ID 和 CPU Vendor                      }
{输入：无                                            }
{                                                    }
{输出：CPUID                                         }
{举例：GetCPUID                                      }
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
    ComBo.Items.Add('全部');
    Combo.Itemindex := Combo.Items.IndexOf('全部');
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

{自动填充字串长度}

function FillStr(len: integer; Chr, Str: string): string;
var
  I: Integer;
begin
  for I := 1 to (len - length(Str)) do Str := Chr + Str;
  Result := Str;
end;


{写提示行信息}

procedure ShowHide(Msg: string);
begin
  MainFrm.SBar.Panels[0].Text := Msg;
  Application.ProcessMessages;
end;

  {刷新ADOQuery}

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


  {小写金额转换成大写金额}

function SmallTOBig(small: real): string;
var
  SmallMonth, BigMonth: string;
  wei1, qianwei1: string[2];
  qianwei, dianweizhi, qian: integer;
begin
  {------- 修改参数令值更精确 -------}
  {小数点后的位置，需要的话也可以改动-2值}
  qianwei := -2;
  {转换成货币形式，需要的话小数点后加多几个零}
  Smallmonth := formatfloat('0.00', small);
  {---------------------------------}
  dianweizhi := pos('.', Smallmonth); {小数点的位置}
  {循环小写货币的每一位，从小写的右边位置到左边}
  for qian := length(Smallmonth) downto 1 do
  begin
    {如果读到的不是小数点就继续}
    if qian <> dianweizhi then
    begin
      {位置上的数转换成大写}
      case strtoint(copy(Smallmonth, qian, 1)) of
        1: wei1 := '壹';
        2: wei1 := '贰';
        3: wei1 := '叁';
        4: wei1 := '肆';
        5: wei1 := '伍';
        6: wei1 := '陆';
        7: wei1 := '柒';
        8: wei1 := '捌';
        9: wei1 := '玖';
        0: wei1 := '零';
      end;
      {判断大写位置，可以继续增大到real类型的最大值}
      case qianwei of
        -3: qianwei1 := '厘';
        -2: qianwei1 := '分';
        -1: qianwei1 := '角';
        0: qianwei1 := '元';
        1: qianwei1 := '拾';
        2: qianwei1 := '佰';
        3: qianwei1 := '千';
        4: qianwei1 := '万';
        5: qianwei1 := '拾';
        6: qianwei1 := '佰';
        7: qianwei1 := '千';
        8: qianwei1 := '亿';
        9: qianwei1 := '十';
        10: qianwei1 := '佰';
        11: qianwei1 := '千';
      end;
      inc(qianwei);
      BigMonth := wei1 + qianwei1 + BigMonth; {组合成大写金额}
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
*函数/过程名称：GetSystemInfo: Boolean;
*功能：程序创建时调用该函数
*      读取系统配置文件SystemInfo.INI，对软件的使用参数进行配置
*输入：
*输出：True:将读取得数据存入RSystemInfo记录中
*      False:配置文件不存在
*举例：
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
*函数/过程名称：ChgGridWidth(GridEh:TDBGridEh;Cols:integer)          *
*功能：屏幕大小改变时动态修改GridEh列的宽度                          *
*      读取系统配置文件SystemInfo.INI，对软件的使用参数进行配置      *
*输入：GridEh:要变更列宽度Grid，Cols:总列数                          *
*输出：                                                              *
*                                                                    *
*举例：                                                              *
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
        if (Pos('名称', Columns[I].Title.Caption) > 0)
          or (Pos('姓名', Columns[I].Title.Caption) > 0)
          or (Pos('区域', Columns[I].Title.Caption) > 0) then
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
    if Flag = 0 then {按时间统计}
    begin
      Columns[0].Width := 100;
      Columns[0].Title.Caption := '日期';
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '合计';
      Columns[1].Width := 100;
      Columns[1].Title.Caption := '商品编码';
      Columns[2].Width := 240;
      Columns[2].Title.Caption := '商品名称';
      Columns[3].Width := 35;
      Columns[3].Title.Caption := '单位';
      Columns[4].Width := 80;
      Columns[4].Title.Caption := '数量';
      Columns[4].Footer.ValueType := fvtSum;
      Columns[4].DisplayFormat := QTY_DIG_FRT;
      Columns[4].Footer.DisplayFormat := QTY_DIG_FRT;
      Columns[4].Footer.FieldName := 'TQty';
      Columns[5].Width := 100;
      Columns[5].DisplayFormat := '##,###,##0.00';
      Columns[5].Title.Caption := '金额';
      Columns[5].Footer.ValueType := fvtSum;
      Columns[5].Footer.FieldName := 'TAmt';
      Columns[5].Footer.DisplayFormat := '##,###,##0.00';
    end
    else {按商品统计}
    begin
      Columns[0].Width := 100;
      Columns[0].Title.Caption := '商品编码';
      Columns[0].Footer.ValueType := fvtStaticText;
      Columns[0].Footer.Value := '合计';
      Columns[1].Width := 340;
      Columns[1].Title.Caption := '商品名称';
      Columns[2].Width := 35;
      Columns[2].Title.Caption := '单位';
      Columns[3].Width := 80;
      Columns[3].Title.Caption := '数量';
      Columns[3].Footer.ValueType := fvtSum;
      Columns[3].Footer.FieldName := 'TQty';
      Columns[3].DisplayFormat := QTY_DIG_FRT;
      Columns[3].Footer.DisplayFormat := QTY_DIG_FRT;
      Columns[4].Width := 100;
      Columns[4].Title.Caption := '金额';
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
{函数/过程名称：ProcessData(Flag:Boolean);           }
{功能：在长时间统计是显示动态效果                    }
{输入：Falg:=TRUE,开始统计                           }
{      Falg:=FALSE,结束统计                          }
{输出：无                                            }
{举例：ProcessData(True);                            }
{****************************************************}

procedure ProcessData(Flag: Boolean);
begin
  if Flag then
    ShowHide(MSG_PROCESS_DATA)
  else
    ShowHide(MSG_NONE);
end;

{****************************************************}
{函数/过程名称：GridTitleBtnClickSort;               }
{功能：单击列头排序ADOQuery专用                      }
{输入：Sender                                        }
{      Column                                        }
{输出：无                                            }
{举例：GridTitleBtnClickSort;                        }
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
  ShowHide('排序耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
{  if (Sender as TDBGridEh).DataSource.DataSet.RecordCount > 0 then
  begin
  end;}
end;

{****************************************************}
{函数/过程名称：Crypt(Text: string): string;         }
{功能：加/解密字符串                                 }
{输入：要加/解密的字符串                             }
{                                                    }
{输出：                                              }
{举例：crypt('abc')                                  }
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
{函数/过程名称：Crypt(Text: string): string;         }
{功能：用户使用权限判断                              }
{输入：登录名、权限编号                              }
{                                                    }
{输出：真、假                                        }
{举例：Rights('2004001',SYS_BROWSE)                                  }
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
{函数/过程名称：WriteDiary;                          }
{功能：写操作日志                                    }
{输入：OprID,FunID,RightsID                          }
{                                                    }
{输出：                                              }
{举例：                                              }
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
{函数/过程名称：ExportToXLS;                         }
{功能：导出报表到Excel文件                           }
{输入：GridEH,FileName                               }
{                                                    }
{输出：Boolean                                       }
{举例：ExportToXLS(Grid,'销售统计（按客户）')        }
{****************************************************}

function ExportToXLS(GridEH: TDBGridEH; FileName: string): Boolean;
var
  Dir: string;
  lEnd, lStart: integer;
begin
  if SelectDirectory('请选择文件夹', '', Dir) then
    Dir := Dir + '\' + FileName + '.XLS'
  else
    Dir := FileName + '.XLS';

  lStart := GetTickCount;
  SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, GridEH, Dir, true);
  Application.ProcessMessages;
  lEnd := GetTiCkCount;
  ShowHide('导出数据耗时：' + FloatToStr((lEnd - lStart) / 1000.0) + '秒');
  Result := True;
end;
{****************************************************}
{函数/过程名称：Crypt(Text: string): string;         }
{功能：获取CPU ID 和 CPU Vendor                      }
{输入：无                                            }
{                                                    }
{输出：CPUID                                         }
{举例：GetCPUID                                      }
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
      {未注册软件写入可执行的总次数}
        CloseKey;
        OpenKey('HARDWARE\DESCRIPTION\System\FloatingPointProcessor\0', False);
        if not ValueExists('~MHz') then
          WriteInteger('~MHz', MHz);
        eie897 := False;
      end
      else
    //比较注册码是否正确
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
    1: //注册表方式
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
    2: //记录方式
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

