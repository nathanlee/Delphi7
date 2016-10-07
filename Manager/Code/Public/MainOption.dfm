object SelectCustFrm: TSelectCustFrm
  Left = 220
  Top = 103
  BorderStyle = bsDialog
  Caption = #36873#25321#20379#24212#21830
  ClientHeight = 395
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Bevel1: TBevel
    Left = 6
    Top = 353
    Width = 520
    Height = 2
    Shape = bsTopLine
  end
  object BtnOK: TBitBtn
    Left = 135
    Top = 362
    Width = 113
    Height = 27
    Caption = #30830#23450'(&O)'
    ModalResult = 1
    TabOrder = 5
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 271
    Top = 362
    Width = 113
    Height = 27
    Caption = #20851#38381'(&C)'
    TabOrder = 6
    Kind = bkCancel
  end
  object Button1: TButton
    Left = 424
    Top = 12
    Width = 93
    Height = 22
    Caption = #26597#25214'(&D)...'
    TabOrder = 7
  end
  object DBGridEh6: TDBGridEh
    Left = 0
    Top = 44
    Width = 105
    Height = 270
    DataSource = DSArea
    Flat = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    FooterColor = 10223615
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = #23435#20307
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cAreaName'
        Footer.Alignment = taRightJustify
        Footer.FieldName = 'cAreaName'
        Footers = <>
        Title.Caption = #21306#22495
        Title.TitleButton = True
        Width = 86
      end>
  end
  object GridProv: TDBGridEh
    Left = 108
    Top = 44
    Width = 421
    Height = 270
    DataSource = DSPro
    Flat = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    FooterColor = 10223615
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cProName'
        Footer.Value = #25968#37327#24635#35745
        Footers = <>
        Title.Caption = #20379#24212#21830#21517#31216
        Title.TitleButton = True
        Width = 399
      end>
  end
  object BtnAdd: TButton
    Left = 291
    Top = 320
    Width = 106
    Height = 22
    Caption = #26032#24314#20379#24212#21830'(&W)'
    TabOrder = 3
    OnClick = BtnAddClick
  end
  object BtnPre: TButton
    Left = 403
    Top = 320
    Width = 109
    Height = 22
    Caption = #23646#24615'(&R)'
    TabOrder = 4
    OnClick = BtnPreClick
  end
  object LeName: TLabeledEdit
    Left = 165
    Top = 14
    Width = 256
    Height = 22
    EditLabel.Width = 154
    EditLabel.Height = 14
    EditLabel.Caption = #38190#20837#21517#31216#25110#20174#21015#34920#20013#36873#25321
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 0
    OnExit = LeNameExit
  end
  object EAreaID: TEdit
    Left = 24
    Top = 328
    Width = 25
    Height = 22
    TabStop = False
    TabOrder = 8
    Visible = False
  end
  object EProID: TEdit
    Left = 56
    Top = 328
    Width = 25
    Height = 22
    TabStop = False
    TabOrder = 9
    Visible = False
  end
  object AreaQry: TADOQuery
    Connection = MainFrm.ADOConnection
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'From AreaInfo'
      '  ')
    Left = 64
    Top = 93
  end
  object DSArea: TDataSource
    DataSet = AreaQry
    Left = 108
    Top = 97
  end
  object ProInfoQry: TADOQuery
    Connection = MainFrm.ADOConnection
    CursorType = ctStatic
    AfterScroll = ProInfoQryAfterScroll
    CommandTimeout = 0
    DataSource = DSArea
    Parameters = <
      item
        Name = 'iAreaID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'From ProvInfo'
      'Where iAreaID Like :iAreaID ')
    Left = 220
    Top = 117
  end
  object DSPro: TDataSource
    DataSet = ProInfoQry
    Left = 264
    Top = 121
  end
end
