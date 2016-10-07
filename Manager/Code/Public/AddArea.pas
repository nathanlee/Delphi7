unit AddArea;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Db, DBTables, Grids, DBGrids,
  ADODB, DBGridEh;

type
  TAddAreaFrm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    DS: TDataSource;
    GridProv: TDBGridEh;
    ListQry: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddAreaFrm: TAddAreaFrm;

implementation

{$R *.DFM}
uses Main, PubMessage;

procedure TAddAreaFrm.BitBtn1Click(Sender: TObject);
begin
  ListQry.UpdateBatch(arAll);
  Close;
end;

procedure TAddAreaFrm.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TAddAreaFrm.FormActivate(Sender: TObject);
begin
  RefreshQry(ListQry);
end;

procedure TAddAreaFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then { �ж��ǰ�ִ�м�}
  begin
    if not (ActiveControl is TDbgrideh) then
    begin { ������TDbgrid�ؼ���}
      key := #0;
      perform(WM_NEXTDLGCTL, 0, 0); {�ƶ�����һ���ؼ�}
    end
    else if (ActiveControl is TDbgrideh) then {���� TDbgrid �ؼ���}
    begin
      with TDbgrideh(ActiveControl) do
        if Selectedindex < (FieldCount - 1) then
          Selectedindex := Selectedindex + 1 { �ƶ�����һ�ֶ�}
        else
        begin
          if Selectedindex = (FieldCount - 1) then
            with DataSource.DataSet do
            begin
              next;
              if Eof then
                Append;
            end;
          Selectedindex := 0;
        end;
    end;
  end; //end if of #13
end;

end.
