unit AddRoleOpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGridEh, DB, ADODB;

type
  TAddRoleOprFrm = class(TForm)
    AddOprList: TADOQuery;
    DataSource1: TDataSource;
    Grid: TDBGridEh;
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    procedure GridTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure FormActivate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iRoleID: integer;
  end;

var
  AddRoleOprFrm: TAddRoleOprFrm;

implementation
uses Main, PubMessage, RolePer;
{$R *.dfm}

procedure TAddRoleOprFrm.GridTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TAddRoleOprFrm.FormActivate(Sender: TObject);
begin
  with AddOprList do
  begin
    Close;
    Parameters.ParamByName('iRuleID').Value := iRoleID;
    Open;
  end;
end;

procedure TAddRoleOprFrm.BtnOKClick(Sender: TObject);
var
  I: integer;
begin
  if Grid.SelectedRows.Count > 0 then
    with AddOprList do
      for i := 0 to Grid.SelectedRows.Count - 1 do
      begin
        GotoBookmark(pointer(Grid.SelectedRows.Items[i]));
        RolePerForm.ListOpr.Items.Add(Fields[0].value + '   ' + Fields[1].value)
      end;
  BtnCanClick(Sender);
end;

procedure TAddRoleOprFrm.BtnCanClick(Sender: TObject);
begin
  Close;
end;

end.

