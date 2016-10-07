unit DBSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, Buttons, IniFiles;

type
  TDBSetupFrm = class(TForm)
    LEServer: TLabeledEdit;
    LELogin: TLabeledEdit;
    LEPass: TLabeledEdit;
    LEDatFile: TLabeledEdit;
    LELogFile: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    ADOConn: TADOConnection;
    ADODataSet: TADODataSet;
    LEDBName: TLabeledEdit;
    ODFile: TOpenDialog;
    SPDat: TSpeedButton;
    SBLog: TSpeedButton;
    LEBackupName: TLabeledEdit;
    ADOCommand: TADOCommand;
    ADOQuery: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure SPDatClick(Sender: TObject);
    procedure SBLogClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBSetupFrm: TDBSetupFrm;

implementation

{$R *.dfm}

procedure TDBSetupFrm.Button1Click(Sender: TObject);
var
  connectstr, dirname: string;
  Ini: TIniFile;
begin
  getdir(0, dirname);
  connectstr := 'Provider=SQLOLEDB.1;Password=' + trim(LePass.Text) +
    ';Persist Security Info=True;User ID=' + trim(LeLogin.Text) +
    ';Initial Catalog=master;Data Source=' + trim(LeServer.Text) +
    ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID='
    + trim(LeServer.Text);
  try
    adoconn.Connected := false;
    adoconn.ConnectionString := connectstr;
    adoconn.Connected := true;
    ADODataSet.Active := false;
    ADODataSet.CommandText := 'select db_id(' + #39 + LeDBName.Text + #39 + ')'; //数据库是否已经安装
    ADODataSet.Active := true;
    if ADODataSet.Fields[0].AsInteger = 0 then
    begin
      ADOQuery.Active := false; //将数据库安装上去.
      ADOQuery.SQL.Clear;

      ADOQuery.SQL.Text := 'sp_attach_db @dbname = N' + #39 + LeDBName.Text + #39 + ' , '
        + '@filename1 = N' + #39 + LeDatFile.Text + #39
        + ' , ' + '@filename2 = N' + #39 + LeLogFile.Text + #39;
      ADOQuery.ExecSql;

    end;
      //创建备份设备
    if leBackupName.Text <> '' then
      with ADOQuery do
      begin

        Active := False;
        Sql.Clear;
        Sql.Text := 'EXEC sp_addumpdevice ' + #39 + 'Disk' + #39 + ','
          + #39 + leBackupName.Text + #39 + ','
          + #39 + leBackupName.Text + '.bak' + #39;
        execSql;
      end;
  finally
    adoconn.Connected := false;
    adodataset.Active := false;
//    if FileExists(ExtractFilePath(Application.ExeName) + ExtractFileName('SystemInfo.ini')) then
//    begin
//    end;
    Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + ExtractFileName('SystemInfo.ini'));
    with Ini do
    begin
      WriteString('DBInfo', 'ServerName', uppercase(leServer.text));
      WriteString('DBInfo', 'DataBaseName', uppercase(leDBName.text));
      WriteString('DBInfo', 'BackupDevice', uppercase(leBackupName.Text));
      WriteString('DBInfo', 'DataBaseUserID', uppercase(leLogin.Text));
      WriteString('DBInfo', 'DataBaseUserPassword', lePass.Text);
    end;
    ShowMessage('数据库安装成功');
  end;
  Close;
end;

procedure TDBSetupFrm.SPDatClick(Sender: TObject);
begin
  if ODFile.Execute then
    LeDatFile.Text := ODFile.FileName;
end;

procedure TDBSetupFrm.SBLogClick(Sender: TObject);
begin
  if ODFile.Execute then
    LeLogFile.Text := ODFile.FileName;
end;

procedure TDBSetupFrm.Button2Click(Sender: TObject);
begin
  Close;
end;

end.

