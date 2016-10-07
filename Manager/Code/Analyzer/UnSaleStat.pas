
{******************************************************}
{ģ�����ƣ������˻�ͳ�Ʒ���ģ��                        }
{�汾��    0.1                                         }
{���ߣ�    ����                                      }
{��;��    �����˻�����ͳ�Ʊ���                        }
{���ڣ�    2004��02��24��                              }
{******************************************************}
unit UnSaleStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB,
  ADODB, TeEngine, Series, TeeProcs, Chart, PrnDbgeh;

type
  TUnSaleFrm = class(TForm)
    Panel15: TPanel;
    Label13: TLabel;
    SBCust: TSpeedButton;
    SBPrdtName: TSpeedButton;
    SBType: TSpeedButton;
    SBBrand: TSpeedButton;
    CBXYear: TComboBox;
    ESPrdtName: TEdit;
    CBXCust: TComboBox;
    CBXType: TComboBox;
    CBXBrand: TComboBox;
    LabTitle: TLabel;
    DS: TDataSource;
    SBExt: TSpeedButton;
    SBPrn: TSpeedButton;
    SBAdd: TSpeedButton;
    Page: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGridEh;
    Chart1: TChart;
    PrnGrid: TPrintDBGridEh;
    CbxSType: TComboBox;
    Label1: TLabel;
    CBXMonth: TComboBox;
    Label2: TLabel;
    SaleStatProc: TADOStoredProc;
    SBArea: TSpeedButton;
    cbxArea: TComboBox;
    SBExp: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SBExtClick(Sender: TObject);
    procedure SBAddClick(Sender: TObject);
    procedure CBXTypeChange(Sender: TObject);
    procedure SBCustClick(Sender: TObject);
    procedure GridTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure PageChange(Sender: TObject);
    procedure SBPrnClick(Sender: TObject);
    procedure CbxSTypeChange(Sender: TObject);
    procedure SBExpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnSaleFrm: TUnSaleFrm;

implementation

{$R *.dfm}
uses Main, PubMessage, SerachCust, SetPrdt;

procedure TUnSaleFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SaleStatProc.Active := False;
  UnSaleFrm := nil;
  Action := caFree;
end;

procedure TUnSaleFrm.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
  I: integer;
begin
  Caption := LabTitle.Caption;
  WindowState := wsMaximized;
  cbxsType.ItemIndex := 0;
  Page.ActivePageIndex := 0;
  DeCodeDate(Date, Year, Month, Day);
  for I := Year downto (Year - 10) do
  begin
    CBXYear.Items.Add(IntToStr(I));
  end;
  CBXYear.ItemIndex := 0;
  CBXMonth.ItemIndex := 0;
  {��������б�}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cAreaName From AreaInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxArea, MainFrm.AdoTmp, True); //����
  {��ӿͻ��б�}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cCustName From CustInfo');
  end;
  Application.ProcessMessages;
  AddComBo(CbxCust, MainFrm.AdoTmp, True); //���۵�
  {�����Ʒ���}
  with MainFrm.AdoTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select cTypeAbbr From PrdtType');
  end;
  Application.ProcessMessages;
  AddCombo(CBXType, MainFrm.AdoTmp, True);
end;

procedure TUnSaleFrm.SBExtClick(Sender: TObject);
begin
  Close;
end;

procedure TUnSaleFrm.SBAddClick(Sender: TObject);
var
  I, lEnd, lStart: integer;
