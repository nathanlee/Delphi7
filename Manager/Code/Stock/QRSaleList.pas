unit QRSaleList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRSaleList = class(TForm)
    QRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabssN: TQRLabel;
    QRShape17: TQRShape;
    DetailBand1: TQRBand;
    QRAmt: TQRDBText;
    QRPrice: TQRDBText;
    QRQty: TQRDBText;
    QRName: TQRDBText;
    QRShape22: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape9: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRExpr3: TQRExpr;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRUnit: TQRDBText;
    QRShape12: TQRShape;
    QRLabCust: TQRLabel;
    QRLabDate: TQRLabel;
    QRLabSN: TQRLabel;
    QRShape6: TQRShape;
    QRMemo: TQRMemo;
    QRLabCVNO: TQRLabel;
    procedure QRLabel14Print(sender: TObject; var Value: string);
    procedure QRExpr3Print(sender: TObject; var Value: string);
    procedure QRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRSaleList: TFQRSaleList;

implementation

{$R *.DFM}
uses PubMessage, Main,Preview;

procedure TFQRSaleList.QRLabel14Print(sender: TObject; var Value: string);
begin
  Value := MSG_ORGANIZATION + Value;
end;

procedure TFQRSaleList.QRExpr3Print(sender: TObject; var Value: string);
begin
  Value := SmallTOBig(StrToFloat(Value));
end;

procedure TFQRSaleList.QRepPreview(Sender: TObject);
begin
  QRQty.Mask := SYS_QTY_FORMAT;
  QRPrice.Mask := SYS_PRICE_FORMAT;
  QRAmt.Mask := SYS_PRICE_FORMAT;
  Application.CreateForm(TPrevForm,PrevForm);
  PrevForm.QRPreview.QRPrinter := QRep.QRPrinter;
  PrevForm.Show;
end;

end.
