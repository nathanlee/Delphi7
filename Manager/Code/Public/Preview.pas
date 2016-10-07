unit Preview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, QRPrntr, ExtCtrls, Buttons, ComCtrls, Menus, ImgList, ToolWin;

type
  TPrevForm = class(TForm)
    Panel2: TPanel;
    QRPreview: TQRPreview;
    ProgressBar: TProgressBar;
    tbrMain: TToolBar;
    tbtPrint: TToolButton;
    tbtPrinterSetupDialog: TToolButton;
    tbtScale: TToolButton;
    tbtPrevPage: TToolButton;
    tbtNextPage: TToolButton;
    tbStop: TToolButton;
    tbClose: TToolButton;
    imlMain: TImageList;
    pmnScale: TPopupMenu;
    mni100: TMenuItem;
    mniWidth: TMenuItem;
    mniFull: TMenuItem;
    procedure QRPreviewProgressUpdate(Sender: TObject; Progress: Integer);
    procedure FormCreate(Sender: TObject);
    procedure mniFullClick(Sender: TObject);
    procedure mniWidthClick(Sender: TObject);
    procedure mni100Click(Sender: TObject);
    procedure tbtPrintClick(Sender: TObject);
    procedure tbtPrinterSetupDialogClick(Sender: TObject);
    procedure tbtPrevPageClick(Sender: TObject);
    procedure tbtNextPageClick(Sender: TObject);
    procedure tbStopClick(Sender: TObject);
    procedure tbCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrevForm: TPrevForm;

implementation

{$R *.DFM}
  uses EhLibConsts;
procedure TPrevForm.QRPreviewProgressUpdate(Sender: TObject;
  Progress: Integer);
begin
  Application.ProcessMessages;
  ProgressBar.Position := Progress;
  if Progress = 100 then
  begin
    ProgressBar.Position := 0;
    ProgressBar.Visible := False;
  end;
  if not QRPreview.QRPrinter.ShowingPreview then
  begin
    Close;
  end;
  tbStop.Enabled :=  not (Progress = 100);
  tbClose.Enabled := (Progress = 100);
  tbtPrint.Enabled := (Progress = 100) and
    (QRPreview.QRPrinter.Printers.Count > 0);
  tbtPrevPage.Enabled := QRPreview.PageNumber > 1;
  tbtNextPage.Enabled := QRPreview.PageNumber < QRPreview.QRPrinter.PageCount;
  Panel2.Caption := Format(SPageOfPagesEh, [QRPreview.PageNumber , QRPreview.QRPrinter.PageCount]);
end;

procedure TPrevForm.FormCreate(Sender: TObject);
begin
  Application.ProcessMessages;
end;

procedure TPrevForm.mniFullClick(Sender: TObject);
begin
  QrPreview.Zoom := 100;
end;

procedure TPrevForm.mniWidthClick(Sender: TObject);
begin
  QrPreview.ZoomToFit;
end;

procedure TPrevForm.mni100Click(Sender: TObject);
begin
  QrPreview.ZoomToWidth;
end;

procedure TPrevForm.tbtPrintClick(Sender: TObject);
begin
  QRPreview.QRPrinter.Print;
end;

procedure TPrevForm.tbtPrinterSetupDialogClick(Sender: TObject);
begin
  QRPreview.QRPrinter.PrintSetup;
  {  if Printer.Execute then
    begin
      if Printer.PrintRange = prAllPages then
      begin
        QRPreview.QRPrinter.FirstPage := 0;
        QRPreview.QRPrinter.LastPage := 0;
      end;
      if Printer.PrintRange = prPageNums then
      begin
        QRPreview.QRPrinter.FirstPage := Printer.FromPage;
        QRPreview.QRPrinter.LastPage := Printer.ToPage;
      end;
    end;}
end;

procedure TPrevForm.tbtPrevPageClick(Sender: TObject);
begin
  if QrPreview.PageNumber > 1 then
  begin
    QRPreview.PageNumber := QRPreview.PageNumber - 1;
    Panel2.Caption := Format(SPageOfPagesEh, [QRPreview.PageNumber , QRPreview.QRPrinter.PageCount]);
  end;
end;

procedure TPrevForm.tbtNextPageClick(Sender: TObject);
begin
  if QrPreview.PageNumber < QRPreview.QRPrinter.PageCount then
  begin
    QRPreview.PageNumber := QRPreview.PageNumber + 1;
    Panel2.Caption := Format(SPageOfPagesEh, [QRPreview.PageNumber , QRPreview.QRPrinter.PageCount]);
  end;
end;

procedure TPrevForm.tbStopClick(Sender: TObject);
begin
  //QrPreview.QRPrinter.AbortDoc;
end;

procedure TPrevForm.tbCloseClick(Sender: TObject);
begin
  Close;
  Release;
end;

end.
