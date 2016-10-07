object ProvAnasFrm: TProvAnasFrm
  Left = 2
  Top = 110
  Width = 812
  Height = 480
  Caption = #20379#24212#21830#24555#36895#20998#26512
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
  object Panel15: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 89
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
    object SBCust: TSpeedButton
      Left = 3
      Top = 37
      Width = 86
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
      Top = 60
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
      Top = 61
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
      Top = 61
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
      Width = 800
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = #20379#24212#21830#24555#36895#20998#26512
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
    end
    object btnSBExt1: TSpeedButton
      Left = 71
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
      OnClick = btnSBExt1Click
    end
    object btnSBPrn1: TSpeedButton
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
      OnClick = btnSBPrn1Click
    end
    object btnSBAdd1: TSpeedButton
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
      OnClick = btnSBAdd1Click
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
    object CBXType: TComboBox
      Left = 91
      Top = 60
      Width = 127
      Height = 22
      ItemHeight = 14
      TabOrder = 1
      OnChange = CBXTypeChange
    end
    object CBXBrand: TComboBox
      Left = 313
      Top = 60
      Width = 139
      Height = 22
      ItemHeight = 14
      TabOrder = 2
      Text = #20840#37096
    end
    object ESPrdtName: TEdit
      Left = 548
      Top = 60
      Width = 249
      Height = 22
      BevelEdges = [beLeft, beTop, beRight]
      TabOrder = 3
    end
    object cbxCust: TComboBox
      Left = 91
      Top = 36
      Width = 708
      Height = 22
      BevelEdges = [beLeft, beTop, beRight]
      ItemHeight = 14
      TabOrder = 0
      OnChange = CBXTypeChange
    end
  end
  object Page: TPageControl
    Left = 0
    Top = 89
    Width = 804
    Height = 364
    ActivePage = ts2
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    object ts1: TTabSheet
      Caption = #37319#36141#32479#35745#20998#26512
      object Page0: TPageControl
        Left = 0
        Top = 37
        Width = 796
        Height = 298
        ActivePage = TabSheet1
        Align = alClient
        TabIndex = 0
        TabOrder = 0
        OnChange = Page0Change
        object TabSheet1: TTabSheet
          Caption = #25253#34920
          object Grid0: TDBGridEh
            Left = 0
            Top = 0
            Width = 999
            Height = 269
            Align = alClient
            DataSource = DS0
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
            OnTitleBtnClick = Grid0TitleBtnClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = #22270#34920
          ImageIndex = 1
          object Chart0: TChart
            Left = 0
            Top = 0
            Width = 788
            Height = 269
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
              #23458#25143#38144#21806#25968#25454#32479#35745#34920)
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
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 796
        Height = 37
        Align = alTop
        Caption = ' '#20998#26512#26465#20214' '
        TabOrder = 1
        object Label1: TLabel
          Left = 74
          Top = 20
          Width = 56
          Height = 14
          Caption = #20998#26512#31867#22411
        end
        object Label13: TLabel
          Left = 392
          Top = 20
          Width = 14
          Height = 14
          Caption = #24180
        end
        object Label2: TLabel
          Left = 474
          Top = 20
          Width = 14
          Height = 14
          Caption = #26376
        end
        object CbxSType0: TComboBox
          Left = 133
          Top = 12
          Width = 128
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          OnChange = CbxSType0Change
          Items.Strings = (
            #23458#25143#26376#37319#36141#32479#35745
            #21830#21697#26376#37319#36141#32479#35745
            #21830#21697#26085#37319#36141#32479#35745
            #21830#21697#21697#29260#32479#35745
            #21830#21697#31867#21035#32479#35745)
        end
        object CBXYear0: TComboBox
          Left = 316
          Top = 12
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object CBXMonth0: TComboBox
          Left = 411
          Top = 12
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 2
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
      end
    end
    object ts2: TTabSheet
      Caption = #37319#36141#36235#21183#20998#26512
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 796
        Height = 37
        Align = alTop
        Caption = ' '#20998#26512#26465#20214' '
        TabOrder = 0
        object Label4: TLabel
          Left = 58
          Top = 19
          Width = 56
          Height = 14
          Caption = #25253#34920#31867#22411
        end
        object Label3: TLabel
          Left = 276
          Top = 19
          Width = 42
          Height = 14
          Caption = #20998#26512#20174
        end
        object Label5: TLabel
          Left = 402
          Top = 19
          Width = 14
          Height = 14
          Caption = #24180
        end
        object Label6: TLabel
          Left = 481
          Top = 19
          Width = 112
          Height = 14
          Caption = #26376#20026#27490#65292#20043#21069#36830#32493
        end
        object Label7: TLabel
          Left = 658
          Top = 19
          Width = 28
          Height = 14
          Caption = #20010#26376
        end
        object CbxTrend: TComboBox
          Left = 117
          Top = 11
          Width = 120
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          Items.Strings = (
            #21830#21697#37319#36141#36235#21183#20998#26512
            #23458#25143#37319#36141#36235#21183#20998#26512)
        end
        object CBXYear1: TComboBox
          Left = 322
          Top = 11
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 1
        end
        object CBXMonth1: TComboBox
          Left = 418
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 2
          Items.Strings = (
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
        object CBXMons1: TComboBox
          Left = 595
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 3
          Items.Strings = (
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
        object cbxUpDown1: TComboBox
          Left = 687
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 4
          Items.Strings = (
            #38477#20302
            #22686#38271)
        end
      end
      object Page1: TPageControl
        Left = 0
        Top = 37
        Width = 796
        Height = 298
        ActivePage = TabSheet9
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        OnChange = Page1Change
        object TabSheet9: TTabSheet
          Caption = #25253#34920
          object Grid1: TDBGridEh
            Left = 0
            Top = 0
            Width = 788
            Height = 269
            Align = alClient
            DataSource = DS1
            Flat = True
            FooterColor = 10223615
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -14
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            UseMultiTitle = True
            OnTitleBtnClick = Grid0TitleBtnClick
          end
        end
        object TabSheet10: TTabSheet
          Caption = #22270#34920
          ImageIndex = 1
          object Chart1: TChart
            Left = 0
            Top = 0
            Width = 788
            Height = 269
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -24
            Title.Font.Name = #40657#20307
            Title.Font.Style = []
            Title.Text.Strings = (
              #23458#25143#38144#21806#25968#25454#32479#35745#34920)
            Legend.TextStyle = ltsRightValue
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            object Series1: TFastLineSeries
              Marks.ArrowLength = 20
              Marks.Style = smsValue
              Marks.Transparent = True
              Marks.Visible = False
              SeriesColor = clRed
              ShowInLegend = False
              ValueFormat = '#,##0.#0'
              LinePen.Color = clRed
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #37319#36141#24322#21160#20998#26512
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 796
        Height = 37
        Align = alTop
        Caption = ' '#20998#26512#26465#20214' '
        TabOrder = 0
        object Label8: TLabel
          Left = 42
          Top = 19
          Width = 56
          Height = 14
          Caption = #25253#34920#31867#22411
        end
        object Label9: TLabel
          Left = 260
          Top = 19
          Width = 42
          Height = 14
          Caption = #20998#26512#20174
        end
        object Label10: TLabel
          Left = 386
          Top = 19
          Width = 14
          Height = 14
          Caption = #24180
        end
        object Label11: TLabel
          Left = 465
          Top = 19
          Width = 84
          Height = 14
          Caption = #26376#27604#19978#26376#38144#37327
        end
        object Label12: TLabel
          Left = 617
          Top = 19
          Width = 14
          Height = 14
          Caption = #36798
        end
        object Label14: TLabel
          Left = 697
          Top = 19
          Width = 14
          Height = 14
          Caption = #65285
        end
        object CbxAlarm: TComboBox
          Left = 101
          Top = 11
          Width = 136
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          Items.Strings = (
            #21830#21697#21517#31216#24322#21160#30417#25511
            #21830#21697#31867#21035#24322#21160#30417#25511
            #21830#21697#21697#29260#24322#21160#30417#25511
            #23458#25143#37319#36141#24322#21160#30417#25511)
        end
        object CBXYear2: TComboBox
          Left = 306
          Top = 11
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object CBXMonth2: TComboBox
          Left = 402
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 2
          Items.Strings = (
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
        object cbxUpDown2: TComboBox
          Left = 551
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 3
          Items.Strings = (
            #22686#38271
            #38477#20302)
        end
        object SEPercent: TSpinEdit
          Left = 633
          Top = 10
          Width = 60
          Height = 23
          MaxLength = 3
          MaxValue = 100
          MinValue = 0
          TabOrder = 4
          Value = 20
        end
      end
      object Grid2: TDBGridEh
        Left = 0
        Top = 37
        Width = 796
        Height = 298
        Align = alClient
        DataSource = DS2
        Flat = True
        FooterColor = 10223615
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -14
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        OnTitleBtnClick = Grid0TitleBtnClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = #37319#36141#23545#27604#20998#26512
      ImageIndex = 3
      object Splitter: TSplitter
        Left = 165
        Top = 37
        Width = 4
        Height = 298
        Cursor = crHSplit
        Beveled = True
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 796
        Height = 37
        Align = alTop
        Caption = ' '#20998#26512#26465#20214' '
        TabOrder = 0
        DesignSize = (
          796
          37)
        object Label15: TLabel
          Left = 66
          Top = 19
          Width = 56
          Height = 14
          Caption = #25253#34920#31867#22411
        end
        object Label16: TLabel
          Left = 396
          Top = 19
          Width = 42
          Height = 14
          Caption = #24180#65292#19982
        end
        object Label17: TLabel
          Left = 520
          Top = 19
          Width = 42
          Height = 14
          Caption = #24180#23545#27604
        end
        object CbxSType: TComboBox
          Left = 125
          Top = 11
          Width = 107
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          Items.Strings = (
            #25353#26376#37319#36141#23545#27604
            #21830#21697#31867#21035#23545#27604
            #21830#21697#21697#29260#23545#27604
            #23458#25143#21517#31216#23545#27604)
        end
        object CBXYear3: TComboBox
          Left = 320
          Top = 11
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object cbxPerYear3: TComboBox
          Left = 442
          Top = 15
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 2
        end
        object CBxQtr: TCheckBox
          Left = 699
          Top = 16
          Width = 302
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = #25353#23395#24230#23545#27604
          TabOrder = 3
        end
      end
      object Grid3: TDBGridEh
        Left = 0
        Top = 37
        Width = 165
        Height = 298
        Align = alLeft
        DataSource = DS3
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
        Columns = <
          item
            EditButtons = <>
            Footers = <>
          end>
      end
      object Chart2: TChart
        Left = 169
        Top = 37
        Width = 627
        Height = 298
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
        object BarSeries1: TBarSeries
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
    end
    object TabSheet5: TTabSheet
      Caption = #37319#36141#36864#36135#32479#35745#20998#26512
      ImageIndex = 4
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 796
        Height = 37
        Align = alTop
        Caption = ' '#20998#26512#26465#20214' '
        TabOrder = 0
        object Label18: TLabel
          Left = 74
          Top = 20
          Width = 56
          Height = 14
          Caption = #20998#26512#31867#22411
        end
        object Label19: TLabel
          Left = 392
          Top = 20
          Width = 14
          Height = 14
          Caption = #24180
        end
        object Label20: TLabel
          Left = 474
          Top = 20
          Width = 14
          Height = 14
          Caption = #26376
        end
        object cbxSType2: TComboBox
          Left = 133
          Top = 12
          Width = 128
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          OnChange = cbxSType2Change
          Items.Strings = (
            #23458#25143#26376#37319#36141#32479#35745
            #21830#21697#26376#37319#36141#32479#35745
            #21830#21697#26085#37319#36141#32479#35745
            #21830#21697#21697#29260#32479#35745
            #21830#21697#31867#21035#32479#35745)
        end
        object cbxYear4: TComboBox
          Left = 316
          Top = 12
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object cbxMonth4: TComboBox
          Left = 411
          Top = 12
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 2
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
      end
      object Page2: TPageControl
        Left = 0
        Top = 37
        Width = 796
        Height = 298
        ActivePage = TabSheet11
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        OnChange = Page2Change
        object TabSheet11: TTabSheet
          Caption = #25253#34920
          object Grid4: TDBGridEh
            Left = 0
            Top = 0
            Width = 999
            Height = 269
            Align = alClient
            DataSource = DS4
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
          end
        end
        object TabSheet12: TTabSheet
          Caption = #22270#34920
          ImageIndex = 1
          object Chart4: TChart
            Left = 0
            Top = 0
            Width = 788
            Height = 269
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
              #23458#25143#38144#21806#25968#25454#32479#35745#34920)
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
    end
    object TabSheet6: TTabSheet
      Caption = #37319#36141#36864#36135#36235#21183#20998#26512
      ImageIndex = 5
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 796
        Height = 37
        Align = alTop
        Caption = ' '#20998#26512#26465#20214' '
        TabOrder = 0
        object Label21: TLabel
          Left = 58
          Top = 19
          Width = 56
          Height = 14
          Caption = #25253#34920#31867#22411
        end
        object Label22: TLabel
          Left = 276
          Top = 19
          Width = 42
          Height = 14
          Caption = #20998#26512#20174
        end
        object Label23: TLabel
          Left = 402
          Top = 19
          Width = 14
          Height = 14
          Caption = #24180
        end
        object Label24: TLabel
          Left = 481
          Top = 19
          Width = 112
          Height = 14
          Caption = #26376#20026#27490#65292#20043#21069#36830#32493
        end
        object Label25: TLabel
          Left = 658
          Top = 19
          Width = 28
          Height = 14
          Caption = #20010#26376
        end
        object cbxUnTrend: TComboBox
          Left = 117
          Top = 11
          Width = 120
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          Items.Strings = (
            #21830#21697#37319#36141#36235#21183#20998#26512
            #23458#25143#37319#36141#36235#21183#20998#26512)
        end
        object cbxUnYear: TComboBox
          Left = 322
          Top = 11
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object cbxUnMonth: TComboBox
          Left = 418
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 2
          Items.Strings = (
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
        object cbxUnMons: TComboBox
          Left = 595
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 3
          Items.Strings = (
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
        object cbxUnUpDown: TComboBox
          Left = 687
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 4
          Items.Strings = (
            #38477#20302
            #22686#38271)
        end
      end
      object Page3: TPageControl
        Left = 0
        Top = 37
        Width = 796
        Height = 298
        ActivePage = TabSheet13
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        OnChange = Page3Change
        object TabSheet13: TTabSheet
          Caption = #25253#34920
          object Grid5: TDBGridEh
            Left = 0
            Top = 0
            Width = 999
            Height = 269
            Align = alClient
            DataSource = DS5
            Flat = True
            FooterColor = 10223615
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -14
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            UseMultiTitle = True
            OnTitleBtnClick = Grid0TitleBtnClick
          end
        end
        object TabSheet14: TTabSheet
          Caption = #22270#34920
          ImageIndex = 1
          object Chart3: TChart
            Left = 0
            Top = 0
            Width = 788
            Height = 269
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -24
            Title.Font.Name = #40657#20307
            Title.Font.Style = []
            Title.Text.Strings = (
              #23458#25143#38144#21806#25968#25454#32479#35745#34920)
            Legend.TextStyle = ltsRightValue
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            object FastLineSeries1: TFastLineSeries
              Marks.ArrowLength = 20
              Marks.Style = smsValue
              Marks.Transparent = True
              Marks.Visible = False
              SeriesColor = clRed
              ShowInLegend = False
              ValueFormat = '#,##0.#0'
              LinePen.Color = clRed
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
            end
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #37319#36141#36864#36135#24322#21160#20998#26512
      ImageIndex = 6
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 796
        Height = 37
        Align = alTop
        Caption = ' '#20998#26512#26465#20214' '
        TabOrder = 0
        object Label26: TLabel
          Left = 42
          Top = 19
          Width = 56
          Height = 14
          Caption = #25253#34920#31867#22411
        end
        object Label27: TLabel
          Left = 260
          Top = 19
          Width = 42
          Height = 14
          Caption = #20998#26512#20174
        end
        object Label28: TLabel
          Left = 386
          Top = 19
          Width = 14
          Height = 14
          Caption = #24180
        end
        object Label29: TLabel
          Left = 465
          Top = 19
          Width = 84
          Height = 14
          Caption = #26376#27604#19978#26376#38144#37327
        end
        object Label30: TLabel
          Left = 617
          Top = 19
          Width = 14
          Height = 14
          Caption = #36798
        end
        object Label31: TLabel
          Left = 697
          Top = 19
          Width = 14
          Height = 14
          Caption = #65285
        end
        object cbxUnAlarm: TComboBox
          Left = 101
          Top = 11
          Width = 136
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          Items.Strings = (
            #21830#21697#21517#31216#24322#21160#30417#25511
            #21830#21697#31867#21035#24322#21160#30417#25511
            #21830#21697#21697#29260#24322#21160#30417#25511
            #23458#25143#37319#36141#24322#21160#30417#25511)
        end
        object cbxUnAYear: TComboBox
          Left = 306
          Top = 11
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object cbxUnAMonth: TComboBox
          Left = 402
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 2
          Items.Strings = (
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
        object cbxUnAUpDown: TComboBox
          Left = 551
          Top = 11
          Width = 61
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 3
          Items.Strings = (
            #22686#38271
            #38477#20302)
        end
        object SEUnPercent: TSpinEdit
          Left = 633
          Top = 10
          Width = 60
          Height = 23
          MaxLength = 3
          MaxValue = 100
          MinValue = 0
          TabOrder = 4
          Value = 20
        end
      end
      object Grid6: TDBGridEh
        Left = 0
        Top = 37
        Width = 796
        Height = 298
        Align = alClient
        DataSource = DS6
        Flat = True
        FooterColor = 10223615
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -14
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        OnTitleBtnClick = Grid0TitleBtnClick
      end
    end
    object TabSheet8: TTabSheet
      Caption = #37319#36141#36864#36135#23545#27604#20998#26512
      ImageIndex = 7
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 796
        Height = 37
        Align = alTop
        Caption = ' '#20998#26512#26465#20214' '
        TabOrder = 0
        DesignSize = (
          796
          37)
        object Label32: TLabel
          Left = 66
          Top = 19
          Width = 56
          Height = 14
          Caption = #25253#34920#31867#22411
        end
        object Label33: TLabel
          Left = 396
          Top = 19
          Width = 42
          Height = 14
          Caption = #24180#65292#19982
        end
        object Label34: TLabel
          Left = 520
          Top = 19
          Width = 42
          Height = 14
          Caption = #24180#23545#27604
        end
        object cbxUnSaleType: TComboBox
          Left = 125
          Top = 11
          Width = 107
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          Items.Strings = (
            #25353#26376#37319#36141#23545#27604
            #21830#21697#31867#21035#23545#27604
            #21830#21697#21697#29260#23545#27604
            #23458#25143#21517#31216#23545#27604)
        end
        object cbxUnSaleYear: TComboBox
          Left = 320
          Top = 11
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object cbxUnSalePerYear: TComboBox
          Left = 442
          Top = 11
          Width = 73
          Height = 22
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 2
        end
        object chkUnSaleQtr: TCheckBox
          Left = 699
          Top = 16
          Width = 302
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = #25353#23395#24230#23545#27604
          TabOrder = 3
        end
      end
      object Chart5: TChart
        Left = 165
        Top = 37
        Width = 631
        Height = 298
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
        TabOrder = 1
        object BarSeries2: TBarSeries
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
        object BarSeries3: TBarSeries
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
      object Grid7: TDBGridEh
        Left = 0
        Top = 37
        Width = 165
        Height = 298
        Align = alLeft
        DataSource = DS7
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
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        Visible = False
        Columns = <
          item
            EditButtons = <>
            Footers = <>
          end>
      end
    end
  end
  object SaleStatProc: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
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
    Left = 68
    Top = 200
  end
  object DS0: TDataSource
    DataSet = SaleStatProc
    Left = 68
    Top = 256
  end
  object PrnGrid: TPrintDBGridEh
    DBGridEh = Grid0
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
    Left = 428
    Top = 356
  end
  object DS1: TDataSource
    AutoEdit = False
    DataSet = PrdtProc
    Left = 135
    Top = 256
  end
  object AlarmProc: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_StockMulChg;1'
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
        DataType = ftInteger
        Precision = 10
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
        Name = '@Mon'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Dir'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Percent'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
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
    Left = 202
    Top = 200
  end
  object DS2: TDataSource
    DataSet = AlarmProc
    Left = 202
    Top = 256
  end
  object SaleParall: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    AfterScroll = SaleParallAfterScroll
    CommandTimeout = 0
    ProcedureName = 'P_PrdtStockParall;1'
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
    Left = 270
    Top = 200
  end
  object DS3: TDataSource
    DataSet = SaleParall
    Left = 270
    Top = 256
  end
  object UnSaleStatProc: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_PrdtUnStockStat;1'
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
    Left = 337
    Top = 200
  end
  object DS4: TDataSource
    DataSet = UnSaleStatProc
    Left = 337
    Top = 256
  end
  object unPrdtProc: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_UnStockTrendStat;1'
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
        Name = '@Mons'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@UpDown'
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
    Left = 404
    Top = 200
  end
  object DS5: TDataSource
    DataSet = unPrdtProc
    Left = 404
    Top = 256
  end
  object UnAlarmProc: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_UnStockMulChg;1'
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
        DataType = ftInteger
        Precision = 10
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
        Name = '@Mon'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Dir'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Percent'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
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
    Left = 472
    Top = 200
  end
  object DS6: TDataSource
    DataSet = UnAlarmProc
    Left = 472
    Top = 256
  end
  object UnSaleParall: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    AfterScroll = UnSaleParallAfterScroll
    CommandTimeout = 0
    ProcedureName = 'P_PrdtUnStockParall;1'
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
    Left = 548
    Top = 204
  end
  object DS7: TDataSource
    DataSet = UnSaleParall
    Left = 544
    Top = 264
  end
  object PrdtProc: TADOStoredProc
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_StockTrendStat;1'
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
        Name = '@Mons'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@UpDown'
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
    Left = 136
    Top = 200
  end
end
