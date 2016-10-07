object PrdtStockFrm: TPrdtStockFrm
  Left = 0
  Top = 69
  Width = 800
  Height = 480
  Caption = #23458#25143#38144#21806#25253#34920
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
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
    object Label13: TLabel
      Left = 396
      Top = 43
      Width = 14
      Height = 14
      Caption = #24180
    end
    object SBCust: TSpeedButton
      Left = 225
      Top = 60
      Width = 69
      Height = 22
      Caption = #20379#24212#21830
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
      Caption = #37319#36141#32479#35745
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
    end
    object SBExt: TSpeedButton
      Left = 70
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
    object SBSum: TSpeedButton
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
      OnClick = SBSumClick
    end
    object Label1: TLabel
      Left = 6
      Top = 42
      Width = 56
      Height = 14
      Caption = #25253#34920#31867#22411
    end
    object Label2: TLabel
      Left = 474
      Top = 43
      Width = 14
      Height = 14
      Caption = #26376
    end
    object SBArea: TSpeedButton
      Left = 3
      Top = 60
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
    object SBExp: TSpeedButton
      Left = 47
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
      Width = 234
      Height = 22
      AutoSize = False
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object CBXCust: TComboBox
      Left = 296
      Top = 60
      Width = 488
      Height = 22
      ItemHeight = 14
      TabOrder = 3
    end
    object CBXType: TComboBox
      Left = 91
      Top = 84
      Width = 127
      Height = 22
      ItemHeight = 14
      TabOrder = 4
      OnChange = CBXTypeChange
    end
    object CBXBrand: TComboBox
      Left = 313
      Top = 84
      Width = 139
      Height = 22
      ItemHeight = 14
      TabOrder = 5
      Text = #20840#37096
    end
    object CbxSType: TComboBox
      Left = 65
      Top = 35
      Width = 128
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 0
      OnChange = CbxSTypeChange
      Items.Strings = (
        #23458#25143#26376#37319#36141#32479#35745
        #21306#22495#26376#37319#36141#32479#35745
        #21830#21697#26376#37319#36141#32479#35745
        #21830#21697#26085#37319#36141#32479#35745
        #21830#21697#21697#29260#32479#35745
        #21830#21697#31867#21035#32479#35745)
    end
    object CBXMonth: TComboBox
      Left = 411
      Top = 35
      Width = 61
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 7
      Items.Strings = (
        #19981#25353#26376
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object cbxArea: TComboBox
      Left = 73
      Top = 60
      Width = 144
      Height = 22
      ItemHeight = 14
      TabOrder = 2
      OnChange = CbxSTypeChange
    end
  end
  object Page: TPageControl
    Left = 0
    Top = 110
    Width = 792
    Height = 343
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    OnChange = PageChange
    object TabSheet1: TTabSheet
      Caption = #25253#34920
      object Grid: TDBGridEh
        Left = 0
        Top = 0
        Width = 784
        Height = 314
        Align = alClient
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
        RowSizingAllowed = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        OnTitleBtnClick = GridTitleBtnClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #22270#34920
      ImageIndex = 1
      object Chart1: TChart
        Left = 0
        Top = 0
        Width = 784
        Height = 314
        AnimatedZoom = True
        AnimatedZoomSteps = 5
        BackWall.Brush.Color = clWhite
        MarginLeft = 5
        MarginRight = 5
        MarginTop = 0
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -24
        Title.Font.Name = #40657#20307
        Title.Font.Style = []
        Title.Text.Strings = (
          #37319#36141#25968#25454#32479#35745#34920)
        Legend.TextStyle = ltsRightValue
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DOptions.Zoom = 102
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
      end
    end
  end
  object DS: TDataSource
    DataSet = StockStatProc
    Left = 232
    Top = 252
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
    Left = 424
    Top = 216
  end
  object StockStatProc: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    ProcedureName = 'P_PrdtStockStat;1'
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
        Name = '@Month'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
    Prepared = True
    Left = 164
    Top = 248
  end
end