begin
  if not OperRights(SYS_OPR_ID, '02004', SYS_SELECT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if (cbxsType.ItemIndex = 3) and (cbxMonth.text = '������') then
  begin
    ShowMessage('������Ҫ��ѯ���·�');
    cbxMonth.SetFocus;
    exit;
  end;
  ProcessData(True);
  //ShowHide(MSG_PROCESS_DATA);
  Grid.Columns.Clear;
  with SaleStatProc do
  begin
    Close;
    DisableControls;
    Parameters.ParamByName('@Flag').Value := cbxsType.ItemIndex;
    Parameters.ParamByName('@Year').Value := StrToInt(CBXYear.Text);
    if cbxsType.ItemIndex = 3 then
      Parameters.ParamByName('@Month').Value := StrToInt(CBXMonth.Text);
    if CbxArea.Text = 'ȫ��' then
      Parameters.ParamByName('@cAreaName').Value := '%'
    else
      Parameters.ParamByName('@cAreaName').Value := '%' + CbxArea.Text + '%';
    if CbxCust.Text = 'ȫ��' then
      Parameters.ParamByName('@cCustName').Value := '%'
    else
      Parameters.ParamByName('@cCustName').Value := '%' + CbxCust.Text + '%';
    if CbxType.Text = 'ȫ��' then
      Parameters.ParamByName('@cTypeName').Value := '%'
    else
      Parameters.ParamByName('@cTypeName').Value := '%' + CbxType.Text + '%';
    if CBXBrand.Text = 'ȫ��' then
      Parameters.ParamByName('@cBrandName').Value := '%'
    else
      Parameters.ParamByName('@cBrandName').Value := '%' + CbxBrand.Text + '%';
    Parameters.ParamByName('@cPrdtName').Value := '%' + ESPrdtName.Text + '%';
    lStart := GetTickCount;
    Open;
    lEnd := GetTiCkCount;
    with Grid do
    begin
      Columns.AddAllColumns(True);
      case cbxsType.ItemIndex of
        0: {���տͻ�ͳ��}
          begin
            Columns[0].Width := 150;
            Columns[0].Title.Caption := '�ͻ�����';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '�ϼ�';
            Columns[0].Title.TitleButton := True;
            for I := 1 to Columns.Count - 1 do
            begin
              Columns[I].Width := 80;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
            end;
            for I := 4 to Columns.Count - 1 do
            begin
              Columns[I].Title.Caption := IntToStr(I - 3) + '��';
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
            end;
            EnableControls;
            TStringGrid(Grid).FixedCols := 4;
          end;
        1: {��������ͳ��}
          begin
            Columns[0].Width := 150;
            Columns[0].Title.Caption := '����';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '�ϼ�';
            Columns[0].Title.TitleButton := True;
            for I := 1 to Columns.Count - 1 do
            begin
              Columns[I].Width := 80;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
            end;
            for I := 4 to Columns.Count - 1 do
            begin
              Columns[I].Title.Caption := IntToStr(I - 3) + '��';
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
            end;
            EnableControls;
            TStringGrid(Grid).FixedCols := 4;
          end;

        2: {������ͳ��}
          begin
            Columns[0].Width := 150;
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '�ϼ�';
            Columns[0].Title.TitleButton := True;
            Columns[1].Width := 30;
            Columns[1].Title.TitleButton := True;
            Columns[1].Alignment := taCenter;
            for I := 2 to Columns.Count - 1 do
            begin
              Columns[I].Width := 70;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
            end;
            EnableControls;
            TStringGrid(Grid).FixedCols := 3;
          end;
        3: {������ͳ��}
          begin
            Columns[0].Width := 150;
            Columns[0].Title.Caption := '��Ʒ����';
            Columns[0].Footer.ValueType := fvtStaticText;
            Columns[0].Footer.Value := '�ϼ�';
            Columns[0].Title.TitleButton := True;
            Columns[1].Width := 30;
            Columns[1].Title.Caption := '��λ';
            Columns[1].Title.TitleButton := True;
            Columns[1].Alignment := taCenter;
            for I := 2 to Columns.Count - 1 do
            begin
              Columns[I].Width := 70;
              Columns[I].DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Title.TitleButton := True;
              Columns[I].Footer.ValueType := fvtSum;
              Columns[I].Footer.DisplayFormat := SYS_PRICE_FORMAT;
              Columns[I].Footer.FieldName := DS.DataSet.Fields[i].DisplayLabel;
            end;
            EnableControls;
            TStringGrid(Grid).FixedCols := 2;
          end;
        4: {����Ʒ��ͳ��}
          begin
            Columns[0].Visible := false;
            Columns[1].Visible := false;
            Columns[2].Width := Grid.Width - 27 - 260;
            Columns[2].Title.Caption := '��Ʒ���';
            Columns[2].Footer.ValueType := fvtStaticText;
            Columns[2].Footer.Value := '�ϼ�';
            Columns[2].Title.TitleButton := True;
            Columns[3].Width := 100;
            Columns[3].Title.Caption := '��ƷƷ��';
            Columns[3].Title.TitleButton := True;
            Columns[4].Title.Caption := '����';
            Columns[4].width := 80;
            Columns[4].DisplayFormat := SYS_QTY_FORMAT;
            Columns[4].Footer.ValueType := fvtSum;
            Columns[4].Footer.FieldName := 'TQty';
            Columns[4].Footer.DisplayFormat := Columns[4].DisplayFormat;
            Columns[4].Title.TitleButton := True;
            Columns[5].Title.Caption := '���';
            Columns[5].width := 80;
            Columns[5].DisplayFormat := SYS_PRICE_FORMAT;
            Columns[5].Footer.ValueType := fvtSum;
            Columns[5].Footer.FieldName := 'TAmt';
            Columns[5].Footer.DisplayFormat := Columns[5].DisplayFormat;
            Columns[5].Title.TitleButton := True;
            EnableControls;
          end;
        5: {�������ͳ��}
          begin
            Columns[0].Visible := false;
            Columns[1].Width := Grid.Width - 27 - 220;
            Columns[1].Title.Caption := '��Ʒ���';
            Columns[1].Footer.ValueType := fvtStaticText;
            Columns[1].Footer.Value := '�ϼ�';
            Columns[1].Title.TitleButton := True;
            Columns[2].Title.Caption := '����';
            Columns[2].Width := 110;
            Columns[2].DisplayFormat := SYS_QTY_FORMAT;
            Columns[2].Footer.ValueType := fvtSum;
            Columns[2].Footer.FieldName := 'TQty';
            Columns[2].Footer.DisplayFormat := Columns[2].DisplayFormat;
            Columns[2].Title.TitleButton := True;
            Columns[3].Title.Caption := '���';
            Columns[3].Width := 110;
            Columns[3].DisplayFormat := SYS_PRICE_FORMAT;
            Columns[3].Footer.ValueType := fvtSum;
            Columns[3].Footer.FieldName := 'TAmt';
            Columns[3].Footer.DisplayFormat := Columns[3].DisplayFormat;
            Columns[3].Title.TitleButton := True;
            EnableControls;
          end;
      end; //end of case
    end; //end of Grid
  end; //end of PrdtProc
  ProcessData(False);
  ShowHide('ͳ�ƺ�ʱ��' + FloatToStr((lEnd - lStart) / 1000.0) + '��');
end;

procedure TUnSaleFrm.CBXTypeChange(Sender: TObject);
var
  SQLStr, ComboText: string;
begin
  {������Ʒ��������ƷƷ��}
  ComboText := Trim((Sender as TComboBox).Text);
  if ComboText = 'ȫ��' then
    SqlStr := '%'
  else
    SqlStr := ComboText + '%';
  with MainFrm.ADOTmp do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select cBrandAbbr From PrdtBrand where cTypeID ');
    Sql.Add(' in (Select cTypeID From PrdtType where cTypeAbbr like :cTypeAbbr)');
    Parameters.ParamByName('cTypeAbbr').DataType := ftString;
    Parameters.ParamByName('cTypeAbbr').size := 20;
    Parameters.ParamByName('cTypeAbbr').Value := SqlStr;
  end;

  AddCombo(cbxBrand, MainFrm.ADOTmp, True);
end;

procedure TUnSaleFrm.SBCustClick(Sender: TObject);
begin
  if Sender = SBArea then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 4;
      Page.Pages[4].TabVisible := True;
      BtnAdd.Caption := '�½�����(&W)';
      BtnPre.Enabled := False;
      BtnFindClick(Sender);
      ShowModal;
      if Name <> '' then cbxArea.Text := Name;
      Release;
    end;
  end;
  if Sender = SBCust then
  begin
    Application.CreateForm(TSerachCustFrm, SerachCustFrm);
    with SerachCustFrm do
    begin
      Page.ActivePageIndex := 1;
      Page.Pages[1].TabVisible := True;
      BtnAdd.Caption := '�½��ͻ�(&W)';
      BtnFindClick(Sender);
      ShowModal;
      if Name <> '' then cbxCust.Text := Name;
      Release;
    end;
  end;
  if (sender = SBType) or (sender = SBBrand) or (sender = SBPrdtName) then
  begin
    Application.CreateForm(TSetPrdtFrm, SetPrdtFrm);
    with SetPrdtFrm do
    begin
      BtnSel.Enabled := True;
      ShowModal;
      if PrdtID <> '' then
      begin
        {��Ʒ�ɹ����ѡ��}
        if sender = SBType then
        begin
          CbxType.Text := TypeQry.FieldByName('cTypeAbbr').AsString;
          CBXTypeChange(CbxType);
        end;
        if sender = SBBrand then CbxBrand.Text := BrandQry.FieldByName('cBrandAbbr').AsString;
        if sender = SBPrdtName then ESPrdtName.Text := PrdtQry.FieldByName('cName').AsString;
        Release;
      end;
    end;
  end;
end;

procedure TUnSaleFrm.GridTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  GridTitleBtnClickSort(Sender, Column);
end;

procedure TUnSaleFrm.PageChange(Sender: TObject);
var
  vp, I: integer;
  Bar: TBarSeries;
  FastLine: TFastLineSeries;
  Pie: TPieSeries;
  ColorArray: array[1..7] of Tcolor;
begin
  ColorArray[1] := clRed;
  ColorArray[2] := clLime;
  ColorArray[3] := clYellow;
  ColorArray[4] := clBlue;
  ColorArray[5] := clFuchsia;
  ColorArray[6] := clAqua;
  ColorArray[7] := clWhite;
  if (Page.ActivePageIndex = 1) and (DS.DataSet.Active) then
  begin
    Chart1.SeriesList.Clear;
    Chart1.Title.Text.Clear;
    Chart1.Title.Text.Add(DS.DataSet.fields[0].Value);
    case cbxSType.ItemIndex of
      0, 1, 2: {��״ͼ}
        begin
          Bar := TBarSeries.Create(nil);
          Bar.ParentChart := Chart1;
          Bar.ShowInLegend := False;
          Bar.Marks.Style := smsValue;
          Bar.BarWidthPercent := 70;
          vp := 4;
        end;
      3: {��������ͳ��} {����ͼ}
        begin
          FastLine := TFastLineSeries.Create(nil);
          FastLine.ParentChart := Chart1;
          FastLine.ShowInLegend := False;
          FastLine.Marks.Visible := False;
          vp := 3;
        end;
      4, 5: {��ͼ}
        begin
          Chart1.Title.Text.Clear;
          Chart1.Title.Text.Add('��ƷƷ�ƺ�������۱�ͼ');
          Pie := TPieSeries.Create(nil);
          Pie.ParentChart := Chart1;
          Pie.ShowInLegend := False;
          Pie.Marks.Style := smsLabelPercent;
        end;
    end;
    with Chart1.Series[0] do
    begin
      Clear;
      case cbxSType.ItemIndex of
        0, 1, 2, 3: {��״ͼ}
          begin
            for I := vp to (DS.DataSet.FieldCount - 1) do
            begin
              {Application.ProcessMessages;}
              Add(DS.DataSet.Fields[I].AsCurrency, DS.DataSet.Fields[i].DisplayLabel, clRed);
            end;
          end;
        4:
          begin
            i := 1;
            Ds.DataSet.First;
            while not Ds.DataSet.Eof do
            begin
              Application.ProcessMessages;
              Pie.AddPie(Ds.DataSet.FieldByName('TAmt').value,
                Ds.DataSet.fieldByName('cBrandAbbr').Value, ColorArray[I]);
              Inc(I);
              if I > 7 then I := 1;
              Ds.DataSet.next;
            end
          end;
        5:
          begin
            i := 1;
            Ds.DataSet.First;
            while not Ds.DataSet.Eof do
            begin
              Application.ProcessMessages;
              Pie.AddPie(Ds.DataSet.FieldByName('TAmt').value,
                Ds.DataSet.fieldByName('cTypeAbbr').Value, ColorArray[I]);
              Inc(I);
              if I > 7 then I := 1;
              Ds.DataSet.next;
            end
          end;
      end;
    end;
  end;
end;

procedure TUnSaleFrm.SBPrnClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02004', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if Ds.DataSet.Active then PrnGrid.Preview;
end;

procedure TUnSaleFrm.CbxSTypeChange(Sender: TObject);
begin
  if cbxsType.ItemIndex <> 3 then
    with cbxMonth do
    begin
      ItemIndex := 0;
      Enabled := False;
    end
  else cbxMonth.Enabled := True;
  Page.ActivePageIndex := 0;
end;
procedure TUnSaleFrm.SBExpClick(Sender: TObject);
begin
  if not OperRights(SYS_OPR_ID, '02004', SYS_PRINT) then
  begin
    ShowMessage(MSG_USE_LIMITED);
    Exit;
  end;
  if ExportToXLS(Grid, LabTitle.Caption + '(' + cbxSType.Text + ')') then
    ShowMessage(MSG_EXPT_DOON);
end;

end.

