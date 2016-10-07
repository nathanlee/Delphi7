object SaleParallFrm: TSaleParallFrm
  Left = 0
  Top = 116
  Width = 800
  Height = 375
  Caption = 'SaleParallFrm'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter: TSplitter
    Left = 165
    Top = 110
    Width = 4
    Height = 238
    Cursor = crHSplit
    Beveled = True
  end
  object Panel15: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 110
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      792
      110)
    object Label13: TLabel
      Left = 392
      Top = 43
      Width = 42
      Height = 14
      Caption = #24180#65292#19982
    end
    object SBPrdtName: TSpeedButton
      Left = 461
      Top = 84
      Width = 86
      Height = 22
      Caption = #21830#21697#32534#30721
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDD0000000DDDDDDDDDDDDDDDDD0000000D444DDDDDDDDDDDDD0000000D444
        DD000000000DD0000000D444DDDDDDDDDDDDD0000000DDDDDDDDDDDDDDDDD000
        0000DDDDDDDDDDDDDDDDD0000000D444DDDDDDDDDDDDD0000000D444DD000000
        000DD0000000D444DDDDDDDDDDDDD0000000DDDDDDDDDDDDDDDDD0000000DDDD
        DDDDDDDDDDDDD0000000D444DDDDDDDDDDDDD0000000D444DD000000000DD000
        0000D444DDDDDDDDDDDDD0000000DDDDDDDDDDDDDDDDD0000000DDDDDDDDDDDD
        DDDDD0000000}
      OnClick = SBCustClick
    end
    object SBType: TSpeedButton
      Left = 3
      Top = 85
      Width = 86
      Height = 22
      Caption = #21830#21697#31867#21035
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777777777777700000007700
        00777777777770000000770FB0774444444470000000770BF077777777777000
        0000770F00777777777770000000770007777777777770000000777777777777
        777770000000777777777777777770000000770000777777777770000000770F
        B0774444444470000000770BF0777777777770000000770F0077777777777000
        0000770007777777777770000000777777777777777770000000777777777777
        777770000000}
      OnClick = SBCustClick
    end
    object SBBrand: TSpeedButton
      Left = 224
      Top = 85
      Width = 86
      Height = 22
      Caption = #21830#21697#21697#29260
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777777777777700000007000
        0777700007777000000070FB074470FB07447000000070BF077770BF07777000
        000070F0077770F0077770000000700077777000777770000000777777777777
        77777000000077777777777777777000000070000777700007777000000070FB
        074470FB07447000000070BF077770BF07777000000070F0077770F007777000
        0000700077777000777770000000777777777777777770000000777777777777
        777770000000}
      OnClick = SBCustClick
    end
    object LabTitle: TLabel
      Left = 2
      Top = 2
      Width = 788
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = #38144#21806#23545#27604#20998#26512
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
    end
    object SBExt: TSpeedButton
      Left = 72
      Top = 5
      Width = 23
      Height = 22
      Hint = #20851#38381'(ESC)'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBExtClick
    end
    object SBPrn: TSpeedButton
      Left = 25
      Top = 5
      Width = 23
      Height = 22
      Hint = #25171#21360'(CTRL+P)'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBPrnClick
    end
    object SBAdd: TSpeedButton
      Left = 4
      Top = 5
      Width = 20
      Height = 22
      Hint = #32479#35745'(CTRL+R)'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBAddClick
    end
    object Label1: TLabel
      Left = 6
      Top = 42
      Width = 56
      Height = 14
      Caption = #25253#34920#31867#22411
    end
    object Label2: TLabel
      Left = 516
      Top = 43
      Width = 42
      Height = 14
      Caption = #24180#23545#27604
    end
    object SBArea: TSpeedButton
      Left = 3
      Top = 59
      Width = 69
      Height = 22
      Caption = #21306#22495
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000070000000000777777000000070FFFFFFFF0777777000000070FF
        FFFFFF0777777000000070F000000F0777777000000070F0FBFB000777777000
        000070F0BFBF0F0007777000000070F000000F0770077000000070FF0FF44444
        44444000000070FF0FF4FBFBFBFB4000000070FFF0F4BFBFBFBF4000000070FF
        F0F4FBFBFBFB4000000070000004BFBFBFBF4000000077777704444444444000
        000077777774F444444440000000777777744444444440000000777777777777
        777770000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SBCustClick
    end
    object SBCust: TSpeedButton
      Left = 225
      Top = 60
      Width = 69
      Height = 22
      Caption = #23458#25143
      Flat = True
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDDDDDDDD000000DD00
        0DDDD000DDDDDD000000D07E70DD07E70DDDDD000000D0E7E0DD0E7E0DDDDD00
        0000D0FE70DD0FE70DDDDD000000D0EFE0DD0EFE0DDDDD000000D8000D00D000
        8DDDDD000000DD0DDDDDDDDD0DDD0D000000DDD0DDD0DDDDD0DD0D000000DDDD
        0DD0DDDDDD0D0D000000DDDDD0D0DDDDDDD0DD000000DDDDDD0DDDDDDDDDDD00
        0000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SBCustClick
    end
    object SBExp: TSpeedButton
      Left = 48
      Top = 5
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SBExpClick
    end
    object CBXYear: TComboBox
      Left = 316
      Top = 35
      Width = 73
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 1
    end
    object ESPrdtName: TEdit
      Left = 550
      Top = 84
      Width = 236
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object CBXType: TComboBox
      Left = 91
      Top = 84
      Width = 127
      Height = 22
      ItemHeight = 14
      TabOrder = 6
      OnChange = CBXTypeChange
    end
    object CBXBrand: TComboBox
      Left = 313
      Top = 84
      Width = 139
      Height = 22
      ItemHeight = 14
      TabOrder = 7
      Text = #20840#37096
    end
    object CbxSType: TComboBox
      Left = 65
      Top = 35
      Width = 107
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 0
      Items.Strings = (
        #25353#26376#38144#37327#23545#27604
        #21830#21697#31867#21035#23545#27604
        #21830#21697#21697#29260#23545#27604
        #23458#25143#21517#31216#23545#27604)
    end
    object CBxQtr: TCheckBox
      Left = 695
      Top = 40
      Width = 91
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = #25353#23395#24230#23545#27604
      TabOrder = 3
    end
    object cbxPerYear: TComboBox
      Left = 438
      Top = 35
      Width = 73
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 2
    end
    object cbxArea: TComboBox
      Left = 73
      Top = 59
      Width = 144
      Height = 22
      ItemHeight = 14
      TabOrder = 4
    end
    object CBXCust: TComboBox
      Left = 296
      Top = 59
      Width = 488
      Height = 22
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 14
      TabOrder = 5
    end
  end
  object Grid: TDBGridEh
    Left = 0
    Top = 110
    Width = 165
    Height = 238
    Align = alLeft
    DataSource = DS
    Flat = True
    FooterColor = 10223615
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    UseMultiTitle = True
    Visible = False
    OnTitleBtnClick = GridTitleBtnClick
    Columns = <
      item
        EditButtons = <>
        Footers = <>
      end>
  end
  object Chart1: TChart
    Left = 169
    Top = 110
    Width = 623
    Height = 238
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = GB2312_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -24
    Title.Font.Name = #40657#20307
    Title.Font.Style = []
    Title.Text.Strings = (
      '')
    Legend.HorizMargin = 1
    Legend.ShadowSize = 1
    Legend.TextStyle = ltsRightValue
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clRed
      Title = #24403#21069#24180#20221
      ValueFormat = '#,##0.#0'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 16744448
      Title = #23545#27604#24180#20221
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object SaleParall: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    AfterScroll = SaleParallAfterScroll
    CommandTimeout = 0
    ProcedureName = 'P_PrdtSaleParall'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Flag'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Year'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PerYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Querter'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@cCustName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cAreaName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cTypeName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cBrandName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cPrdtName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 120
    Top = 132
  end
  object DS: TDataSource
    DataSet = SaleParall
    Left = 192
    Top = 204
  end
  object PrnGrid: TPrintDBGridEh
    DBGridEh = Grid
    Options = []
    Page.BottomMargin = 2
    Page.LeftMargin = 2
    Page.RightMargin = 2
    Page.TopMargin = 2
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #23458#25143#38144#37327#26376#32479#35745#34920)
    PageHeader.Font.Charset = GB2312_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #40657#20307
    PageHeader.Font.Style = []
    Units = MM
    Left = 376
    Top = 220
  end
end
