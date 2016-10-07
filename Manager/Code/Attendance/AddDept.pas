{******************************************************}
{ģ�����ƣ���������                                    }
{�汾��    0.1                                         }
{���ߣ�    ����                                      }
{��;��    ���¹�������                              }
{���ڣ�    2004��03��11�� 83107329                     }
{******************************************************}
unit AddDept;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Db, DBTables, Grids, DBGrids,
  ADODB, DBGridEh;

type
  TAddDeptFrm = class(TForm)
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
  AddDeptFrm: TAddDeptFrm;

implementation

{$R *.DFM}
uses Main, PubMessage;

procedure TAddDeptFrm.BitBtn1Click(Sender: TObject);
begin
  ListQry.UpdateBatch(arAll);
  ShowMessage(MSG_SAVE_DOON);
  Close;
end;

procedure TAddDeptFrm.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TAddDeptFrm.FormActivate(Sender: TObject);
begin
  RefreshQry(ListQry);
end;

procedure TAddDeptFrm.FormKeyPress(Sender: TObject; var Key: Char);
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
