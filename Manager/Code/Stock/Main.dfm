object MainFrm: TMainFrm
  Left = 0
  Top = 78
  Width = 800
  Height = 492
  Caption = #24211#23384#31649#29702
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000000200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000009999
    9999999999000000000000000000099999999999990000000000000000000099
    9999999999900000000000000000000999999999999000000000000000000000
    9999999999900000000000000000000009999999999900000000000000000000
    0099999999990000000000000000000000099999999990000000000000000000
    0000999999999000000000000000000000000999999999000000000000000000
    0000009999999900000000000000000000000009999999000000000000000000
    0000000099999990000000000000000000000000099999900000000000000000
    0000000000999990000000000000000000000000000999990000000000000000
    0000000000009999000000000000000000000000000009990000000000000000
    0000000000000099900000000000000000000000000000099000000000000000
    0000000000000000990000000000000000000000000000000900000000000000
    0000000000000000009000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFF0003FE008003FC01C001FC03E001FC07F001F80FF800F81FFC00F83FFE00
    707FFF0070FFFF8031FFFFC033FFFFE027FFFFF00FFFFFF81FFFFFFC1FFFFFFE
    0FFFFFFF0FFFFFFF8FFFFFFFC7FFFFFFE7FFFFFFF3FFFFFFFBFFFFFFFDFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000800000000000000000000000000000000000000000000000000080000080
    000000808000800000008000800080800000C0C0C000808080000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000
    0000000000009999999000000000099999900000000000999999000000000009
    9999000000000000999990000000000009999000000000000099900000000000
    0009990000000000000099000000000000000990000000000000009000000000
    00000009000000000000000000000000000000000000FFFF0049FFFF5F4201F0
    4D4181E15348C0E34535E0C70047F04F5663F81FEDC2FC3FB9B7FE3FE95CFF3F
    7373FF9F6E2EFFDF008FFFEF00FFFFFF0031FFFF0049}
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 14
  object OutlookBar: TfcOutlookBar
    Left = 0
    Top = 50
    Width = 101
    Height = 369
    ActivePage = Setting
    Align = alLeft
    Animation.Enabled = True
    Animation.Interval = 1
    Animation.Steps = 7
    AutoBold = True
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderStyle = bsSingle
    ButtonSize = 20
    ButtonClassName = 'TfcShapeBtn'
    Layout = loVertical
    Options = [cboAutoCreateOutlookList]
    PanelAlignment = paDynamic
    ShowButtons = True
    TabOrder = 0
    object List: TfcShapeBtn
      Left = 0
      Top = 0
      Width = 97
      Height = 20
      Caption = #21333#25454#22788#29702
      Color = clBtnFace
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      GroupIndex = 1
      NumGlyphs = 0
      ParentClipping = False
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 0
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
    end
    object Report: TfcShapeBtn
      Left = 0
      Top = 20
      Width = 97
      Height = 20
      Caption = #32479#35745#25253#34920
      Color = clBtnFace
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      GroupIndex = 1
      ParentClipping = False
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
    end
    object Setting: TfcShapeBtn
      Left = 0
      Top = 40
      Width = 97
      Height = 20
      Caption = #35774#32622
      Color = clBtnFace
      DitherColor = clWhite
      Down = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      GroupIndex = 1
      ParentClipping = False
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 5
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
    end
    object OutlookPanel1: TfcOutlookPanel
      Left = 0
      Top = 0
      Width = 97
      Height = 0
      object fcOutlookBar1OutlookList1: TfcOutlookList
        Left = 0
        Top = 0
        Width = 97
        Height = 0
        Align = alClient
        BorderStyle = bsSingle
        ClickStyle = csClick
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        HotTrackStyle = hsIconHilite
        Images = ImageOutLook
        ItemHighlightColor = clSkyBlue
        ItemHotTrackColor = clGradientActiveCaption
        ItemLayout = blGlyphTop
        ItemShadowColor = clBtnText
        ItemSelectedDitherColor = clBtnHighlight
        Items = <
          item
            ImageIndex = 13
            Selected = False
            Separation = 10
            Tag = 0
            Text = #20837#24211#21333
          end
          item
            ImageIndex = 1
            Selected = False
            Separation = 10
            Tag = 1
            Text = #20986#24211#21333
          end
          item
            ImageIndex = 0
            Selected = False
            Separation = 10
            Tag = 2
            Text = #37319#36141#36864#36135#21333
          end
          item
            ImageIndex = 17
            Selected = False
            Separation = 10
            Tag = 3
            Text = #38144#21806#36864#36135#21333
          end
          item
            ImageIndex = 20
            Selected = False
            Separation = 10
            Tag = 4
            Text = #24211#23384#35843#25320#21333
          end
          item
            ImageIndex = 21
            Selected = False
            Separation = 10
            Tag = 5
            Text = #24211#23384#30424#28857#21333
          end>
        ItemSpacing = 20
        ItemsWidth = 0
        Layout = loVertical
        ScrollButtonsVisible = True
        ScrollInterval = 250
        Transparent = True
        OnItemClick = fcOutlookBar1OutlookList1ItemClick
      end
    end
    object OutlookPanel2: TfcOutlookPanel
      Left = 0
      Top = 0
      Width = 97
      Height = 0
      object fcOutlookBar1OutlookList2: TfcOutlookList
        Left = 0
        Top = 0
        Width = 97
        Height = 0
        Align = alClient
        BorderStyle = bsNone
        ClickStyle = csClick
        Color = clBtnShadow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        HotTrackStyle = hsIconHilite
        Images = ImageOutLook
        ItemHighlightColor = clBtnFace
        ItemHotTrackColor = clBtnShadow
        ItemLayout = blGlyphTop
        ItemShadowColor = clGradientActiveCaption
        ItemSelectedDitherColor = clSkyBlue
        Items = <
          item
            ImageIndex = 3
            Selected = False
            Separation = 10
            Tag = 6
            Text = #37319#36141#32479#35745
          end
          item
            ImageIndex = 4
            Selected = False
            Separation = 10
            Tag = 7
            Text = #38144#21806#32479#35745
          end
          item
            ImageIndex = 14
            Selected = False
            Separation = 10
            Tag = 8
            Text = #36864#36135#32479#35745
          end
          item
            ImageIndex = 15
            Selected = False
            Separation = 10
            Tag = 9
            Text = #35843#25320#32479#35745
          end
          item
            ImageIndex = 10
            Selected = False
            Separation = 10
            Tag = 10
            Text = #30424#28857#32479#35745
          end
          item
            ImageIndex = 5
            Selected = False
            Separation = 10
            Tag = 11
            Text = #24211#23384#32479#35745
          end
          item
            ImageIndex = 6
            Selected = False
            Separation = 10
            Tag = 12
            Text = #36827#38144#23384#26126#32454
          end>
        ItemSpacing = 20
        ItemsWidth = 0
        Layout = loVertical
        ScrollButtonsVisible = True
        ScrollInterval = 250
        Transparent = True
        OnItemClick = fcOutlookBar1OutlookList1ItemClick
      end
    end
    object OutlookPanel3: TfcOutlookPanel
      Left = 0
      Top = 60
      Width = 97
      Height = 305
      object fcOutlookBar1OutlookList3: TfcOutlookList
        Left = 0
        Top = 0
        Width = 97
        Height = 305
        Align = alClient
        BorderStyle = bsSingle
        ClickStyle = csClick
        Color = clBtnShadow
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        HotTrackStyle = hsIconHilite
        Images = ImageOutLook
        ItemHighlightColor = clSkyBlue
        ItemHotTrackColor = clGradientActiveCaption
        ItemLayout = blGlyphTop
        ItemShadowColor = clBtnText
        ItemSelectedDitherColor = clBtnHighlight
        Items = <
          item
            ImageIndex = 19
            Selected = False
            Separation = 10
            Tag = 13
            Text = #21830#21697#32534#30721#20449#24687
          end
          item
            ImageIndex = 29
            Selected = False
            Separation = 10
            Tag = 14
            Text = #20379#24212#21830#20449#24687
          end
          item
            ImageIndex = 2
            Selected = False
            Separation = 10
            Tag = 15
            Text = #23458#25143#20449#24687
          end
          item
            ImageIndex = 7
            Selected = False
            Separation = 10
            Tag = 16
            Text = #19994#21153#21592#20449#24687
          end>
        ItemSpacing = 20
        ItemsWidth = 0
        Layout = loVertical
        ScrollButtonsVisible = True
        ScrollInterval = 250
        Transparent = True
        OnItemClick = fcOutlookBar1OutlookList1ItemClick
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 792
    Height = 50
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 22
        Width = 788
      end
      item
        Control = ToolBar2
        ImageIndex = -1
        MinHeight = 22
        Visible = False
        Width = 788
      end>
    Images = ImageOutLook
    ShowText = False
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 775
      Height = 22
      AutoSize = True
      ButtonWidth = 55
      Caption = 'ToolBar1'
      Color = clBtnFace
      EdgeBorders = []
      EdgeOuter = esNone
      Flat = True
      Images = ImageBtn
      List = True
      ParentColor = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      Transparent = True
      object TBNew: TToolButton
        Left = 0
        Top = 0
        Hint = 'CTRL+N'
        Caption = #26032#22686
        DropdownMenu = PopAddMenu
        ImageIndex = 0
        Style = tbsDropDown
        OnClick = TBNewClick
      end
      object TBUpdate: TToolButton
        Left = 68
        Top = 0
        Hint = 'CTRL+U'
        Caption = #20462#25913
        ImageIndex = 1
        OnClick = TBUpdateClick
      end
      object TBPrnList: TToolButton
        Left = 123
        Top = 0
        Hint = 'CTRL+P'
        Caption = #25171#21360
        ImageIndex = 2
        OnClick = TBPrnListClick
      end
      object TBDel: TToolButton
        Left = 178
        Top = 0
        Hint = 'CTRL+DELETE'
        Caption = #21024#38500
        ImageIndex = 3
        OnClick = TBDelClick
      end
      object TBVou: TToolButton
        Left = 233
        Top = 0
        Caption = #23457#26680
        ImageIndex = 4
        Visible = False
      end
      object TBFind: TToolButton
        Left = 288
        Top = 0
        Hint = 'CTRL+F'
        Caption = #26597#25214
        DropdownMenu = PopFindMenu
        ImageIndex = 7
        Style = tbsDropDown
        OnClick = TBFindClick
      end
    end
    object ToolBar2: TToolBar
      Left = 9
      Top = 24
      Width = 775
      Height = 22
      AutoSize = True
      ButtonWidth = 55
      Caption = 'ToolBar1'
      EdgeBorders = []
      EdgeOuter = esNone
      Flat = True
      Images = ImageBtn
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 1
      Transparent = True
      Visible = False
      object TBSum: TToolButton
        Left = 0
        Top = 0
        Caption = #32479#35745
        ImageIndex = 5
        OnClick = TBSumClick
      end
      object TBPrn: TToolButton
        Left = 55
        Top = 0
        Caption = #25171#21360
        ImageIndex = 2
        OnClick = TBPrnClick
      end
    end
  end
  object Panel14: TPanel
    Left = 101
    Top = 50
    Width = 691
    Height = 369
    Align = alClient
    Alignment = taLeftJustify
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Page: TPageControl
      Left = 2
      Top = 37
      Width = 687
      Height = 330
      ActivePage = TabSheet1
      Align = alClient
      MultiLine = True
      TabIndex = 0
      TabOrder = 0
      TabStop = False
      OnResize = PageResize
      object TabSheet1: TTabSheet
        Caption = #20837#24211#21333'0'
        object Splitter1: TSplitter
          Left = 0
          Top = 169
          Width = 679
          Height = 2
          Cursor = crVSplit
          Align = alTop
          ResizeStyle = rsLine
        end
        object GridIList: TDBGridEh
          Left = 0
          Top = 171
          Width = 679
          Height = 111
          Align = alClient
          DataSource = DSIList
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          SumList.VirtualRecords = True
          TabOrder = 2
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cPrdtID'
              Footer.Value = #21512#35745#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21830#21697#32534#30721
              Title.TitleButton = True
              Width = 115
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footers = <>
              Title.Caption = #21517#31216#21450#35268#26684
              Title.TitleButton = True
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cUnit'
              Footers = <>
              Title.Caption = #21333#20301
              Title.TitleButton = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'nQty'
              Footer.DisplayFormat = '#,###,###,##0'
              Footer.FieldName = 'nQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25968#37327
              Title.TitleButton = True
              Width = 70
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'nPrice'
              Footers = <>
              Title.Caption = #21333#20215
              Title.TitleButton = True
              Width = 72
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'Amt'
              Footer.DisplayFormat = '#,###,###,##0.00'
              Footer.FieldName = 'Amt'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #37329#39069
              Title.TitleButton = True
              Width = 98
            end>
        end
        object GridIHead: TDBGridEh
          Left = 0
          Top = 33
          Width = 679
          Height = 136
          Align = alTop
          DataSource = DSIHead
          DrawMemoText = True
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = TBUpdateClick
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cSN'
              Footer.Value = #21512#35745#24352#25968#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21333#25454#21495#30721
              Title.TitleButton = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'dHapdDate'
              Footer.Alignment = taRightJustify
              Footer.FieldName = 'iSNo'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #26085#26399
              Title.TitleButton = True
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'cProName'
              Footers = <>
              Title.Caption = #20379#24212#21830#21517#31216
              Title.TitleButton = True
              Width = 198
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footers = <>
              Title.Caption = #19994#21153#21592
              Title.TitleButton = True
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'cStkName'
              Footers = <>
              Title.Caption = #20179#24211
              Title.TitleButton = True
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'cVNo'
              Footers = <>
              Title.Caption = #21457#31080#21495#30721
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'OprName'
              Footers = <>
              Title.Caption = #21046#21333
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'iVouch'
              Footers = <>
              Title.Caption = #23457#26680
              Title.TitleButton = True
              Width = 32
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 33
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
            679
            33)
          object SBIProv: TSpeedButton
            Left = 435
            Top = 5
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
            OnClick = SBIProvClick
          end
          object Label3: TLabel
            Left = 256
            Top = 13
            Width = 56
            Height = 14
            Caption = #21333#25454#21495#30721
          end
          object Label1: TLabel
            Left = 4
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel1: TBevel
            Left = 133
            Top = 16
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object IBDate: TDateTimePicker
            Left = 36
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 0
          end
          object IEDate: TDateTimePicker
            Left = 144
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object EISN: TEdit
            Left = 317
            Top = 5
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object CbxIProv: TComboBox
            Left = 507
            Top = 5
            Width = 145
            Height = 22
            AutoDropDown = True
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 14
            TabOrder = 3
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #38144#21806#21333'1'
        ImageIndex = 1
        object Splitter7: TSplitter
          Left = 0
          Top = 169
          Width = 679
          Height = 2
          Cursor = crVSplit
          Align = alTop
          ResizeStyle = rsLine
        end
        object GridOHead: TDBGridEh
          Left = 0
          Top = 33
          Width = 679
          Height = 136
          Align = alTop
          DataSource = DSOHead
          DrawMemoText = True
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = TBUpdateClick
          OnDrawColumnCell = GridOHeadDrawColumnCell
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cSN'
              Footer.Value = #21512#35745#24352#25968#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21333#25454#21495#30721
              Title.TitleButton = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'dHapdDate'
              Footer.FieldName = 'iSNo'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #26085#26399
              Title.TitleButton = True
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'cCustName'
              Footers = <>
              Title.Caption = #23458#25143#21517#31216
              Title.TitleButton = True
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footers = <>
              Title.Caption = #19994#21153#21592
              Title.TitleButton = True
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'cStkName'
              Footers = <>
              Title.Caption = #20179#24211
              Title.TitleButton = True
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'cVNo'
              Footers = <>
              Title.Caption = #21457#31080#21495#30721
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'OprName'
              Footers = <>
              Title.Caption = #21046#21333
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'iVouch'
              Footers = <>
              Title.Caption = #23457#26680
              Title.TitleButton = True
              Width = 44
            end>
        end
        object GridOList: TDBGridEh
          Left = 0
          Top = 171
          Width = 679
          Height = 111
          Align = alClient
          DataSource = DSOList
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cPrdtID'
              Footer.Value = #21512#35745#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21830#21697#32534#30721
              Title.TitleButton = True
              Width = 115
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footers = <>
              Title.Caption = #21517#31216#21450#35268#26684
              Title.TitleButton = True
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cUnit'
              Footers = <>
              Title.Caption = #21333#20301
              Title.TitleButton = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'nQty'
              Footer.FieldName = 'nQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25968#37327
              Title.TitleButton = True
              Width = 70
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'nPrice'
              Footers = <>
              Title.Caption = #21333#20215
              Title.TitleButton = True
              Width = 72
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'Amt'
              Footer.FieldName = 'Amt'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #37329#39069
              Title.TitleButton = True
              Width = 98
            end>
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 33
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
            679
            33)
          object SBSCust: TSpeedButton
            Left = 435
            Top = 5
            Width = 68
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
            OnClick = SBIProvClick
          end
          object Label2: TLabel
            Left = 256
            Top = 13
            Width = 56
            Height = 14
            Caption = #21333#25454#21495#30721
          end
          object Label4: TLabel
            Left = 4
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel2: TBevel
            Left = 133
            Top = 16
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object OBDate: TDateTimePicker
            Left = 36
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 0
          end
          object OEDate: TDateTimePicker
            Left = 144
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object EOSN: TEdit
            Left = 317
            Top = 5
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object CBXSCust: TComboBox
            Left = 507
            Top = 5
            Width = 145
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 3
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #20837#24211#36864#36135'2'
        ImageIndex = 2
        object Splitter6: TSplitter
          Left = 0
          Top = 194
          Width = 679
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ResizeStyle = rsLine
        end
        object GridIRList: TDBGridEh
          Left = 0
          Top = 197
          Width = 679
          Height = 85
          Align = alClient
          DataSource = DSIRList
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cPrdtID'
              Footer.Value = #21512#35745#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21830#21697#32534#30721
              Title.TitleButton = True
              Width = 115
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footers = <>
              Title.Caption = #21517#31216#21450#35268#26684
              Title.TitleButton = True
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cUnit'
              Footers = <>
              Title.Caption = #21333#20301
              Title.TitleButton = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'nQty'
              Footer.FieldName = 'nQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25968#37327
              Title.TitleButton = True
              Width = 70
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'nPrice'
              Footers = <>
              Title.Caption = #21333#20215
              Title.TitleButton = True
              Width = 72
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'Amt'
              Footer.FieldName = 'Amt'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #37329#39069
              Title.TitleButton = True
              Width = 98
            end>
        end
        object GridRIHead: TDBGridEh
          Left = 0
          Top = 33
          Width = 679
          Height = 161
          Align = alTop
          DataSource = DSIRHead
          DrawMemoText = True
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = TBUpdateClick
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cSN'
              Footer.Value = #21512#35745#24352#25968#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21333#25454#21495#30721
              Title.TitleButton = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'dHapdDate'
              Footer.FieldName = 'iSNo'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #26085#26399
              Title.TitleButton = True
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'cProName'
              Footers = <>
              Title.Caption = #20379#24212#21830#21517#31216
              Title.TitleButton = True
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cStkName'
              Footers = <>
              Title.Caption = #20179#24211
              Title.TitleButton = True
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'cVNo'
              Footers = <>
              Title.Caption = #21457#31080#21495#30721
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'OprName'
              Footers = <>
              Title.Caption = #21046#21333
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'iVouch'
              Footers = <>
              Title.Caption = #23457#26680
              Title.TitleButton = True
              Width = 44
            end>
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 33
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
            679
            33)
          object SBIRProv: TSpeedButton
            Left = 435
            Top = 5
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
            OnClick = SBIProvClick
          end
          object Label5: TLabel
            Left = 256
            Top = 13
            Width = 56
            Height = 14
            Caption = #21333#25454#21495#30721
          end
          object Label6: TLabel
            Left = 4
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel3: TBevel
            Left = 133
            Top = 16
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object IRBDate: TDateTimePicker
            Left = 36
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 0
          end
          object IREDate: TDateTimePicker
            Left = 144
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object EIRSN: TEdit
            Left = 317
            Top = 5
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object CBXIRProv: TComboBox
            Left = 507
            Top = 5
            Width = 145
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 3
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #38144#21806#36864#36135'3'
        ImageIndex = 3
        object Splitter8: TSplitter
          Left = 0
          Top = 194
          Width = 679
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ResizeStyle = rsLine
        end
        object GridRSHead: TDBGridEh
          Left = 0
          Top = 33
          Width = 679
          Height = 161
          Align = alTop
          DataSource = DSORHead
          DrawMemoText = True
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = TBUpdateClick
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cSN'
              Footer.Value = #21512#35745#24352#25968#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21333#25454#21495#30721
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'dHapdDate'
              Footer.FieldName = 'iSNo'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #26085#26399
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'cCustName'
              Footers = <>
              Title.Caption = #23458#25143#21517#31216
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cStkName'
              Footers = <>
              Title.Caption = #20179#24211
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'cVNo'
              Footers = <>
              Title.Caption = #21457#31080#21495#30721
            end
            item
              EditButtons = <>
              FieldName = 'OprName'
              Footers = <>
              Title.Caption = #21046#21333
            end
            item
              EditButtons = <>
              FieldName = 'iVouch'
              Footers = <>
              Title.Caption = #23457#26680
              Width = 44
            end>
        end
        object GridRSList: TDBGridEh
          Left = 0
          Top = 197
          Width = 679
          Height = 85
          Align = alClient
          DataSource = DSORList
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cPrdtID'
              Footer.Value = #21512#35745#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21830#21697#32534#30721
              Width = 115
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footers = <>
              Title.Caption = #21517#31216#21450#35268#26684
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cUnit'
              Footers = <>
              Title.Caption = #21333#20301
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'nQty'
              Footer.FieldName = 'nQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25968#37327
              Width = 70
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'nPrice'
              Footers = <>
              Title.Caption = #21333#20215
              Width = 72
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'Amt'
              Footer.FieldName = 'Amt'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #37329#39069
              Width = 98
            end>
        end
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 33
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
          TabOrder = 2
          DesignSize = (
            679
            33)
          object SBSRCust: TSpeedButton
            Left = 435
            Top = 5
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
            OnClick = SBIProvClick
          end
          object Label7: TLabel
            Left = 256
            Top = 13
            Width = 56
            Height = 14
            Caption = #21333#25454#21495#30721
          end
          object Label8: TLabel
            Left = 4
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel4: TBevel
            Left = 133
            Top = 16
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object SRBDate: TDateTimePicker
            Left = 36
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 0
          end
          object SREDate: TDateTimePicker
            Left = 144
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object ESRSN: TEdit
            Left = 317
            Top = 5
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object CBXSRCust: TComboBox
            Left = 507
            Top = 5
            Width = 145
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 3
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = #24211#23384#35843#25320'4'
        ImageIndex = 4
        object Splitter9: TSplitter
          Left = 0
          Top = 194
          Width = 679
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ResizeStyle = rsLine
        end
        object GridMHead: TDBGridEh
          Left = 0
          Top = 33
          Width = 679
          Height = 161
          Align = alTop
          DataSource = DSMHead
          DrawMemoText = True
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = TBUpdateClick
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cSN'
              Footer.Value = #21512#35745#24352#25968#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21333#25454#21495#30721
              Title.TitleButton = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'dHapdDate'
              Footer.FieldName = 'iSNo'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #26085#26399
              Title.TitleButton = True
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'cOStkName'
              Footers = <>
              Title.Caption = #35843#20986#20179#24211#21517#31216
              Title.TitleButton = True
              Width = 127
            end
            item
              EditButtons = <>
              FieldName = 'cTStkName'
              Footers = <>
              Title.Caption = #35843#20837#20179#24211
              Title.TitleButton = True
              Width = 119
            end
            item
              EditButtons = <>
              FieldName = 'OprName'
              Footers = <>
              Title.Caption = #21046#21333
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'iVouch'
              Footers = <>
              Title.Caption = #23457#26680
              Title.TitleButton = True
              Width = 44
            end>
        end
        object GRIDMList: TDBGridEh
          Left = 0
          Top = 197
          Width = 679
          Height = 85
          Align = alClient
          DataSource = DSMList
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cPrdtID'
              Footer.Value = #21512#35745#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21830#21697#32534#30721
              Title.TitleButton = True
              Width = 115
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footers = <>
              Title.Caption = #21517#31216#21450#35268#26684
              Title.TitleButton = True
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cUnit'
              Footers = <>
              Title.Caption = #21333#20301
              Title.TitleButton = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'nQty'
              Footer.FieldName = 'nQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25968#37327
              Title.TitleButton = True
              Width = 70
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'nPrice'
              Footers = <>
              Title.Caption = #21333#20215
              Title.TitleButton = True
              Width = 72
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'Amt'
              Footer.FieldName = 'Amt'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #37329#39069
              Title.TitleButton = True
              Width = 98
            end>
        end
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 33
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
            679
            33)
          object Label9: TLabel
            Left = 504
            Top = 13
            Width = 56
            Height = 14
            Caption = #21333#25454#21495#30721
          end
          object Label10: TLabel
            Left = 4
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel5: TBevel
            Left = 133
            Top = 16
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object MBDate: TDateTimePicker
            Left = 36
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 0
          end
          object MEDate: TDateTimePicker
            Left = 144
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object EMSN: TEdit
            Left = 565
            Top = 5
            Width = 100
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            TabOrder = 2
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = #24211#23384#30424#28857'5'
        ImageIndex = 5
        object Splitter10: TSplitter
          Left = 0
          Top = 194
          Width = 679
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ResizeStyle = rsLine
        end
        object GridCHead: TDBGridEh
          Left = 0
          Top = 33
          Width = 679
          Height = 161
          Align = alTop
          DataSource = DSChkHead
          DrawMemoText = True
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = TBUpdateClick
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cSN'
              Footer.Value = #21512#35745#24352#25968#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21333#25454#21495#30721
              Title.TitleButton = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'dHapdDate'
              Footer.FieldName = 'iSNo'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #26085#26399
              Title.TitleButton = True
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'cStkName'
              Footer.FieldName = 'cStkName'
              Footers = <>
              Title.Caption = #30424#28857#20179#24211#21517#31216
              Title.TitleButton = True
              Width = 127
            end
            item
              EditButtons = <>
              FieldName = 'OprName'
              Footers = <>
              Title.Caption = #21046#21333
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'iVouch'
              Footers = <>
              Title.Caption = #23457#26680
              Title.TitleButton = True
              Width = 44
            end>
        end
        object GridCList: TDBGridEh
          Left = 0
          Top = 197
          Width = 679
          Height = 85
          Align = alClient
          DataSource = DSChkList
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cPrdtID'
              Footer.Value = #21512#35745#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21830#21697#32534#30721
              Title.TitleButton = True
              Width = 115
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footers = <>
              Title.Caption = #21517#31216#21450#35268#26684
              Title.TitleButton = True
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'cUnit'
              Footers = <>
              Title.Caption = #21333#20301
              Title.TitleButton = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'nStkQty'
              Footer.FieldName = 'nStkQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #24211#23384#25968#37327
              Title.TitleButton = True
              Width = 70
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'nChkQty'
              Footer.FieldName = 'nChkQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #30424#28857#25968#37327
              Title.TitleButton = True
              Width = 72
            end
            item
              DisplayFormat = '#,###,###,##0.00'
              EditButtons = <>
              FieldName = 'nQty'
              Footer.FieldName = 'nQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #30408#20111#25968#37327
              Title.TitleButton = True
              Width = 98
            end>
        end
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 33
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
            679
            33)
          object Label11: TLabel
            Left = 256
            Top = 13
            Width = 56
            Height = 14
            Caption = #21333#25454#21495#30721
          end
          object Label12: TLabel
            Left = 4
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel6: TBevel
            Left = 133
            Top = 16
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object SBCStk: TSpeedButton
            Left = 446
            Top = 6
            Width = 56
            Height = 22
            Caption = #20179#24211
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
              555555777777777FF5555500000000805555557777777777FF555550BBBBB008
              05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
              005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
              055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
              055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
              05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
              05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
              005555555775FFFF77F555555570000000555555555777777755}
            NumGlyphs = 2
            OnClick = SBIProvClick
          end
          object CBDate: TDateTimePicker
            Left = 36
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 0
          end
          object CEDate: TDateTimePicker
            Left = 144
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object ECSN: TEdit
            Left = 317
            Top = 5
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object CBXCStk: TComboBox
            Left = 507
            Top = 5
            Width = 145
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 3
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = #37319#36141#32479#35745'6'
        ImageIndex = 7
        object Panel15: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 81
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
            679
            81)
          object Label13: TLabel
            Left = 4
            Top = 13
            Width = 56
            Height = 14
            Caption = #25253#34920#31867#22411
          end
          object Label14: TLabel
            Left = 207
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel7: TBevel
            Left = 332
            Top = 17
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object SBSIStk: TSpeedButton
            Left = 483
            Top = 6
            Width = 56
            Height = 22
            Caption = #20179#24211
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
              555555777777777FF5555500000000805555557777777777FF555550BBBBB008
              05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
              005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
              055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
              055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
              05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
              05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
              005555555775FFFF77F555555570000000555555555777777755}
            NumGlyphs = 2
            OnClick = SBIProvClick
          end
          object SBSIProv: TSpeedButton
            Left = 3
            Top = 30
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
            OnClick = SBIProvClick
          end
          object SBSIPrdtID: TSpeedButton
            Left = 461
            Top = 53
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
            OnClick = SBIProvClick
          end
          object SBSIPType: TSpeedButton
            Left = 3
            Top = 54
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
            OnClick = SBIProvClick
          end
          object SBSIPBrand: TSpeedButton
            Left = 224
            Top = 54
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
            OnClick = SBIProvClick
          end
          object SIBDate: TDateTimePicker
            Left = 235
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object SIEDate: TDateTimePicker
            Left = 343
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 2
          end
          object CBXSIType: TComboBox
            Left = 64
            Top = 5
            Width = 89
            Height = 22
            Style = csDropDownList
            ItemHeight = 14
            TabOrder = 0
            Items.Strings = (
              #25353#26102#38388#32479#35745
              #25353#21830#21697#32479#35745)
          end
          object ESIPrdtID: TEdit
            Left = 550
            Top = 53
            Width = 112
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object CbxSIStk: TComboBox
            Left = 542
            Top = 5
            Width = 120
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 3
          end
          object CBXSIProv: TComboBox
            Left = 76
            Top = 29
            Width = 585
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 4
          end
          object CBXSIPType: TComboBox
            Left = 91
            Top = 53
            Width = 127
            Height = 22
            ItemHeight = 0
            TabOrder = 5
            OnChange = CBXSIPTypeChange
          end
          object CBXSIPBrand: TComboBox
            Left = 313
            Top = 53
            Width = 139
            Height = 22
            ItemHeight = 0
            TabOrder = 6
            Text = #20840#37096
          end
        end
        object GridSIList: TDBGridEh
          Left = 0
          Top = 81
          Width = 679
          Height = 201
          Align = alClient
          DataSource = DStatI
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
        end
      end
      object TabSheet9: TTabSheet
        Caption = #38144#21806#32479#35745'7'
        ImageIndex = 8
        object Panel16: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 81
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
            679
            81)
          object Label15: TLabel
            Left = 4
            Top = 13
            Width = 56
            Height = 14
            Caption = #25253#34920#31867#22411
          end
          object Label16: TLabel
            Left = 207
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel8: TBevel
            Left = 332
            Top = 17
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object SBSSStk: TSpeedButton
            Left = 483
            Top = 6
            Width = 56
            Height = 22
            Caption = #20179#24211
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
              555555777777777FF5555500000000805555557777777777FF555550BBBBB008
              05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
              005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
              055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
              055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
              05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
              05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
              005555555775FFFF77F555555570000000555555555777777755}
            NumGlyphs = 2
            OnClick = SBIProvClick
          end
          object SBSSCust: TSpeedButton
            Left = 3
            Top = 30
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
            OnClick = SBIProvClick
          end
          object SBSSPrdtID: TSpeedButton
            Left = 461
            Top = 53
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
            OnClick = SBIProvClick
          end
          object SBSSPType: TSpeedButton
            Left = 3
            Top = 54
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
            OnClick = SBIProvClick
          end
          object SBSSPBrand: TSpeedButton
            Left = 224
            Top = 54
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
            OnClick = SBIProvClick
          end
          object SSBDate: TDateTimePicker
            Left = 235
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object SSEDate: TDateTimePicker
            Left = 343
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 2
          end
          object CbxSSType: TComboBox
            Left = 64
            Top = 5
            Width = 89
            Height = 22
            Style = csDropDownList
            ItemHeight = 14
            TabOrder = 0
            Items.Strings = (
              #25353#26102#38388#32479#35745
              #25353#21830#21697#32479#35745)
          end
          object ESSPrdtID: TEdit
            Left = 550
            Top = 53
            Width = 112
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object CbxSSStk: TComboBox
            Left = 542
            Top = 5
            Width = 120
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 3
          end
          object CbxSSCust: TComboBox
            Left = 76
            Top = 29
            Width = 585
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 4
          end
          object CBXSSPType: TComboBox
            Left = 91
            Top = 53
            Width = 127
            Height = 22
            ItemHeight = 0
            TabOrder = 5
            OnChange = CBXSIPTypeChange
          end
          object CBXSSPBrand: TComboBox
            Left = 313
            Top = 53
            Width = 139
            Height = 22
            ItemHeight = 0
            TabOrder = 6
            Text = #20840#37096
          end
        end
        object GridSSList: TDBGridEh
          Left = 0
          Top = 81
          Width = 679
          Height = 201
          Align = alClient
          DataSource = DStatS
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
        end
      end
      object TabSheet10: TTabSheet
        Caption = #36864#36135#32479#35745'8'
        ImageIndex = 9
        object PageRet: TPageControl
          Left = 0
          Top = 0
          Width = 679
          Height = 282
          ActivePage = TabSheet16
          Align = alClient
          TabIndex = 0
          TabOrder = 0
          OnResize = PageResize
          object TabSheet16: TTabSheet
            Caption = #37319#36141#36864#36135#32479#35745
            object Panel17: TPanel
              Left = 0
              Top = 0
              Width = 671
              Height = 81
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
                671
                81)
              object Label17: TLabel
                Left = 4
                Top = 13
                Width = 56
                Height = 14
                Caption = #25253#34920#31867#22411
              end
              object Label18: TLabel
                Left = 207
                Top = 13
                Width = 28
                Height = 14
                Caption = #26085#26399
              end
              object Bevel9: TBevel
                Left = 332
                Top = 17
                Width = 10
                Height = 2
                Shape = bsFrame
              end
              object SBSIRStk: TSpeedButton
                Left = 483
                Top = 6
                Width = 56
                Height = 22
                Caption = #20179#24211
                Flat = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
                  555555777777777FF5555500000000805555557777777777FF555550BBBBB008
                  05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
                  005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
                  055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
                  055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
                  05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
                  05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
                  005555555775FFFF77F555555570000000555555555777777755}
                NumGlyphs = 2
                OnClick = SBIProvClick
              end
              object SBSIRProv: TSpeedButton
                Left = 3
                Top = 30
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
                OnClick = SBIProvClick
              end
              object SBSIRPrdtID: TSpeedButton
                Left = 461
                Top = 53
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
                OnClick = SBIProvClick
              end
              object SBSIRPType: TSpeedButton
                Left = 3
                Top = 54
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
                OnClick = SBIProvClick
              end
              object SBSIRPBrand: TSpeedButton
                Left = 224
                Top = 54
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
                OnClick = SBIProvClick
              end
              object SSIRBDate: TDateTimePicker
                Left = 235
                Top = 5
                Width = 96
                Height = 22
                CalAlignment = dtaLeft
                Date = 36541
                Format = 'yyyy-MM-dd'
                Time = 36541
                DateFormat = dfShort
                DateMode = dmUpDown
                Kind = dtkDate
                ParseInput = False
                TabOrder = 1
              end
              object SSIREDate: TDateTimePicker
                Left = 343
                Top = 5
                Width = 96
                Height = 22
                CalAlignment = dtaLeft
                Date = 36541
                Format = 'yyyy-MM-dd'
                Time = 36541
                DateFormat = dfShort
                DateMode = dmUpDown
                Kind = dtkDate
                ParseInput = False
                TabOrder = 2
              end
              object CBXSIRType: TComboBox
                Left = 64
                Top = 5
                Width = 89
                Height = 22
                Style = csDropDownList
                ItemHeight = 14
                TabOrder = 0
                Items.Strings = (
                  #25353#26102#38388#32479#35745
                  #25353#21830#21697#32479#35745)
              end
              object ESIRPrdtID: TEdit
                Left = 550
                Top = 53
                Width = 112
                Height = 22
                Anchors = [akLeft, akTop, akRight]
                CharCase = ecUpperCase
                TabOrder = 7
              end
              object CbxSIRStk: TComboBox
                Left = 542
                Top = 5
                Width = 120
                Height = 22
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 0
                TabOrder = 3
              end
              object CBXSIRProv: TComboBox
                Left = 76
                Top = 29
                Width = 585
                Height = 22
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 0
                TabOrder = 4
              end
              object CBXSIRPType: TComboBox
                Left = 91
                Top = 53
                Width = 127
                Height = 22
                ItemHeight = 0
                TabOrder = 5
                OnChange = CBXSIPTypeChange
              end
              object CBXSIRPBrand: TComboBox
                Left = 313
                Top = 53
                Width = 139
                Height = 22
                ItemHeight = 0
                TabOrder = 6
                Text = #20840#37096
              end
            end
            object GridSIRList: TDBGridEh
              Left = 0
              Top = 81
              Width = 671
              Height = 172
              Align = alClient
              DataSource = DStatUni
              Flat = True
              FooterColor = 10223615
              FooterFont.Charset = GB2312_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -14
              FooterFont.Name = #23435#20307
              FooterFont.Style = []
              FooterRowCount = 1
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking]
              SumList.Active = True
              TabOrder = 1
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -14
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              UseMultiTitle = True
              OnTitleBtnClick = GridIHeadTitleBtnClick
            end
          end
          object TabSheet17: TTabSheet
            Caption = #38144#21806#36864#36135#32479#35745
            ImageIndex = 1
            object Panel18: TPanel
              Left = 0
              Top = 0
              Width = 671
              Height = 81
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
                671
                81)
              object Label19: TLabel
                Left = 4
                Top = 13
                Width = 56
                Height = 14
                Caption = #25253#34920#31867#22411
              end
              object Label20: TLabel
                Left = 207
                Top = 13
                Width = 28
                Height = 14
                Caption = #26085#26399
              end
              object Bevel10: TBevel
                Left = 332
                Top = 17
                Width = 10
                Height = 2
                Shape = bsFrame
              end
              object SBSSRStk: TSpeedButton
                Left = 483
                Top = 6
                Width = 56
                Height = 22
                Caption = #20179#24211
                Flat = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
                  555555777777777FF5555500000000805555557777777777FF555550BBBBB008
                  05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
                  005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
                  055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
                  055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
                  05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
                  05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
                  005555555775FFFF77F555555570000000555555555777777755}
                NumGlyphs = 2
                OnClick = SBIProvClick
              end
              object SBSSRCust: TSpeedButton
                Left = 3
                Top = 30
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
                OnClick = SBIProvClick
              end
              object SBSSRPrdtID: TSpeedButton
                Left = 461
                Top = 53
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
                OnClick = SBIProvClick
              end
              object SBSSRPType: TSpeedButton
                Left = 3
                Top = 54
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
                OnClick = SBIProvClick
              end
              object SBSSRPBrand: TSpeedButton
                Left = 224
                Top = 54
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
                OnClick = SBIProvClick
              end
              object SSRBDate: TDateTimePicker
                Left = 235
                Top = 5
                Width = 96
                Height = 22
                CalAlignment = dtaLeft
                Date = 36541
                Format = 'yyyy-MM-dd'
                Time = 36541
                DateFormat = dfShort
                DateMode = dmUpDown
                Kind = dtkDate
                ParseInput = False
                TabOrder = 1
              end
              object SSREDate: TDateTimePicker
                Left = 343
                Top = 5
                Width = 96
                Height = 22
                CalAlignment = dtaLeft
                Date = 36541
                Format = 'yyyy-MM-dd'
                Time = 36541
                DateFormat = dfShort
                DateMode = dmUpDown
                Kind = dtkDate
                ParseInput = False
                TabOrder = 2
              end
              object CbxSSRType: TComboBox
                Left = 64
                Top = 5
                Width = 89
                Height = 22
                Style = csDropDownList
                ItemHeight = 14
                TabOrder = 0
                Items.Strings = (
                  #25353#26102#38388#32479#35745
                  #25353#21830#21697#32479#35745)
              end
              object ESSRPrdtID: TEdit
                Left = 550
                Top = 53
                Width = 112
                Height = 22
                Anchors = [akLeft, akTop, akRight]
                CharCase = ecUpperCase
                TabOrder = 7
              end
              object CBXSSRStk: TComboBox
                Left = 542
                Top = 5
                Width = 120
                Height = 22
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 0
                TabOrder = 3
              end
              object CBXSSRCust: TComboBox
                Left = 76
                Top = 29
                Width = 585
                Height = 22
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 0
                TabOrder = 4
              end
              object CBXSSRPType: TComboBox
                Left = 91
                Top = 53
                Width = 127
                Height = 22
                ItemHeight = 0
                TabOrder = 5
                OnChange = CBXSIPTypeChange
              end
              object CBXSSRPBrand: TComboBox
                Left = 313
                Top = 53
                Width = 139
                Height = 22
                ItemHeight = 0
                TabOrder = 6
                Text = #20840#37096
              end
            end
            object GridSSRList: TDBGridEh
              Left = 0
              Top = 81
              Width = 671
              Height = 172
              Align = alClient
              DataSource = DStatUnS
              Flat = True
              FooterColor = 10223615
              FooterFont.Charset = GB2312_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -14
              FooterFont.Name = #23435#20307
              FooterFont.Style = []
              FooterRowCount = 1
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              SumList.Active = True
              TabOrder = 1
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -14
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              UseMultiTitle = True
              OnTitleBtnClick = GridIHeadTitleBtnClick
            end
          end
        end
      end
      object TabSheet18: TTabSheet
        Caption = #35843#25320#32479#35745'9'
        ImageIndex = 9
        object Panel21: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 81
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
            679
            81)
          object Label21: TLabel
            Left = 4
            Top = 13
            Width = 56
            Height = 14
            Caption = #25253#34920#31867#22411
          end
          object Label22: TLabel
            Left = 207
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel11: TBevel
            Left = 332
            Top = 17
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object SBSMOStk: TSpeedButton
            Left = 4
            Top = 30
            Width = 90
            Height = 22
            Caption = #35843#20986#20179#24211
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
              555555777777777FF5555500000000805555557777777777FF555550BBBBB008
              05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
              005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
              055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
              055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
              05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
              05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
              005555555775FFFF77F555555570000000555555555777777755}
            NumGlyphs = 2
            OnClick = SBIProvClick
          end
          object SBSMPrdtID: TSpeedButton
            Left = 461
            Top = 53
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
            OnClick = SBIProvClick
          end
          object SBSMPType: TSpeedButton
            Left = 3
            Top = 54
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
            OnClick = SBIProvClick
          end
          object SBSMPBrand: TSpeedButton
            Left = 224
            Top = 54
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
            OnClick = SBIProvClick
          end
          object SBSMTStk: TSpeedButton
            Left = 448
            Top = 30
            Width = 90
            Height = 22
            Caption = #35843#20837#20179#24211
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              777777777777777000777777777777033007777777777030B30777777777030B
              0B077777770030B0B000770000330B0B08F070333300B0B0FFF0037B7B3B0B08
              F8F007BB3B73B0FFFFF00BB3B3BB00F8F8F088303B3B70FFFFF0070703B3B0F8
              F8F00B803B3B70CCCCC070BB8BB7000000007700800077777777}
            OnClick = SBIProvClick
          end
          object SMBDate: TDateTimePicker
            Left = 235
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object SMEDate: TDateTimePicker
            Left = 343
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 2
          end
          object CBXSMType: TComboBox
            Left = 64
            Top = 5
            Width = 89
            Height = 22
            Style = csDropDownList
            ItemHeight = 14
            TabOrder = 0
            Items.Strings = (
              #25353#26102#38388#32479#35745
              #25353#21830#21697#32479#35745)
          end
          object ESMPrdtID: TEdit
            Left = 550
            Top = 53
            Width = 112
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object CBXSMOStk: TComboBox
            Left = 96
            Top = 29
            Width = 120
            Height = 22
            ItemHeight = 0
            TabOrder = 3
          end
          object CBXSMPType: TComboBox
            Left = 91
            Top = 53
            Width = 127
            Height = 22
            ItemHeight = 0
            TabOrder = 5
            OnChange = CBXSIPTypeChange
          end
          object CBXSMPBrand: TComboBox
            Left = 313
            Top = 53
            Width = 139
            Height = 22
            ItemHeight = 0
            TabOrder = 6
            Text = #20840#37096
          end
          object CBXsmtstk: TComboBox
            Left = 540
            Top = 29
            Width = 120
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 4
          end
        end
        object GridSMList: TDBGridEh
          Left = 0
          Top = 81
          Width = 679
          Height = 201
          Align = alClient
          DataSource = DStatM
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
        end
      end
      object TabSheet19: TTabSheet
        Caption = #30424#28857#32479#35745'10'
        ImageIndex = 16
        object Panel22: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 58
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
            679
            58)
          object Label23: TLabel
            Left = 4
            Top = 13
            Width = 56
            Height = 14
            Caption = #25253#34920#31867#22411
          end
          object Label25: TLabel
            Left = 207
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel13: TBevel
            Left = 332
            Top = 17
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object SBSCStk: TSpeedButton
            Left = 483
            Top = 6
            Width = 56
            Height = 22
            Caption = #20179#24211
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
              555555777777777FF5555500000000805555557777777777FF555550BBBBB008
              05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
              005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
              055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
              055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
              05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
              05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
              005555555775FFFF77F555555570000000555555555777777755}
            NumGlyphs = 2
            OnClick = SBIProvClick
          end
          object SBSCPrdtID: TSpeedButton
            Left = 461
            Top = 30
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
            OnClick = SBIProvClick
          end
          object SBSCPType: TSpeedButton
            Left = 3
            Top = 31
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
            OnClick = SBIProvClick
          end
          object SBSCPBrand: TSpeedButton
            Left = 224
            Top = 31
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
            OnClick = SBIProvClick
          end
          object SCBDate: TDateTimePicker
            Left = 235
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object SCEDate: TDateTimePicker
            Left = 343
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 2
          end
          object CBXSCType: TComboBox
            Left = 64
            Top = 5
            Width = 89
            Height = 22
            Style = csDropDownList
            ItemHeight = 14
            TabOrder = 0
            Items.Strings = (
              #25353#26102#38388#32479#35745
              #25353#21830#21697#32479#35745)
          end
          object ESCPrdtID: TEdit
            Left = 550
            Top = 30
            Width = 112
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            TabOrder = 6
          end
          object CBXSCStk: TComboBox
            Left = 542
            Top = 5
            Width = 120
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 0
            TabOrder = 3
          end
          object CBXSCPType: TComboBox
            Left = 91
            Top = 30
            Width = 127
            Height = 22
            ItemHeight = 0
            TabOrder = 4
            OnChange = CBXSIPTypeChange
          end
          object CBXSCPBrand: TComboBox
            Left = 313
            Top = 30
            Width = 139
            Height = 22
            ItemHeight = 0
            TabOrder = 5
            Text = #20840#37096
          end
        end
        object GridSCList: TDBGridEh
          Left = 0
          Top = 58
          Width = 679
          Height = 224
          Align = alClient
          DataSource = DStatC
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
        end
      end
      object TabSheet11: TTabSheet
        Caption = #24211#23384#32479#35745'11'
        ImageIndex = 10
        object Panel19: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 57
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
            679
            57)
          object SBSStk: TSpeedButton
            Left = 3
            Top = 6
            Width = 56
            Height = 22
            Caption = #20179#24211
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
              555555777777777FF5555500000000805555557777777777FF555550BBBBB008
              05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
              005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
              055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
              055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
              05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
              05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
              005555555775FFFF77F555555570000000555555555777777755}
            NumGlyphs = 2
            OnClick = SBIProvClick
          end
          object SBSPrdtID: TSpeedButton
            Left = 453
            Top = 29
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
            OnClick = SBIProvClick
          end
          object SBSPType: TSpeedButton
            Left = 3
            Top = 29
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
            OnClick = SBIProvClick
          end
          object SBSPBrand: TSpeedButton
            Left = 228
            Top = 29
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
            OnClick = SBIProvClick
          end
          object Label26: TLabel
            Left = 231
            Top = 9
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object SDate: TDateTimePicker
            Left = 263
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object ESPrdtID: TEdit
            Left = 542
            Top = 29
            Width = 123
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            TabOrder = 4
          end
          object CBXSStk: TComboBox
            Left = 62
            Top = 5
            Width = 120
            Height = 22
            ItemHeight = 0
            TabOrder = 0
          end
          object CBXSPType: TComboBox
            Left = 91
            Top = 29
            Width = 127
            Height = 22
            ItemHeight = 0
            TabOrder = 2
            OnClick = CBXSIPTypeChange
          end
          object CBXSPBrand: TComboBox
            Left = 317
            Top = 29
            Width = 124
            Height = 22
            ItemHeight = 0
            TabOrder = 3
            Text = #20840#37096
          end
        end
        object GridStockList: TDBGridEh
          Left = 0
          Top = 57
          Width = 679
          Height = 225
          Align = alClient
          DataSource = DStock
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
        end
      end
      object TabSheet12: TTabSheet
        Caption = #36827#38144#23384'12'
        ImageIndex = 11
        object Panel20: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 58
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
            679
            58)
          object Label24: TLabel
            Left = 207
            Top = 13
            Width = 28
            Height = 14
            Caption = #26085#26399
          end
          object Bevel12: TBevel
            Left = 332
            Top = 17
            Width = 10
            Height = 2
            Shape = bsFrame
          end
          object SBJStk: TSpeedButton
            Left = 3
            Top = 6
            Width = 56
            Height = 22
            Caption = #20179#24211
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
              555555777777777FF5555500000000805555557777777777FF555550BBBBB008
              05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
              005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
              055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
              055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
              05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
              05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
              005555555775FFFF77F555555570000000555555555777777755}
            NumGlyphs = 2
            OnClick = SBIProvClick
          end
          object SBJPrdtID: TSpeedButton
            Left = 461
            Top = 31
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
            OnClick = SBIProvClick
          end
          object SBJPType: TSpeedButton
            Left = 3
            Top = 32
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
            OnClick = SBIProvClick
          end
          object SBJPBrand: TSpeedButton
            Left = 224
            Top = 32
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
            OnClick = SBIProvClick
          end
          object JBDate: TDateTimePicker
            Left = 235
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
          end
          object JEDate: TDateTimePicker
            Left = 343
            Top = 5
            Width = 96
            Height = 22
            CalAlignment = dtaLeft
            Date = 36541
            Format = 'yyyy-MM-dd'
            Time = 36541
            DateFormat = dfShort
            DateMode = dmUpDown
            Kind = dtkDate
            ParseInput = False
            TabOrder = 2
          end
          object EJPrdtID: TEdit
            Left = 550
            Top = 31
            Width = 112
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object CBXJStk: TComboBox
            Left = 62
            Top = 5
            Width = 120
            Height = 22
            ItemHeight = 0
            TabOrder = 0
          end
          object CBXJPType: TComboBox
            Left = 91
            Top = 31
            Width = 127
            Height = 22
            ItemHeight = 0
            TabOrder = 3
            OnClick = CBXSIPTypeChange
          end
          object CBXJPBrand: TComboBox
            Left = 313
            Top = 31
            Width = 139
            Height = 22
            ItemHeight = 0
            TabOrder = 4
            Text = #20840#37096
          end
        end
        object GridJXCList: TDBGridEh
          Left = 0
          Top = 58
          Width = 679
          Height = 224
          Align = alClient
          DataSource = DSJXC
          Flat = True
          FooterColor = 10223615
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -14
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnTitleBtnClick = GridIHeadTitleBtnClick
        end
      end
      object TabSheet7: TTabSheet
        Caption = #21830#21697#32534#30721'13'
        ImageIndex = 6
        object Splitter2: TSplitter
          Left = 177
          Top = 0
          Width = 4
          Height = 282
          Cursor = crHSplit
        end
        object Panel1: TPanel
          Left = 181
          Top = 0
          Width = 498
          Height = 282
          Align = alClient
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Splitter3: TSplitter
            Left = 0
            Top = 197
            Width = 498
            Height = 1
            Cursor = crVSplit
            Align = alTop
          end
          object GridBrand: TDBGridEh
            Left = 0
            Top = 0
            Width = 498
            Height = 197
            Align = alTop
            DataSource = DSBrand
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
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = GB2312_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            UseMultiTitle = True
            OnEnter = GridTypeEnter
            OnKeyDown = GridTypeKeyDown
            OnTitleBtnClick = GridIHeadTitleBtnClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'cBrandID'
                Footer.Value = #24635#35745
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = #21830#21697#21697#29260'|'#32534#30721
                Title.TitleButton = True
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'cBrandAbbr'
                Footer.Alignment = taRightJustify
                Footer.FieldName = 'cBrandID'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = #21830#21697#21697#29260'|'#21517#31216
                Title.TitleButton = True
                Width = 380
              end>
          end
          object Panel7: TPanel
            Left = 0
            Top = 198
            Width = 498
            Height = 84
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Header: TfcTreeHeader
              Left = 0
              Top = 0
              Width = 498
              Height = 20
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              Sections = <
                item
                  Alignment = taCenter
                  Text = #32534#30721
                  Width = 125
                  FieldName = 'cPrdtID'
                  ImageIndex = -1
                  ImageAlignment = taRightJustify
                end
                item
                  Alignment = taCenter
                  Text = #21517#31216
                  Width = 211
                  FieldName = 'cName'
                  ImageIndex = -1
                end
                item
                  Alignment = taCenter
                  Text = #21333#20301
                  Width = 54
                  FieldName = 'cUnit'
                  ImageIndex = -1
                end>
              ParentFont = False
              Images = ImageBtn
              OnSectionClick = HeaderSectionClick
              Options = [thcoSortTreeOnClick]
            end
            object DBTV: TfcDBTreeView
              Left = 0
              Top = 20
              Width = 498
              Height = 64
              Align = alClient
              BorderStyle = bsSingle
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Header = Header
              DataSources = 'dsPrdt;dsChild'
              DisplayFields.Strings = (
                '"cPrdtid"#9"cName"#9"cUnit"')
              Options = [dtvoShowNodeHint, dtvoShowButtons, dtvoShowLines, dtvoShowRoot, dtvoShowHorzScrollBar, dtvoShowVertScrollBar]
              LevelIndent = 19
              MultiSelectAttributes.AutoUnselect = True
              MultiSelectAttributes.Enabled = True
              MultiSelectAttributes.MultiSelectLevel = -1
              MultiSelectAttributes.MultiSelectCheckbox = False
              PopupMenu = PopPrdt
              OnCalcNodeAttributes = DBTVCalcNodeAttributes
              OnUserExpand = DBTVUserExpand
              OnEnter = GridTypeEnter
              OnKeyDown = GridTypeKeyDown
            end
          end
        end
        object GridType: TDBGridEh
          Left = 0
          Top = 0
          Width = 177
          Height = 282
          Align = alLeft
          DataSource = DSType
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
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch]
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = [fsBold]
          UseMultiTitle = True
          OnEnter = GridTypeEnter
          OnKeyDown = GridTypeKeyDown
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cTypeID'
              Footer.Value = #24635#35745
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21830#21697#31867#21035'|'#32534#30721
              Title.TitleButton = True
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'cTypeAbbr'
              Footer.Alignment = taRightJustify
              Footer.FieldName = 'cTypeID'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #21830#21697#31867#21035'|'#21517#31216
              Title.TitleButton = True
              Width = 82
            end>
        end
      end
      object TabSheet13: TTabSheet
        Caption = #20379#24212#21830'14'
        ImageIndex = 12
        object Splitter5: TSplitter
          Left = 105
          Top = 0
          Width = 4
          Height = 282
          Cursor = crHSplit
        end
        object Panel4: TPanel
          Left = 109
          Top = 0
          Width = 570
          Height = 282
          Align = alClient
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object GridProv: TDBGridEh
            Left = 0
            Top = 0
            Width = 570
            Height = 282
            Align = alClient
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
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = GB2312_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            UseMultiTitle = True
            OnColWidthsChanged = GridProvColWidthsChanged
            OnEnter = GridTypeEnter
            OnKeyDown = GridTypeKeyDown
            OnTitleBtnClick = GridIHeadTitleBtnClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'cProName'
                Footer.Value = #25968#37327#24635#35745
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = #21517#31216
                Title.TitleButton = True
                Width = 224
              end
              item
                EditButtons = <>
                FieldName = 'cContact'
                Footers = <>
                Title.Caption = #32852#31995#20154#21450#32844#21153
                Width = 99
              end
              item
                EditButtons = <>
                FieldName = 'cTel'
                Footers = <>
                Title.Caption = #32852#31995#30005#35805
                Width = 235
              end
              item
                EditButtons = <>
                FieldName = 'cEmail'
                Footers = <>
                Title.Caption = #30005#37038#22320#22336
                Width = 113
              end
              item
                EditButtons = <>
                FieldName = 'cWebPage'
                Footers = <>
                Title.Caption = #20027#39029#22320#22336
                Width = 255
              end
              item
                EditButtons = <>
                FieldName = 'cAddr'
                Footers = <>
                Title.Caption = #22320#22336
                Width = 234
              end
              item
                EditButtons = <>
                FieldName = 'cMainItem'
                Footers = <>
                Title.Caption = #20027#35201#32463#33829#39033#30446
                Width = 307
              end>
          end
        end
        object DBGridEh6: TDBGridEh
          Left = 0
          Top = 0
          Width = 105
          Height = 282
          Align = alLeft
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
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = [fsBold]
          UseMultiTitle = True
          OnEnter = GridTypeEnter
          OnKeyDown = GridTypeKeyDown
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cAreaName'
              Footer.Alignment = taRightJustify
              Footer.FieldName = 'cAreaName'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #21306#22495
              Title.TitleButton = True
              Width = 86
            end>
        end
      end
      object TabSheet14: TTabSheet
        Caption = #23458#25143#20449#24687'15'
        ImageIndex = 13
        object Splitter4: TSplitter
          Left = 105
          Top = 0
          Width = 4
          Height = 282
          Cursor = crHSplit
        end
        object Panel5: TPanel
          Left = 109
          Top = 0
          Width = 570
          Height = 282
          Align = alClient
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object GridCust: TDBGridEh
            Left = 0
            Top = 0
            Width = 570
            Height = 282
            Align = alClient
            DataSource = DSCust
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
            ParentFont = False
            ReadOnly = True
            SortLocal = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = GB2312_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            UseMultiTitle = True
            OnColWidthsChanged = GridProvColWidthsChanged
            OnEnter = GridTypeEnter
            OnKeyDown = GridTypeKeyDown
            OnTitleBtnClick = GridIHeadTitleBtnClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'cCustName'
                Footer.Value = #25968#37327#24635#35745
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = #21517#31216
                Title.TitleButton = True
                Width = 224
              end
              item
                EditButtons = <>
                FieldName = 'cContact'
                Footers = <>
                Title.Caption = #32852#31995#20154#21450#32844#21153
                Title.TitleButton = True
                Width = 99
              end
              item
                EditButtons = <>
                FieldName = 'cTel'
                Footers = <>
                Title.Caption = #32852#31995#30005#35805
                Title.TitleButton = True
                Width = 235
              end
              item
                EditButtons = <>
                FieldName = 'cEmail'
                Footers = <>
                Title.Caption = #30005#37038#22320#22336
                Title.TitleButton = True
                Width = 113
              end
              item
                EditButtons = <>
                FieldName = 'cWebPage'
                Footers = <>
                Title.Caption = #20027#39029#22320#22336
                Title.TitleButton = True
                Width = 255
              end
              item
                EditButtons = <>
                FieldName = 'cAddr'
                Footers = <>
                Title.Caption = #22320#22336
                Title.TitleButton = True
                Width = 234
              end
              item
                EditButtons = <>
                FieldName = 'cMainItem'
                Footers = <>
                Title.Caption = #20027#35201#32463#33829#39033#30446
                Title.TitleButton = True
                Width = 307
              end>
          end
        end
        object DBGridEh5: TDBGridEh
          Left = 0
          Top = 0
          Width = 105
          Height = 282
          Align = alLeft
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
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = [fsBold]
          UseMultiTitle = True
          OnEnter = GridTypeEnter
          OnKeyDown = GridTypeKeyDown
          OnTitleBtnClick = GridIHeadTitleBtnClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cAreaName'
              Footer.Alignment = taRightJustify
              Footer.FieldName = 'cAreaName'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #21306#22495
              Title.TitleButton = True
              Width = 86
            end>
        end
      end
      object TabSheet15: TTabSheet
        Caption = #19994#21153#21592'16'
        ImageIndex = 14
        object GridStaff: TDBGridEh
          Left = 0
          Top = 0
          Width = 679
          Height = 282
          Align = alClient
          DataSource = DSStaff
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
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnColWidthsChanged = GridStaffColWidthsChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cStaffID'
              Footer.Alignment = taRightJustify
              Footer.Value = #20154#25968#24635#35745
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #32534#21495
              Title.TitleButton = True
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'cName'
              Footer.FieldName = 'cStaffID'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #22995#21517
              Title.TitleButton = True
              Width = 99
            end
            item
              Checkboxes = False
              EditButtons = <>
              FieldName = 'iSex'
              Footers = <>
              Title.Caption = #24615#21035
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'cTel'
              Footers = <>
              Title.Caption = #32852#31995#30005#35805
              Title.TitleButton = True
              Width = 235
            end
            item
              EditButtons = <>
              FieldName = 'cEmail'
              Footers = <>
              Title.Caption = #30005#37038
              Title.TitleButton = True
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'cIDNo'
              Footers = <>
              Title.Caption = #36523#20221#35777#21495#30721
              Title.TitleButton = True
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'cAddr'
              Footers = <>
              Title.Caption = #23478#24237#20303#22336
              Title.TitleButton = True
              Width = 234
            end>
        end
      end
    end
    object PanelTitle: TPanel
      Left = 2
      Top = 2
      Width = 687
      Height = 35
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      Caption = #20837#24211#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object SBar: TStatusBar
    Left = 0
    Top = 419
    Width = 792
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clBtnText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    Panels = <
      item
        Width = 700
      end
      item
        Text = #20351#29992#32773
        Width = 50
      end
      item
        Width = 60
      end>
    SimplePanel = False
    UseSystemFont = False
  end
  object MainMenu: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 328
    Top = 24
    object A1: TMenuItem
      Caption = #21160#20316'(&A)'
      object NShowPanel: TMenuItem
        Caption = #26174#31034#38754#26495
        Checked = True
        OnClick = NShowPanelClick
      end
      object N25: TMenuItem
        Caption = #20462#25913#23494#30721
        OnClick = N25Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object N9: TMenuItem
        Caption = #36864#20986
        ShortCut = 16499
        OnClick = N9Click
      end
    end
    object S1: TMenuItem
      Caption = #35774#32622'(&S)'
      object N2: TMenuItem
        Caption = #24211#23384#35774#32622
        OnClick = N2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Caption = #21830#21697#32534#30721#20449#24687
        OnClick = N3Click
      end
      object N10: TMenuItem
        Caption = #20379#24212#21830#20449#24687
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #23458#25143#20449#24687
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #19994#21153#21592#20449#24687
        OnClick = N12Click
      end
    end
    object T1: TMenuItem
      Caption = #24037#20855'(&T)'
      object N14: TMenuItem
        Caption = #26597#25214'...'
        object N4: TMenuItem
          Caption = #21830#21697#32534#30721
          OnClick = N4Click
        end
        object N5: TMenuItem
          Caption = #20379#24212#21830#20449#24687
          OnClick = N5Click
        end
        object N6: TMenuItem
          Caption = #23458#25143#20449#24687
          OnClick = N6Click
        end
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = #36873#39033
        OnClick = N8Click
      end
    end
    object H1: TMenuItem
      Caption = #24110#21161'(&H)'
      object N20: TMenuItem
        Caption = #24110#21161#20449#24687
      end
      object N21: TMenuItem
        Caption = #35745#31639#22120
        OnClick = N21Click
      end
      object N26: TMenuItem
        Caption = #36719#20214#27880#20876
        OnClick = N26Click
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object N23: TMenuItem
        Caption = #20851#20110
        OnClick = N23Click
      end
    end
  end
  object ImageOutLook: TImageList
    AllocBy = 5
    Height = 32
    ShareImages = True
    Width = 32
    Left = 556
    Top = 4
    Bitmap = {
      494C010120002200040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002001000001001000000000000020
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F4E131813181318131813181318
      1318131813181318131813181318131813181318131813181318000000006C66
      6C666C666C666C666C666C666C666C666C660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F4E7F4E13181318131813181318
      1318131813181318131813181318131813181318131813181318000000006C66
      6C666C666C666C666C666C666C666C666C660000104210421042104210421042
      1042104210421042104210421042104210421042104210421042104210421042
      1042104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000042E07FE07F00420000000000008C318C318C318C318C318C318C31
      8C318C318C318C318C318C318C318C318C318C318C318C318C318C318C318C31
      8C318C318C318C318C318C318C318C318C317F4E7F4E99319931993199319931
      99319931993199319931993199319931993199319931993100000000F97F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1042E07F0042000000000042E07F000000002C672C672C672C672C672C672C67
      2C672C672C672C672C672C672C672C672C672C672C672C672C672C672C672C67
      2C672C672C672C672C672C672C676C4E8C317F4E7F4E99319931993199319931
      99319931993199319931993199319931993199319931993100000000F97F337F
      337F337F337F337F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000104200000000000000000000000000000000000000000000000000000000
      1042186318631863104200000000000000000000000000000000000000001042
      E07F004200000000000000000042004200002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      99319931993199319931993199319931993199319931993100000000337F337F
      337F337F337F337F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000104200000000000000000000000000000000000000000000000000001042
      18631042104210421863104200000000000000000000000000000042E07F1042
      E07F000000000000000000000000E07F00002C67F97FF97FF97FF97FF97FF97F
      F97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97F
      F97FF97FF97FF97FF97FF97FB65A6C4E8C317F4E7F4E99319931993199319931
      9931993199319931993199319931993199319931993100000000F97F337F337F
      337F337F337F337F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000104200000000000000000000000000000000000000000000000010421863
      1042000000001042FF7F1042104200000000000000000042E07FE07F00420000
      E07F000000000000000000000000E07F00002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993199319931993199319931993100000000F97F337F337F
      337F337F337F337F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000104200000000000000000000000000000000000000000000104218630000
      1042186300001863186310421042104200000042E07FE07F0042000000000000
      0042004200000000000000000042004200002C67F97FF97FF97FF97FF97FF97F
      F97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97F
      F97FF97FF97FF97FF97FF97FB65A6C4E8C317F4E7F4E99319931993199319931
      99319931993199317F4E7F4E7F4E7F4E7F4E7F4E7F4E00000000F97FF97FF97F
      337F337F337F337F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000104200000000000000000000000000000000000000001042186300001042
      186310420000FF7F186310421042104210421042004200000000000000000000
      0000E07F0042000000000042E07F000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      993199317F4E000000000000000000000000000000000000000000000000F97F
      F97FF97F337F337F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      000010420000000000000000000000000000000000000000186300001042FF7F
      1042000010421863186310420000104210421042000010420000004000000000
      000000000042E07FE07F00421042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      7F4E000000000000000000000000000000000000000000000000000000000000
      0000F97FF97FF97F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      00000000000000000000000000000000000000000000104210421042FF7F1863
      0000000018631863104200001863000010421042104200000000007C00000000
      0000000000000000000010421042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199310000
      0000000000009931993199319931993199319931993100000000F97F337F0000
      000000000000F97F337F337F337F6C666C660000FF7F00000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7F
      0000104200000000000000000000000000000000000018630000186318630000
      00001042FF7F104200001863FF7F186300001042104210420000007C00000040
      0000000000000000000000420042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199310000
      0000993199319931993199319931993199319931993100000000F97F337F337F
      337F00000000337F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000010000000FF7F
      0000000010420000000000000000000000000000104210420000FF7F10420000
      1042FF7F104200001863FF7F1863FF7F18630000104210421042007C0040007C
      00000000000000000000E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993199319931993199319931993100000000F97F337F337F
      337F337F337F337F337F337F337F6C666C660000FF7F00000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7F
      0000104200001042000000000000000000000000186300000000186318631042
      1863104200001863FF7F186318631863FF7F1863000010421042007C007C007C
      00000000000000000000E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993199319931993199319931993100000000F97F337F337F
      337F337F337F337F337F337F337F6C666C660000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000000010420000104200000000000000000000186300000000104218631863
      104200001863FF7F18631863186310421863FF7F186300001042007C007C007C
      00000000000000000000E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993100000000000000000000000000000000F97F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF7F00001042000010420000000000000000186300000000000000000000
      00001863FF7F1863186318631863104218631863FF7F186300000040007C007C
      00000000000000000000E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993100000000000000000000000000000000337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7F
      FF7FFF7FFF7F0000104200001042000000000000186310420000000000001042
      1863FF7F104218631863104210421042104218631863FF7F18630040007C0040
      10420000000000000000E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993100000000F97F337F337F337F337F337F337F337F337F
      337F337F337F337F337F337F337F6C666C66000000000000000000000000FF7F
      FF7FFF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7F
      0000FF7FFF7FFF7F00001042000000000000000010421863104210421863FF7F
      FF7F18631042186318631863186310421863186310421863FF7F004000400040
      10421042000000000000E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993100000000F97F337F337F337F337F337F337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7F0000104200000000000000001042FF7FFF7FFF7F1863
      1863186318631042186318631863104218631863186318631863004000400040
      10421042104200000000E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993100000000F97F337F337F337F337F337F337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000010421863
      1863186318631042104210421863186318631042186318631042004000400040
      00001042104210420000E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993100000000F97F337F337F337F337F337F337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      00000000FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      0000104218631863186318631863186318631863186318631042004000401042
      10420000104210421042E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      9931993199319931993100000000F97FF97F337F337F337F337F337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000001042186318631863186310421863186310420040007C00401042
      FF7F1042000010421042E07F0042000000002C67DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07B2C676C4E8C317F4E7F4E99319931993199319931
      993199317F4E7F4E9931993100000000F97F337F337F337F337F337F337FF97F
      F97F337F337F337F337F337F337F6C666C660000000000000000000000000000
      0000000000000000FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      000000000000000000001042186310421042104210421042007C007C00401042
      1863FF7F104200001042E07F0042000000003367DE7BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07BB07BB07BB07BB07BB07BDE7B6C4E8C317F4E7F4E99319931993199319931
      9931000000007F4E9931993100000000F97F337F337F337F337F337F00000000
      F97F337F337F337F337F337F337F6C666C660000000000000000000000000000
      00000000000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000000000000000
      000000000000000000000000104218631042104200400040007C007C10421042
      10421863FF7F10420000E07F00420000000033673367DE7BDE7BDE7BDE7BDE7B
      DE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B
      DE7BDE7BDE7BDE7BDE7BDE7B33676C4E8C317F4E7F4E99319931993199319931
      9931000000007F4E9931993100000000F97FF97F337F337F337F337F00000000
      F97F337F337F337F337F337F337F6C666C660000000000000000000000000000
      000000000000000000000000FF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7F0000
      FF7FFF7FFF7F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000001042007C007C004000400040104210421042
      186318631863FF7F1042E07F0042000000002C67336733673367336733673367
      3367336733673367336733673367336733673367336733673367336733673367
      3367336733673367336733676C4E6C4E00007F4E7F4E99319931993199319931
      9931000000007F4E99319931993100000000F97F337F337F337F337F00000000
      F97F337F337F337F337F337F337F6C666C660000000000000000000000000000
      0000000000000000000000000000FF7FFF7FFF7FFF7FFF7F0000FF7F0000FF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000040007C007C18631042186318631863
      18631863186318631042E07FE07F000000002C678E778E778E778E778E778E77
      8E778E778E778E778E778E772C672C672C672C672C672C672C672C672C672C67
      2C672C672C672C672C672C672C67000000007F4E7F4E99319931993199319931
      993100000000993199319931993100000000F97FF97F337F337F337F00000000
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      00000000000000000000000000000000FF7FFF7FFF7F0000FF7F0000FF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104210421863186318631863
      10421042186318631042104210420000000000002C678E778E778E778E778E77
      8E778E778E778E778E772C676C4E000000000000000000000000000000000000
      0000000000000000000000000000000000007F4E7F4E99319931993199319931
      9931993199319931993199319931993100000000F97F337F337F337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000FF7FFF7FFF7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010421863186310421042
      10421863186318631042E07F004200000000000000002C678E778E778E778E77
      8E778E778E778E772C676C4E0000000000000000000000000000000000000000
      0000000000000000000000000000000000007F4E7F4E99319931993199319931
      9931993199319931993199319931993100000000F97FF97F337F337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001042104210421042
      10421042104218631042E07F0042000000000000000000002C672C672C672C67
      2C672C672C672C676C4E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F4E7F4E99319931993199319931
      99319931993199319931993199319931993100000000F97F337F337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104210421042
      1042186318631863104200420042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F4E7F4E99319931993199319931
      99319931993199319931993199319931993100000000F97FF97F337F337F337F
      337F337F337F337F337F337F337F6C666C660000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010421042
      1042104210421042000010420042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F4E7F4E7F4E7F4E7F4E7F4E7F4E
      7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E00000000F97FF97FF97FF97F
      F97FF97FF97FF97FF97FF97FF97FF97F6C660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001042
      1042104200000000000000001042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F4E7F4E7F4E7F4E7F4E7F4E7F4E
      7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E00000000F97FF97FF97F
      F97FF97FF97FF97FF97FF97FF97FF97FF97F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F7C1F7C1F7C
      1F7C1F7C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001F7C0000FF7FFF7F
      FF7F00001F7C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000006B2D6B2D00006B2D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000E07F000018630000000000000000000000000000FF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D918D9180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B2D6B256D2D6B2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E07FFF7F0000E07FFF7F000000000000000000000000FF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      00006B2D6B2D6B2D6B2D6B2D6B2D6B2D6B2D6B2D6B2D6B2D7F1A9F19D9186B2D
      6B2D6B2D6B2D6B2D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      6D2DAD2DB65AB65A6D2D6B2D0000000000000000000000000000000000000000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E07FFF7FE07F00001863FF7FE07F00000000000000000000FF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      00007B6F1863186318631863186318631863186318637F1A9F019F01D9181863
      1863186318636B2D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B2D
      6D2D6B2DB65AB65A6B2D6B2D0000000000000000000000000000000000000000
      0000000000000000E07FFF7FE07F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E07FFF7FE07FFF7F0000E07FFF7FFF7FFF7F0000000000000000FF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      00007B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7F1A9F019F01D918FF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000006F35AD2D
      AD2D6D356B2D6B2D6B2D00000000000000000000000000000000000000000000
      0000000000000000FF7FE07FFF7FE07FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      E07FFF7FE07FFF7FE07F00001863FF7FE07FFF7FFF7F000000000000FF7FFF7F
      FF7FFF7FFF7F0000000000000000000000000000000000000000000000000000
      00007B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7F1A9F019F01D918FF7FFF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B2DAD2D6F2D
      7A4AAD2DAD2D6D2D000000000000000000000000000000000000000000000000
      00000000E07F0000E07FFF7FE07FFF7FE07FFF7FE07F00000000000000000000
      000000000000000000000000000000000000000000000000000000000000E07F
      1863E07FFF7FE07FFF7F0000E07FFF7FFF7FFF7FE07FFF7F00000000FF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000000000000000
      00007B6FFF7FFF7F18631863186318637F1A9F019F01D9181863186318631863
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B235AF2D7A4AC91C
      6B2DAD2DAD2D0000000000000000000000000000000000000000000000000000
      00000000FF7F0000FF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7F000000000000
      00000000000000000000000000000000000000000000000000000000E07F1863
      E07F1863E07FFF7FE07F00001863FF7FE07FFF7FFF7FFF7FE07F0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      00007B6FFF7FFF7FFF7FFF7FFF7F7F1A9F019F01D918FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B2DAF35AF35C924C71C
      AD2D6F3500000000000000000000000000000000000000000000000000000000
      0000FF7FE07F0000E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F0000
      0000000000000000000000000000000000000000000000000000E07F1863E07F
      1863E07F1863E07FFF7F0000E07FFF7FFF7FFF7FE07FFF7F00000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      00007B6FFF7FFF7F186318631863297F9F01D918186318631863186318631863
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B235AF35FE522B256B2DAF2D
      AF35000000000000000000000000000000000000000000000000000000000000
      0000E07F00000000FF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F
      FF7F00000000000000000000000000000000000000000000E07FFF7FE07F1863
      E07F1863E07F1863E07F00001863FF7FE07FFF7FFF7F0000FF7FFF7F0000FF7F
      FF7F000000000000FF7F00000000000000000000000000000000000000000000
      0000104294529452945294526C66297F6666FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B2DF235B2352D252B1DEF2DB235
      0000000000000000000000000000000000000000000000000000000000000000
      E07FFF7F00000000E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07F00000000000000000000000000000000E07FFF7FE07FFF7FE07F
      1863E07F1863E07F18630000E07FFF7FFF7FFF7F0000FF7FFF7FFF7F0000FF7F
      FF7F0000FF7FFF7F000000000000000000000000000000000000000000000000
      524AD65AD65AD65AD65AD65A94526C4E18633967396739673967396739673967
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F43DF2359E6B2D256B2DF235EF2D0000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7F0000FF7F0000FF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F00000000000000000000E07F1863E07FFF7FE07FFF7F
      E07F1863E07F1863E07F00001863FF7FE07F0000FF7FFF7FFF7FFF7FFF7F0000
      FF7F0000FF7FFF7FFF7F0000000000000000000000000000000000000000524A
      5A6BFF4FFF4FD65AD65AD65AD65A9452D65AFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      00000000000000000000000000006B2DF235F43D2B252B25F235B23500000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      E07F0000FF7F0000E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F000000000000000000001863E07F1863E07FFF7FE07F
      FF7FE07F1863E07F00001863E07FFF7F0000FF7FFF7FFF7FFF03FF7FFF7F0000
      FF030000FF7FFF7FFF7FFF7F000000000000000000000000000000001042FF4F
      5A6BFF4FFF4FFF4FFF43FF4FFF4F394F524A3967396739673967396739673967
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      000000000000000000000000F43DF43DFF7FC9246B2DF235F235871C00000000
      000000000000000000000000000000000000000000000000000000000000E07F
      0000FF7FFF7F0000FF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F00000000000000000000E07F1863E07F1863E07FFF7F
      E07FFF7FE07F0000E07FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF03FF7F0000
      00000000FF7FFF7FFF7FFF7FFF7F00000000000000000000000000001042FF4F
      5A6BFF4FFF4FD65AD65AD65AD65AD65A524AFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      000000000000000000006B2D3436F63DC91C2915F435F43D8914000000000000
      00000000000000000000000000000000000000000000000000000000E07FFF7F
      0000FF7FFF7F0000E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F00000000000000000000FF7FE07F1863E07F1863E07F
      0000E07F00001863FF7FFF7F0000FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7F
      FF7FFF7FFF03FF7FFF7FFF7FFF7FFF7F0000000000000000000000001042FF4F
      5A6BFF4FFF4FFF4FFF4FFF4FFF4FFF4F524A3967396739673967396739673967
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      0000000000000000363E363EFF7F87146B2D3436F435891C0000000000000000
      00000000000000000000000000000000000000000000000000000000FF7F0000
      FF7FFF7FFF7FFF7F00000000FF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F00000000000000000000E07F1863E07FFF7FE07F0000
      E07F00001863FF7FE07F0000FF7FFF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03
      FF7FFF7FFF7FFF03FF7FFF7FFF7F00000000000000000000000000001042FF4F
      7B6FFF4FFF4FD65AD65AD65AD65AD65A524AFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000000000000000000000
      6B2D6B2D6B2D6B2D363EF63D45148514343EF43DCB2400000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FE07F0000
      FF7FFF7FFF7FFF7FFF7FFF7F00000000E07FFF7FE07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F00000000000000000000FF7FE07F1863E07F00001863
      18631863E07FFF7F0000FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7F
      FF03FF7FFF7FFF7FFF7FFF7F000000000000000000000000000000001042D65A
      FF7FFF4FFF4FFF67FF67FF4FFF4F394F524A3967396739673967396739673967
      FF7FFF7F18636B2D0000000000000000000000000000000000006B2D384A783E
      383E384A384A363E363EF649F63D343E343E6B2D000000000000000000000000
      0000000000000000000000000000000000000000000000000000E07FFF7FE07F
      00000000FF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F00000000000000000000E07FFF7FE07F000018631863
      E07FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7F
      FF7FFF03FF7FFF7FFF7F00000000000000000000000000000000000000001042
      3967FF7F7B6FD65AD65AD65AD65A524A5A6BFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000000000783E783E384A
      384A783E363E383E383E363E363E363E6B2D0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07FFF7F
      E07FFF7F00000000FF7FFF7FFF7FFF7FFF7F0000E07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F00000000000000000000FF7FE07F0000000000001863
      FF7FFF7F0000FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000000000000000
      10425A6B5A6B5A6B5A6B394F1042186339673967396739673967396739673967
      FF7FFF7F18636B2D000000000000000000000000000000009F6B7A4A783E3A4A
      9F6B9E6B783E384A383E363E363E6B2D00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7FE07F
      FF7FE07FFF7FE07F00000000FF7FFF7FFF7F0000FF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F00000000000000000000E07FFF7F0000000000000000
      E07FFF7FFF7F0000FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03
      FF7FFF7FFF7F0000000000000000000000000000000000000000000000000000
      00001042104210421042524AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18636B2D00000000000000000000000000000000784A3A4A3A4A784A
      000000005F73383E363E384A384A6B2D00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07FFF7F
      E07FFF7FE07F0000E07FFF7F00000000FF7FFF7F00000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F00000000000000000000FF7FE07F0000000000000000
      0000FF7FE07FFF7F0000FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      0000BD77FF7F3967396739673967396739673967FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18636B2D000000000000000000000000000000007A4A7A4A5E730000
      0000000000006B2D384A384A384A6B2D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7FE07F0000000000000000FF7FE07F00000000FF7FFF7F00000000FF7FE07F
      FF7FE07FFF7FE07FFF7F00000000000000000000E07F00000000000000000000
      00000000FF7FFF7FE07F0000FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      00007B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      6B2D6B2D6B2D6B2D000000000000000000000000000000007C4A7A4A00000000
      000000006B2D6B2D384A783E363E6B2D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E07FFF7F00000000FF7FFF7F00000000
      E07FFF7FE07FFF7FE07F00000000000000000000000000000000000000000000
      000000000000FF7F000000000000FF7FFF7FFF7FFF03FF7FFF7FFF7FFF7FFF7F
      0000000000000000000000000000000000000000000000000000000000000000
      00007B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      39675A6BD65A0000000000000000000000000000000000009F6B000000000000
      000000006B2D3A4A3A4A783E6B2D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FE07F00000000FF7FE07F
      00000000FF7FE07FFF7F00000000000000000000000000000000000000000000
      00000000000000000000000000000000FF7FFF7FFF7FFF03FF7FFF7FFF7F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      3967D65A00000000000000000000000000000000000000000000000000000000
      000000003A4A784A784A384A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E07FFF7FE07FFF7F
      0000000000000000E07F00000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
      3967000000000000000000000000000000000000000000000000000000000000
      6B2D7A4A3A4A784A9E6B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7C4A7A4A7A4A9F6B000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001042
      00001F0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104210421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F18631863
      0000000000000000000000000000000000000000000000000000000000000000
      E07F0042E07F0042E07F0042E07F00420042004200420000000000000000E07F
      E07F0042E07F0042000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      00001F0000000000000000000000000000000000000000000000000000001863
      00000000000000000000000000000000000000000000000000000000E07F1863
      0042000000000000000000000000000000000000000000000000E07F0042E07F
      0042E07F0042E07F0042004200420042004200420042000000420000E07FE07F
      0042004200000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042104210421042FF7F10421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      0042FF7F1863E07F1863E07F1863E07F1863E07F1863E07F1863000018631863
      0042004200000000000000000000000000000000000000000042004200420042
      0000000000000000000000000000000000000000000000420000E07FE07F0000
      E07F0042E07F0042004200420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF031F0010000000
      00000000000000000000000000001042104210421042FF7FFF7FFF7F10421042
      00001F0000000000000000000000000000000000000000000000000000001863
      0042FF7FE07F1863E07F1863E07F1863E07F1863E07F1863E07F0000E07F1863
      0042004200420000000000000000000000000000000000000042004200420042
      E07F1863E07F1863004218630042004200420042000000420042E07FE07FE07F
      E07F004200420042004200420000000000000000000000000000000000000000
      8C318C318C318C318C318C318C318C318C318C318C318C318C318C318C318C31
      8C318C318C310000000000000000000000000000000000001F00FF031F001000
      000000000000000000001042104210421042FF7FFF7FFF7FFF7FFF7F10421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      0042FF7F1863E07FFF7FFF7FFF7FFF7FFF7FFF7F1863E07F1863000018631863
      0042004200420000000000000000000000000000000000000000004200420042
      0042004200420042004200420042004200420000E07F0042E07F0042E07FE07F
      00420042E07F0042E07F0042E07F000000000000000000000000000000002C67
      2C672C672C672C672C672C672C672C672C672C672C672C672C672C672C672C67
      2C672C672C678C310000000000000000000000000000000000001F00FF031F00
      100000000000104210421042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10421042
      00001F0000000000000000000000000000000000000000000000000000001863
      0042FF7FE07F1863000000420042004200420000E07F1863E07F0000E07F1863
      00420042004200000000000000000000000000000000000000000000E07F0042
      E07F0042E07F0042004200420042004200420000E07F0042E07F00420042E07F
      0042E07FE07FE07F004200420042000000000000000000000000000000002C67
      F97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97F
      F97FF97FB65A8C3100000000000000000000000000000000000010001F00FF03
      1F00100010421042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      0042FF7F1863E07F0000004200420042004200001863E07F1863000018631863
      00420042004200000000000000000000000000000000E07F0042E07F0042E07F
      0042E07F0042E07F004200420042004200420000E07F0042E07F004200420042
      E07FE07FE07F004200420042E07F000000000000000000000000000000002C67
      FF7FB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07B2C678C318C31000000000000000000000000000000000000000000001F00
      FF031F001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10421042
      00001F0000000000000000000000000000000000000000000000000000001863
      0042FF7FE07F1863000000000000000000000000E07F1863E07F0000E07F1863
      0042004200420000000000000000000000000000004200420042004200000000
      0000000000000000000000000000000000000000E07F0042E07F00420042E07F
      E07FE07FE07FE07F0042E07F004200000000000000000000000000002C67F97F
      F97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97FF97F
      F97FB65A8C318C31000000000000000000000000000000001042104210421000
      1F00FF031F001042000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      0042FF7F1863E07F1863E07F1863E07F1863E07F1863E07F1863000018631863
      0042004200420000000000000000000000000000004200000000000000000000
      E07F0042E07F0042E07F00420042004200420000E07F0042E07F004200420042
      E07FE07F0000E07F00420042E07F00000000000000000000000000002C67DE7B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      B07B2C678C318C31000000000000000000000000000010421042104218631863
      00001F001042100010021002100200000000FF7FFF7FFF7FFF7FFF7F10421042
      00001F0000000000000000000000000000000000000000000000000000001863
      0042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000E07F1863
      0042004200420000000000000000000000000000000000420000E07F0042E07F
      0042E07F0042E07F0042E07F0042004200420000E07F0042E07F004200420042
      E07FE07FE07FE07F0042E07F004200000000000000000000000000002C67DE7B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      2C676B2D6C4E8C31000000000000000000000000000010421863186318631863
      186300001002FF03FF0318631863186310020000FF7FFF7FFF7FFF7F10421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      0042004200420042004200420042004200420042004200420042000018631863
      0042004200420000000000000000000000000000004200000042004200420042
      0042004200420042004200420042004200420000E07F00420042004200420042
      E07FE07FE07F0042E07F0042E07F00000000000000000000000000002C67DE7B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      2C678C316C4E8C31000000000000000000000000000018631863186318631863
      10421000FF03186318631863FF03FF03186300001042FF7FFF7FFF7F10421042
      00001F0000000000000000000000000000000000000000000000000000001863
      E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863
      0042004200420000000000000000000000000000000000000042000000000000
      E07F186318631863004218630042186300420000E07FE07F0042004200420042
      0042004200420042E07FE07F00000000000000000000000000002C67DE7BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B
      6C4E6B2D8C318C31000000000000000000000000000018631863186318631863
      00001002186318631863FF03FF03FF03186310420000FF7FFF7FFF7F10421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      0000000000000000000000000000000000000000000000000000000018631863
      0042004200420000000000000000000000000000000000000000004200420042
      00420000000000000000000000000000000000000000E07F00420042E07F0042
      004200420042E07FE07F004200000000000000000000000000002C67DE7BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B2C67
      8C31D65A8C318C31000000000000000000000000000010421863186318631863
      00001002186318631863186318631863186310420000FF7FFF7FFF7F10421042
      00001F0000000000000000000000000000000000000000000000000000001863
      0042FF7FE07F1863E07F1863E07F1863E07F1863E07F1863E07F0000E07F1863
      0042004200420000000000000000000000000000000000000042004200000000
      0000E07F0042E07F0042E07F0042E07F0042E07F0000E07FE07F004200420042
      00420000E07FE07FE07F000000000000000000000000000000002C67DE7BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B2C67
      8C31FF7FFF7F8C31000000000000000000000000000018631042186318631863
      104210021863FF03FF03FF03FF7FFF7FFF03104210421863FF7FFF7F10421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      0042FF7F1863E07F1863E07F1863E07F1863E07F1863E07F1863000018631863
      00420042004200000000000000000000000000000000000000000000E07F0042
      E07F0042E07F0042E07F0042E07F0042E07F0042E07F0000E07FE07F00420042
      E07F0042E07FE07F0000000000000000000000000000000000002C67DE7BB07B
      B07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07BB07B6C4E
      8C31FF7FFF7FD65A8C3100000000000000000000000010421863104218631863
      186300001042FF03FF031863FF7F1863186300001863FF7F1863186310421042
      00001F0000000000000000000000000000000000000000000000000000001863
      0042FF7FE07F1863FF7FFF7FFF7FFF7FFF7FFF7FE07F1863E07F0000E07F1863
      0042004200420000000000000000000000000000000000000000004200420042
      00420042004200420042004200420042004200420042004200000000E07F0042
      004200420042000000000000000000000000000000000000000000002C67FF7F
      DE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B8C31
      D65AFF7F18638C31000000000000000000000000000010421042186310421863
      18631863000010421863FF03FF0318630000186318631863FF7F186310421042
      00001F000000000000000000000000000000000000000000000000000000E07F
      0042FF7F1863E07F0000004200420042004200001863E07F1863000018631863
      0042004200420000000000000000000000000000000000000000004200000000
      0000E07FE07FE07F186300421863004218630042186300420000000000000042
      0000000000000000000000000000000000000000000000000000000000002C67
      3967FF7FFF7FFF7FD318FF7FFF7FD318FF7FFF7FD318FF7FFF7FD318FF7FFF7F
      FF7F18638C318C31000000000000000000000000000010421042104218631042
      1863186318630000104210421042104218631863186318631863104210420000
      1F001F0000000000000000000000000000000000000000000000000000001863
      0042FF7FE07F1863000000420042004200420000E07F1863E07F0000E07F1863
      0042004200420000000000000000000000000000000000000000000000420042
      0042004200421863000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C67
      8E773967FF7FFF7FFF7FD318FF7FFF7FD318FF7FFF7FD318FF7FFF7FFF7FFF7F
      D65A8C316C4E8C31000000000000000000000000000010421042104210421863
      1042186318631863186318631863186310421042000000001042000000001F00
      1F001F000000000000000000000000000000000000000000000000000000E07F
      0042FF7F1863E07F0000000000000000000000001863E07F1863000018631863
      0042004200420000000000000000000000000000000000000000004200420042
      1863000000000000E07F0042E07F0042E07F0042E07F0042E07F0042E07F0000
      0000000000000000000000000000000000000000000000000000000000002C67
      8E778E773967FF7FFF7FFF7FD318FF7FFF7FD318FF7FFF7FFF7FFF7FFF7F1863
      8C318E776C4E8C31000000000000000000000000000010421042104210421042
      18631042186318631863186310421042000000001F00000000001F001F001F00
      1F00000000000000000000000000000000000000000000000000000000001863
      0042FF7FE07F1863E07F1863E07F1863E07F1863E07F1863E07F0000E07F1863
      0042004200420000000000000000000000000000000000000000000000420042
      0000E07F0042E07F0042E07F0042E07F0042E07F0042E07F0042E07F0042E07F
      0042004200000000000000000000000000000000000000000000000000002C67
      8E778E778E773967FF7FFF7FFF7FD318FF7FFF7FD318FF7FFF7FFF7F18638C31
      8E778E776C4E8C31000000000000000000000000000010421042104210421042
      104218631042186318631863000000001F001F001F001F001F001F001F001F00
      000000000000000000000000000000000000000000000000000000000000E07F
      0042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000018631863
      0042004200420000000000000000000000000000000000000000000000000000
      0042004200420042FF7FFF7FFF7FFF7FFF7FFF7F004200420042004200420042
      0042004200420000000000000000000000000000000000000000000000002C67
      8E778E778E778E773967FF7FFF7FFF7FD318FF7FFF7FFF7FFF7F18638C312C67
      2C672C676C4E0000000000000000000000000000000010421042104210421042
      10421042186310421042104200001F001F001F001F001F001F001F001F001F00
      0000000000000000000000000000000000000000000000000000000000001863
      00420042004200420042004200420042004200420042004200420000E07F1863
      0042004200420000000000000000000000000000000000000000000000000000
      0042000018631863E07FE07FE07FE07F0042E07F0042E07F0042E07F00420000
      0000000000420000000000000000000000000000000000000000000000000000
      2C678E778E778E778E773967FF7FFF7FFF7FFF7FFF7FFF7F18638C3100000000
      0000000000000000000000000000000000000000000010421042104210421042
      10421042104210421042000000001F001F001F001F001F001F001F001F000000
      000000000000000000000000000000000000000000000000000000000000E07F
      1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F18631863
      0042004200420000000000000000000000000000000000000000000000000000
      000000420042004200420042E07FE07FE07FE07FE07F0042E07F0042E07F0042
      0042004200000000000000000000000000000000000000000000000000000000
      00002C678E778E778E778E773967FF7FFF7FFF7FFF7F18638C31000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      104210421042000000001F001F001F001F001F001F001F001F001F0000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0042004200420000000000000000000000000000000000000000000000000000
      004200420042E07F0042E07F0042E07FE07FE07FE07FE07F0042E07F0042E07F
      0042004200420000000000000000000000000000000000000000000000000000
      000000002C672C672C672C672C673967FF7FFF7FD65A8C310000000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      1042000000001F001F001F001F00000000001F001F001F000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F
      FF7F004200420000000000000000000000000000000000000000000000000000
      0000004200420042E07F0042E07FE07FE07FE07FE07FE07FE07F004200420042
      0042004200000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000396718638C3100000000000000000000
      0000000000000000000000000000000000000000000010421042104210420000
      00001F001F001F001F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863
      E07FFF7F00420000000000000000000000000000000000000000000000000000
      00000000000000000042E07F0042E07F0042E07FFF7FFF7FFF7FFF7FE07F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042000000000000000000000000
      0000000000000000000000000000000000000000000010421042000000001F00
      1F001F001F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001863E07F1863E07F1863E07F1863E07F1863E07F1863E07F1863E07F
      1863E07FFF7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F001F001F00
      1F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F001F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C61800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD35
      0D7F0000C6180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07FE07F
      0042004200420042004200420042004200420042004200420042004200420042
      0042004200420042000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000734E0D7F3967
      406E00008410AD35000000000000000000000000000000000000100018631000
      1863100018631000186310001863100018631000186310001863000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001042000000000000
      00001042000000000000000000000000000000000000000000000000E07F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000004200000000000000000000000000000000000000001000FF03
      1F00100000000000000000401F7C007C004000000000406E39670D7F5A7F0D7F
      B55600000000AD35524A00000000000000000000000000000000186310001863
      1000186310001863100018631000186310001863100018630000100010000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001863FF7FFF7FFF7F00001863FF7FFF7FFF7F
      00001863FF7F1863FF7FFF7FFF7F0000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0000004200000000000000000000000000000000000000001000FF03
      1F00100000000000000000401F7C007C0040000039670D7F39675A7FE97E3967
      403229250000AD35AD35524A0000000000000000000000001863100018631000
      1863100018631000186310001863100018631000186300001000100010001000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF7F1863FF7F186310420000FF7FFF7FFF7F
      104200001863FF7F1863FF7FFF7F0000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0000004200000000000000000000000000000000000000001000FF03
      1F00100000000000000000401F7C007C004000005A7F0D7F39670D7F3967E97E
      AD35524A00008410AD35EF3D524A000000000000000000001000104210001042
      1000104210001042100010421000104210001042000010001000100010001000
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF7FFF7F1863FF7F1863FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1863FF7F1863FF7F0000000000000000000000000000E07F1042
      1002100210021002100210021002100210021002100210021002100210021002
      1002100200000042000000000000000000000000000000000000000010001863
      FF031F0000000000000000405A7F1863007C00005A7F0D7F5A7F0D7F39670D7F
      AD35734E00008410AD35AD35EF3D524A00000000000000000000000000000000
      0000000000000000000000000000000000000000000010001000100010001000
      1000100000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF7FFF7FFF7F007C1863007C1863007C1863
      007C1863FF7FFF7F1863FF7F18630000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000000000000000000000000000001000
      100010000000406E5A7F0D7F0040004000400D7F5A7FE97E39670D7F5A7F0D7F
      AD353967630C0000AD35EF3DEF3DEF3D524A0000100018631000186310001863
      1000186310001863100018631000186310001863000010001000100010001000
      1000100010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF7FFF7FFF7FFF7F1863FF7F1863FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F1863FF7F0000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000000000000000000000000000000000
      186300005A7F0D7F39670D7F1042186300000D7F39670D7F39670D7F5A7FE97E
      524AE07F630C0000AD35EF3D524A524A00000000186310001863100018631000
      1863100018631000186310001863100018630000100010001000100010001000
      1000100010001000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF7FFF7FFF7F007C1863007C1863007C1863
      FF7FFF7FFF7FFF7FFF7FFF7F18630000000000000000000000000000E07F1042
      1002100210021002100210021002100210021002100210021002100210021002
      1002100200000042000000000000000000000000000000000000000000000000
      1863000039670D7F5A7F0D7F1042186300000D7F5A7F0D7F5A7F0D7F3967406E
      B556E07F84100000AD35734E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000100010001000
      1000100010001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F1863FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000000000000000000000000000000000
      1863000039670D7F5A7F0D7F1042186300000D7F5A7F0D7F39670D7F9C73404A
      3967E07F4A290000AD3500000000000000000000000010420000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000010001000100010001000
      100010001000100010001000000000000000000000000000007C007C007C007C
      0000000000000000000000000000FF7FFF7FFF7F007C1863007C1863007C0000
      007C1863007CFF7FFF7FFF7FFF7F0000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000000000000000000000000000000000
      186300000000E97E5A7F0D7F0000000000000D7F5A7F0D7F39670D7F9C73AD35
      DE7BE07F4A298C31000000000000000000000000000000000000FF7FFF7F1042
      104210421042104210421042FF7FFF7FFF7FFF7FFF7F00001000100010001000
      10001000100010001000100010000000000000000000007C007C007C007C0000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7F000000001863
      FF7F1863FF7F1863FF7FFF7FFF7F0000000000000000000000000000E07F1042
      1002100210021002100210021002100210021002100210021002100210021002
      1002100200000042000000000000000000001042104210420000000010421042
      18631042104200000000000010420000000039670D7F5A7F0D7F5A7F0D7FAD35
      E07FE07F524A8C31000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000100010001000
      1000100010001000100010001000100000000000007C007C007C007C0000FF7F
      FF7F00000000FF7FFF7FFF7FFF7FFF7FFF7F000000000000000010000000FF7F
      1863FF7F1863FF7F1863FF7FFF7F0000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000001042186318631042104218631863
      1863186318631042104210421863000000005A7F0D7F5A7F0D7F39670D7FEF3D
      ED7FED7F524AC028000000000000000000000000000000000000FF7FFF7F1042
      10421042104210421042104210421042FF7FFF7FFF7FFF7FFF7F000010001000
      1000100010001000100010001000100000000000007C007C007C0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000
      00000000007C007C007C000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000001042186318631863000018631863
      1863186318631863186318630000186300005A7F0D7F39670D7F5A7F0D7FEF3D
      ED7FED7F3967E71CAD3500000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000001000
      1000100010001000100010001000100000000000007C007C007C0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      00000000007C007C007C000000000000000000000000000000000000E07F1042
      1002100210021002100210021002100210021002100210021002100210021002
      1002100200000042000000000000000000001042186318631042104218639452
      9452186318631863186300001863186310420000E97E39670D7F5A7F0D7FAD35
      F67FF67F39672925AD3500000000000000000000000000000000FF7FFF7F1042
      10421042104210421042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000018630000
      1000100010001000100010001000100000000000007C007C007C0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000E07F00000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000000000104210420000DE7B10421042
      104210421042104210421042186318631042000039670D7F0D7F0D7F39671863
      F67FF67FFA7FC618AD35000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000186318630000
      00001000100010001000100010001000000000000000007C007C0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000E07F0000FF7F0000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F000000420000000000000000000000000000000000005A7FDE7B0D7F
      5A7FE97E5A7F3967E97F10421863186310420000396739670D7F5A7F734E3967
      F67FF67FF67FC618AD35734E0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7F0000
      186300001000100010001000100010000000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000E07F0000FF7FFF7F0000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      1002100210021002100210021002100210021002100210021002100210021002
      1002100200000042000000000000000000000000000000000000FF7F5A7FE97F
      5A7FDE7B0D7F5A7F0D7F104218631863104200005A7F0D7F5A7F0D7F2925DE7B
      F67FDE7BF67F4A29AD35734E0000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00001863
      1863000000001000100010001000100000000000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7F0000E07F0000FF7FFF7F00000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0000004200000000000000000000000000000000E97F5A7FDE7B0D7F
      DE7B5A7FE97F5A7F0D7F10421042104210420000E97F39674032AD35F67FF67F
      FA7FFA7FFF7FAD35AD35734E0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7F000018630000100010001000100000000000000000000000000000000000
      00000000FF7FFF7FFF7F0000E07F0000FF7FFF7F000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000000000000000000D7FFF7F5A7FE97E
      FF7F5A7FDE7B5A7FE97F5A7FDE7B0D7F5A7F734EAD35B556F67FF67FFA7FFA7F
      FF7FFF7FFF7F524AAD35734E0000000000000000000000000000000000000000
      00000000FF7FFF7F100010001000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000186318630000000010001000100000000000000000000000000000000000
      00000000000000000000E07F0000FF7FFF7F0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      1002100210021002100210021002100210021002100210021002100210021002
      100210020000004200000000000000000000000000000000FF7F5A7F5A7FE97F
      DE7B5A7FE97F5A7FDE7B0D7F3967AD35734E9C73F67FF67FFA7FFA7FFF7FFF7F
      FF7FFF7FFF7F734EAD35406EB556000000000000000000000000000000000000
      0000000000000000100010001000000000000000000000000000000000000000
      FF7FFF7FFF7F0000186300001000100000000000000000000000000000000000
      0000000000000000E07F00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000042000000000000000000000000000000005A7FDE7BDE7B5A7F
      E97FFF7F5A7FE97F734E524A3967F67FF67FF67FFA7FFA7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F524AAD35404A1863000000000000000000000000000000000000
      0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00001863186300000000000000000000000000000000000000000000
      000000000000E07F000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F000000420000000000000000000000000000DE7BDE7BDE7BDE7BDE7B
      DE7B357E4032524AF67FF67FF67FFA7FFA7FFA7FFF7FFF7FFF7FFF7FDE7BFF7F
      DE7BEF3DAD35734E406E357E734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF7FFF7FFF7F00001863000000000000000000000000000000000000
      00000000E07F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7FFF7F18631863186318631863186318631863186318631863
      FF7FFF7F000000420000000000000000000000000000DE7BFF7FE97FFF7F734E
      524A734EF67FF67FFA7FFA7FFA7FFA7FFF7FFF7FFF7FFF7FFF7FFF7F3967EF3D
      AD350D7F734E357E404A357E0D7F000000000000000000000000000000000000
      000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F100010001000FF7F
      FF7FFF7FFF7FFF7F000018631863000000000000000000000000000000000000
      0000E07F00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      FF7FFF7F1002FF7F000000000000000000000000000000000000000000001863
      FF7FFF7F000000420000000000000000000000000000DE7BDE7B000000000000
      F67FF67FFA7FFA7FFA7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EAD35AD35606F
      357E406E3967406E396718630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001000100010000000
      0000000000000000FF7FFF7FFF7F000000000000000000000000000000000000
      E07F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07F1042
      10421042104210420000FF7FFF7F186318631863186318631042104200001042
      104210420000E07F000000000000000000000000000000000000000000000000
      FA7FFA7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDE7BEF3DAD35406E357E18630D7F
      406E18630D7F3967406E39670000000000000000000000000000000000000000
      00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000E07F
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E07FE07F
      E07FE07FE07FE07FE07F0000FF7FFF7F186318631863104210420000E07FE07F
      E07FE07FE07FE07F000000000000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FDE7BFF7FFF7F1863EF3DAD35606F357E406E00000000406E
      3967357E606FAD35000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF7FFF7F1863186310420000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7F734EAD35734E357E0D7F734E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010001000100000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF7FFF7F18631863186318631042000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7FFF7F9C7300000000357E406E3967AD350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010001000100000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5560000000000000000AD358C31000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010421042
      1042104210421042104210421042104210421042104210421042104210421042
      1042104210421042104210421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E71CC618C6180000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000C520C520C5200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010421042
      1042104210421042104210421042104210421042104210421042104210421042
      1042104210421042104210421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000D26EA31C2008840C6210000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C520CA494331C320C520C52000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010421042000000000000000000000000000010001000
      1000100010001000100010001000100010001000100010001000100010001000
      1000100010001000100010001000100010000000000000000000000000000000
      0000000000000000000000000000D26E243D2028611C001CC618A51400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000C52048394C5A03290329C3280529C520C520000000000000
      00000000000000000000000000000000000000000000000000001F001F001F00
      1F001F001F001F001F001F001F001F001F001F001F001F001F001F001F001F00
      1F001F001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000D26E2B5E813062104104001C6210A41462100000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5204839C8494C5A0331C32803290321C3208314C520C5200000
      00000000000000000000000000000000000000000000000000001F001F000000
      0000000000001F0000000000000000001F0000000000000000001F0000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      FF7F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B35AD26E813062105146F65AE71C001C2008C618C618
      0000000000000000000000000000000000000000000000000000000000000000
      00000000C52048318841C8494C5AC328C328C320C320C320C320C1200521C520
      C5200000000000000000000000000000000000000000000000001F001F000000
      1863104200001F0000001863104200001F0000001863104200001F0000001863
      104200001F001F00000010421042000000000000000000000000000000000000
      0000FF7FE07F1042000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008B31D26E243D202831465B6B5A6B1863C6180008001CC618
      840C000000000000000000000000000000000000000000000000000000000000
      0000C52045318541C84988490C5AC120C320C3208320C320C120832083208114
      8114C520C52000000000000000000000000000000000000000001F001F000000
      FF7F186300001F000000FF7F186300001F000000FF7F186300001F000000FF7F
      186300001F001F00000010421042000000000000000000000000000000000000
      00000000FF7FE07FE07FFF7F1863186300420042004200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000D26E673DA31C082119635B6B5A6B3A67F65A4B252008001C
      C618C61800000000000000000000000000000000000000000000000000000000
      C520453145398541C84188514C5AC120C3208320C32081148114810C8114810C
      810C2114C314C520C520000000000000000000000000000000001F001F000000
      0000000000001F0000000000000000001F0000000000000000001F0000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      000000000000FF7FE07FE07FFF7F186318630042004200420000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D26E2B5E8130A31C3A675B6B5A6B175FD65AF65AD65A8B312008
      6210C6186210000000000000000000000000000000000000000000000000C520
      4529453988418841C849C8494C5A83208320C320085A0852C314810C810C810C
      810C810C810C2104C520000000000000000000000000000000001F001F001F00
      1F001F001F001F001F001F001F001F001F001F001F001F001F001F001F001F00
      1F001F001F001F00000010421042000000000000000000000000000000000000
      0000000000000000FF7FE07FE07FFF7F18631863004200420042000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000B35AD26E243D611C734E9B6F5B6B3A67D55649294B254B25AD312921
      20082008A514C6180000000000000000000000000000000000000000C5200529
      4531853945398841C841C8494C5A81148114C8510A5A0A520A52884945318114
      2104210C80040000C520000000000000000000000000000000001F001F000000
      0000000000001F0000000000000000001F0000000000000000001F0000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      00000000000000000000FF7FE07FE07FFF7F1863186300420042004200000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B31D26E243DA31C8B317B6F9B6F5B6B5B6B5A6BC755B452B452CE350821
      840C20080008C618840C00000000000000000000000000000000C52005290331
      4539454148418539C84988490C5A810C88490A660A660A5A0A5ACA51CA590852
      8539810C210C2000C520000000000000000000000000000000001F001F000000
      1863104200001F0000001863104200001F0000001863104200001F0000001863
      104200001F001F00000010421042000000000000000000000000000000000000
      000000000000000000000000FF7FE07FE07FFF7F186318630042004200420000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D26ECC49813049297B6B3963714619637B6B5A6B0F624929F75EF75EF75A
      734ACD3920080008A514C6180000000000000000000000000000082903290329
      4539453948398541C8418851CA5105390A660A660A660A5A0A5A0A5ACA51C851
      0852C85188410329C520000000000000000000000000000000001F001F000000
      FF7F186300001F000000FF7F186300001F000000FF7F186300001F000000FF7F
      186300001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000FF7FE07FE07FFF7F18631863004200000000
      0000000000000000000000000000000000000000000000000000000000000000
      D26EF36EA538A31CF75E9B6F5146B5569452D65A3A67D16E252D934E175F175F
      D75295524F4262102008E71C840C000000000000000000000000052103290331
      453185394539884188414839C3200A664A660C6E0A5A0A660C660A5A085A0A5A
      CA510A520852C851CA49483105310531000000000000000000001F001F000000
      0000000000001F0000000000000000001F0000000000000000001F0000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      00000000000000000000000000000000FF7FE07FE07FFF7F1863000000000000
      000000000000000000000000000000000000000000000000000000000000B35A
      D26E243D611C724EBD777B6B734A734EB452734AD656356B2B5E4B25175F175F
      D65A744E734E3146840C2008A414C61800000000000000000000082103290329
      453945390531C3200531830C081583140531C8510A664A660A660A5A0A5A0A5A
      0A52CA510A4A0852CA51C84988414839053100000000000000001F001F001F00
      1F001F001F001F001F001F001F001F001F001F001F001F001F001F001F001F00
      1F001F001F001F00000010421042000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FE07FE07F0000000000000000
      000000000000000000000000000000000000000000000000000000008B31D26E
      CC49A138CC49BD737B6F175F7B6B955695569452744E17674E73252DF65AF75E
      D75AB5569552734E7346A5142008082100000000000000000000C82803290329
      0329C3280529C8498E2921008304830C8C152004C5204539085A0A5A0A660A5A
      0A5ACA51CA51C851C851C851CA490531000000000000000000001F001F000000
      0000000000001F0000000000000000001F0000000000000000001F0000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07F00000000000000000000
      00000000000010001000000000000000000000000000000000000000D26ED26E
      A138252D5B6BBD77D65A734AD75A5B6BF75E94523146B5564E73673D734ED75A
      D75AD75A9552734E734E4929001C4929000000000000000000000829C328C120
      8841CA498849C520D02921004C218304C80C85040A158304210CC3200539CA51
      0A5A0A5ACA51CA590852C851C3300000000000000000000000001F001F000000
      1863104200001F0000001863104200001F0000001863104200001F0000001863
      104200001F001F00000010421042000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      000000001F001000100010001000000000000000000000000000D26E2E4E243D
      A538185FBD77F75E724E3A677346734AD5561863D656303AD55A275E8B31D75A
      D75AB556B556734ECD39001C08210000000000000000000000000821C3200A52
      CA51C841810CC514543AD029D029D029D029CE29D029D029D029D02948290521
      05298841C8490A52CA59453100000000000000000000000000001F001F000000
      FF7F186300001F000000FF7F186300001F000000FF7F186300001F000000FF7F
      186300001F001F00000010421042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7F000000000000
      00001F0010001F0010001000100010000000000000000000B35AD26E095EA138
      5146BD771863934E3A679452F85E51469556734A185FD75A744E2A6FA31C9552
      B556955694524F42611CE71C00000000000000000000000000000515C8490A52
      CC394C158304C514B64A102A543A1232122AB642CE29543AB63AB632103AB63A
      B63A4829453105294839000000000000000000000000000000001F001F000000
      0000000000001F0000000000000000001F0000000000000000001F0000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7F00001F00
      1F0010001F0010001F001000100010001000000000008B31D26E715EA1388B31
      9C77BD73B556B452F75EF75E724E175FB556303A3146F75ED65A136F243DCE35
      B55695565146A31CA4140000000000000000000000000000C520CA51C849CC39
      D0218C212000C514B442D229D029D029D021102AD0211232CE211022CE21D021
      122A8C214E1581144831000000000000000000000000000000001F001F001F00
      1F001F001F001F001F001F001F001F001F001F001F001F001F001F001F001F00
      1F001F001F001F00000010421042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001F001F00
      1F001F0010001F0010001F0010001000100000000000D26EB35A243D252DBD77
      BD77D65AD65A3963D65AF75E185F9452734A9552D656734EF85E356BAB622921
      9556734EA31CA31C0000000000000000000000000000C8208849C849524A5432
      10228C212104C5145442102A123AD031102A123AD029122AD029122AB63A8C21
      5432CE294C15C120483900000000000000000000000000000000007C007C0000
      0000000000001F0000000000000000001F0000000000000000001F0000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001F001F00
      1F001F001F0010001F0010001F00100010000000D26E9C77CC49243D1763DE77
      B45219639C73F75E18639452F75E9B6FF75E734E9552D656185F185F4E73673D
      734E252D611C0000000000000000000000000000C5208841C320810C7B67523A
      D0298C158300C814F952122A543A103A1232B642CE2954321032D0291232D029
      B63AD0294C158320484145290000000000000000000000000000007C007C0000
      186310420000007C00001863104200001F0000001863104200001F0000001863
      104200001F001F00000010421042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001F001F00
      FF7F1F001F001F0010001F0010001F001000B35AD26E2B5EA138D55ADE7BDE77
      F75E185FD75ABD735B6B3A67185F175F3A67F85E944E3A673963185F7673673D
      E71C611C0000000000000000000000000000C52000000000000083147B67543A
      D0298C21830C0821F952122A543A123A1232B642D029543AB642B93A103AB63A
      B93A90294C158314484188418539000000000000000000000000007C007C0000
      FF7F18630000007C0000FF7F186300001F000000FF7F186300001F000000FF7F
      186300001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F00
      1F00FF7F1F001F001F0010001F0010001F00D26ECC49243D673DBD77FF7FBD77
      7B6BBD739C77BD77BD737B6BD65AD656F75E18635A6B5A6B3A67175FF75EAB62
      6210000000000000000000000000000000000000000000000000C5207B67122A
      D0218C2183040821F9528E29D031CE29CE29D0318E218E29D031D0318E29D031
      D031CE214C1583144839CA51CA49C32000000000000000000000007C007C0000
      000000000000007C00000000000000001F0000000000000000001F0000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F001F00FF7F1F001F001F0010001F00100000002B5E243D243D243DB35A9552
      A4144F42BD77BD77BD739E639B6F5B6BF75E5A6B5B6B5B6B3A67F75E724E095E
      A31C00000000000000000000000000000000000000000000C328C3287B67D021
      D021902185040821F952C80C85054505C3040305230445050305030505052304
      2304C80C4C158314C8490A52CA51CA4908210000000000000000007C007C007C
      007C007C007C007C007C007C007C1F001F001F001F001F001F001F001F001F00
      1F001F001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F001F00FF7F1F001F001F0010001F00000000000000864DA538864D4B25
      A60C840C292194527B6F9B6F9B6F7B6F5B6B5B6B5B6B5A6B1863724E611C673D
      C7550000000000000000000000000000000000000000000048390529F95AD029
      D029CE2185044815F952C5048300C30483042304810083048304C30083002104
      2100C8144C15C5204C5A0C528841C32000000000000000000000007C007C007C
      007C007C007C007C007C007C007C1F001F001F001F001F001F001F001F001F00
      1F001F001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001F001F00FF7F1F001F001F00100000000000000000000000673D3146
      C618A60CA60CA60CE71CF75E9B6F945219635B6B3A673A67D752A31C4929252D
      2A6F673D000000000000000000000000000000000000032948394531B652D229
      D0291022830C0821F9521032123212321232123212321232103212321232123A
      123212324C150829CC51C3200000000000000000000000000000007C007C007C
      007C007C007C007C007C007C007C007C1F001F001F001F001F001F001F001F00
      1F001F001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F001F00FF7F1F001F001F00000000000000000000000000B35A
      303A0821C618A60CA60C840C8B31D556D656175F5A6BF75E252DA31C00000000
      2A6F673D00000000000000000000000000000000C520854188418841B64AD021
      102AD029C80C0815B6524C214C29082108210821082108210821081508210821
      C8148E298E15230C000000000000000000000000000000000000007C007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000001F001F00FF7F1F001F00000000000000000000000000724E
      71464B254B250821C618A60CA60CC618F75A3C5B5A6B673DE71C000000000000
      715E275E4929000000000000000000000000000000008A3103318A49B64A1022
      1022102248158C21F9520821103A4C154C154C154C154C154C154C154C154C15
      83008C218E152104000000000000000000000000000000000000007C007C0000
      00000000000000000000000000000000E07F0000E07F0000E07F0000E07F0000
      E07F00001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000010001F001F00FF7F1F00000000000000000000000000724E
      AD314F424B254B254929A514A414252D39633A67CD39A31C4B25000000000000
      00004B25840C840C0000000000000000000000000000000000000000B64AD021
      D029D0214C15CC397B5BF952B64ACE29CE29CE21CE21D021CE29D021D021CE21
      0A15123210322104000000000000000000000000000000000000007C007C0000
      00000000000000000000000000000000E07F0000E07F0000E07F0000E07F0000
      E07F00001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010001F001F00FF7F0000000000000000000000000000
      CD39175FCE3500008B31673DA13881308130CD39611C4B250000000000000000
      0000AD31E71CA5140000000000000000000000000000000000000000FF77FF77
      FF77FF77B6528C3108158A29B64AD029D231102A102AD029D031102A122AD029
      0A15104252428C29000000000000000000000000000000000000007C007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001F001F00000010421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000010001F001F000000000000000000000000000000
      724E4B2500000000000000008B31CC49252DA31CE71C00000000000000000000
      0000611CA1382008000000000000000000000000000000000000000000000000
      000000000000000000007B6F3B53B632B632B63AB63A5442B642B63AB63AB63A
      8E21CC3100000000000000000000000000000000000000000000007C007C007C
      007C007C007C007C007C007C007C007C1F001F001F001F001F001F001F001F00
      1F001F001F001F00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010001F000000000000000000000000000000
      00000000000000000000000000000000673D4B25000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF77FF77FF77FF77FF777B6FFF7FFF77FF77FF77
      FF77524A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CE39CE39000000000000000000000000000000000000000000000000
      000000000000000000000000FF7F0040004000400040FF7F0000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      1863186318631863186318631863186318631863186318631863186318631863
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000C618C618
      00008C190000CE39CE39CE390000000000000000000000000000000000000000
      00000000000000000000FF7FFF7FFF7F00400040FF7FFF7FFF7F000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000000000000000000000000000000000000000000000000000000000001863
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000084106C666C660821
      00008C190000CE39CE39CE39CE39CE3900001000000000000000000000000000
      00000000000000000000FF7FFF7FFF7F00400040FF7FFF7FFF7F000000000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000084106C66337F337F337F0821
      00008C190000CE39CE39CE39CE39CE39CE391000000000001042000010420000
      0000000000000000FF7FFF7FFF7FFF7F00400040FF7FFF7FFF7FFF7F00000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C66337F337F337F337F337F0821
      00008C190000CE39CE39CE39CE39CE39CE391000000000000000000000000000
      0000000000000000FF7FFF7FFF7F00420042004200420042FF7FFF7F00000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000420884104208337F337F337F337F337F337F0821
      00008C190000CE39CE39CE39CE39CE3900001000000000000000000000000000
      000000000000FF7FFF7F00420042E07FFF7FE07F1863E07F0042FF7FFF7F0000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000001042
      0000104210421042000000001042000010421042104200000000104200001042
      1042104200000000104200001042104210420000000000000000000000000000
      00000000000000004208C018C0300000337F337F337F337F337F337F337F0821
      00008C190000CE39CE39CE390000000000001000000000000000000000000000
      000000000000FF7F00420042E07FFF7FE07FFF7FE07F1863E07F0042E07F0000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000001042000000000000000000000000104200000000000000000000
      0000104200000000000000000000000010420000000000000000000000000000
      000000004208C018C030C030C0300000337F337F337F337F337F337F337F0821
      00008C190000CE39000000000000000000001000000000000000000000000000
      0000000000000042FF7FE07FFF7FE07F004200420042E07F1863E07F00420000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000000000000000000000000000000000000000000000000000000000001863
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000001040
      0040104000001042000000001040004010400000104200000000104000401040
      0000104200000000104000401040000010420000000000000000000000000000
      4208C018C030C030C030C030C03000000000000000008410337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      0000000000000042E07FFF7FE07F00400042004000420040E07F1863E07F0042
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000E07F0000007C
      104000400000104200000000007C104000400000104200000000007C10400040
      0000104200000000007C1040004000001042000000000000000000004208C018
      C030C030C030C030C030C030000000006C666C666C66337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      000000000042E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F18630042
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000E07FE07F0000
      0040104000001042000000001040004010400000104200000000104000401040
      0000104200000000104000401040000010420000000000004208C018C030C030
      C030C030C030C03000000000C0180000337F337F337F337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      000000000042FF7FE07FFF7FE07FFF7F1042000000421863E07FFF7FE07F1863
      00420000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000E07FE07F
      000000400000104200000000007C104000400000104200000000007C10400040
      0000104200000000007C1040004000001042000000004208C030C030C030C030
      C030C03000000000C018C018C0300000337F337F337F337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      00001863FF7FE07FFF7FE07F1863E07FFF7FFF7FFF7F0042FF7FE07F1863E07F
      18630000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000E07F
      E07F000000000000E07F00001040004010400000104200000000104000401040
      00001042000000001040004010400000104200000000C030C030C030C030C030
      C0300000C018C018C030C030C0300000337F337F337F337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      0000FF7FE07FFF7FFF7FFF7FE07F1863E07FFF7F18631863E07FFF7FE07F1863
      E07F0042000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000007C
      E07FE07F0000E07FE07FE07F0000104000400000104200000000007C10400040
      0000104200000000007C104000400000104200000000C030C030C030C030C030
      0000C018C030C030C030C01800008410337F337F337F337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      0000E07FFF7FE07FFF7FE07FFF7FE07FFF7FFF7F0042E07FFF7FE07FFF7FE07F
      18630042000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000000000000000000000000000000000000000000000000000000000001863
      1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000001040
      0040E07FE07FE07F0000E07FE07F000010400000104200000000104000401040
      00001042000000001040004010400000104200000000C030C030C030C0300000
      C018C030C030C018040042086C66337F337F337F337F337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      E07F1863E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F1863E07FFF7FE07F1863
      E07F1863000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      18631863FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000007C
      10400040E07F104200000000E07FE07F00000000104200000000007C10400040
      0000104200000000007C104000400000104200000000C030C030C030C030C018
      C030C030C03000006C66337F337F337F337F337F337F337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      0000E07FFF7FE07F004210000000E07FFF7FFF7F0042E07F10000000FF7FE07F
      18630042000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000
      FF7F00001863FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000001040
      0040104000001042000000001040E07FE07F0000104200000000104000401040
      00000000E07F00001040004010400000104200000000C030C030C030C030C030
      C030C030C0300000337F337F337F337F337F0000337F337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      00001863E07FFF7FE07F104200420042E07FFF7FE07F00420042004200421863
      E07F1863000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      0000FF7F00001863FF7FFF7FFF7FFF7FFF7F000000000000000000000000007C
      104000400000104200000000007C1040E07FE07F000000000000007C10400040
      0000E07FE07FE07F0000104000400000104200000000C030C030C030C030C030
      C030C030C0300000337F337F337F337F337F0000337F337F337F337F337F0821
      00008C1900000000000000000000000000001000000000000000000000000000
      0000E07F1863E07F1042104200001042FF7FE07FFF7F1042000010421042E07F
      18630042000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000
      1863FF7FFF7F00001863FF7FFF7FFF7FFF7F0000000000000000000000001040
      004010400000104200000000104000401040E07FE07F00000000104000400000
      E07FE07F0000E07FE07F000010400000104200000000C030C030C030C030C030
      C030C030C0300000337F337F337F337F337F0000337F337F337F337F337F0821
      00006C1A00000000000000000000000000001000000000000000000000000000
      00000000E07FFF7FE07FFF7FFF7FFF7FE07FFF7FE07FFF7FE07FFF7FE07F1863
      E07F0000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      00000000000000001863FF7FFF7FFF7FFF7F000000000000000000000000007C
      104000400000104200000000007C104000400000E07FE07F0000007C0000E07F
      E07F104200000000E07FE07F00000000104200000000C030C030C030C030C030
      C030C030C0300000867D337F337F337F337F337F337FCC18CC18337FCC180000
      6C1A6C1A00000000000000000000000000001000000000000000000000000000
      000000000000E07FFF7FFF7FFF7FE07FFF7FE07FFF7FE07FFF7FE07F1863E07F
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000000000000000000000000000000000000000000000000000000000001863
      1863FF7FFF7FFF7F00001863FF7FFF7FFF7F0000000000000000000000001040
      00401040000010420000000010400040104000001042E07FE07F0000E07FE07F
      0000104200000000007CE07FE07F0000104200000000C030C030C030C030C030
      C0300000C030C0180400337F337F337F337FCC18CC186C1A6C1ACC1808216C1A
      6C1A333300000000000000000000000000001000000000000000000000000000
      0000000000001863E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F0000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      1863FF7FFF7FFF7F00001863FF7FFF7FFF7F000000000000000000000000007C
      104000400000104200000000007C10400040000010420000E07FE07FE07F0040
      000010420000104000000000E07FE07F000000000000C030C030C030C030C030
      C0300000C030C0300000867D337F337FCC186C1A6C1A6C1A6C1A6C1A6C1A6C1A
      6C1A000000000000000000000000000000001000000000000000000000000000
      000000000000E07FFF7FFF7FFF7FE07FFF7F0000000000000000000000000000
      10420000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000
      1863FF7FFF7FFF7F00001863FF7FFF7FFF7F0000000000000000000000001040
      0040104000001042000000001F7C007C1F7C0000104200000000E07F00401040
      00001042000000000000000000000000000000000000C030C030C030C030C030
      C0300000C030C030C0300400867D4A29CC186C1A6C1A6C1A6C1A6C1A6C1A6C1A
      0000000000000000000000000000000000001000000000000000000000000000
      0000000000000000E07FFF7FE07F000000000000000000000000000000001042
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      000000000000000018631863FF7FFF7FFF7F000000000000000000000000007C
      1040004000001042000010400000000000000000000000000000007C10400040
      00001042000000000000000000000000000000000000C030C030C030C030C030
      C030C030C030C030C030CC18000042086C1A6C1A6C1A6C1A6C1A6C1A6C1A9931
      0821000000000000000000000000000000001000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010420000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
      00001863FF7FFF7F00001863FF7FFF7FFF7F0000000000000000000000001040
      0040104000001042000000000000000000000000000000000000104000401040
      00001042000000000000000000000000000000000000C030C030C030C030C030
      C030C030C030C030CC18841084106C1A6C1A6C1A6C1A6C1A6C1A6C1A33330000
      0000000000000000000000000000000000001000000000000000000000000000
      000000000000000000000000FF7F000000000000000000000000000000000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7F00001863FF7F0000FF7FFF7FFF7FFF7F000000000000000000000000007C
      1040004000001042000000000000000000000000000000000000007C1F7C007C
      00001042000000000000000000000000000000000000C030C030C030C030C030
      C030C030CC18841008216C1A6C1A33336C1A6C1A6C1A6C1A33336C1A08210821
      0000000000000000000000000000000000001000000000000000000000000000
      0000000000000000000018630000000000000000000000000000000000000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      0000000000000000FF7FFF7FFF7FFF7FFF7F0000000000000000000000001F7C
      007C1F7C00001042000000000000000000000000000000001040000000000000
      00000000000000000000000000000000000000000000C030C030C030C030C030
      CC18841008216C1A6C1A33336C1A082100006C1A33336C1A0821000000000000
      0000000000000000000000000000000000001000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000010400000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C030C030C030CC188410
      08216C1A6C1A33336C1A08210000000000000000000000000000000000000000
      0000000000000000000000000000000000001000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C030CC18CC18C6186C1A
      6C1A33336C1A0821000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C6186C1A6C1A3333
      6C1A082100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000033336C1A0821
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E07FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001000000200020002000200020002
      0002000200020002000200020002000200020002000200020002000200020002
      0002000200020002000200020002000200020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104210421042
      1042104210421042104210421042104210421042104210421042104210421042
      1042104210421042104210421042104200000000000000001042104210421042
      1042104210421042104210421042104210421042104210421042104210421042
      1042104210421042104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001040104000000000
      0000000000000000000000000000000000000000000000000000104210421042
      1042104210421042104210421042104210421042104210421042104210421042
      1042104210421042104210421042104200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010401040104000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000001042104200000000000000000000000000000000
      0000000000001042000000000000000000000000000010420000000000000000
      0000000000000000104200000000000000000000000000000000000000001F00
      1F001F001F001F00000000001F001F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010401040104010400000
      0000000000000000000000000000000000000000000000000000000018631863
      1863186318631863186318631863186318631863186318631863186318631863
      1863186318631863186300001042104200000000000000000000000000000000
      0000000000001042000000000000000000000000000010420000000000000000
      00000000000000001042000000000000000000000000000000001F001F001F00
      1F001F00000000001863104200001F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104010401040104010400000
      0000000000000000000000000000000000000000000000000000000018630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000186300001042104200000000000000000000000000000000
      0000000000001042000000000000000000000000000010420000000000000000
      000000000000000010420000000000000000000000000000000000001F001F00
      00000000FF7F1863FF7F10421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104010401040104010400040
      0000000000000000000000000000000000000000000000000000000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000000001042104210421042
      1042104210421042104210421042104200001042104210421042104210421042
      1042104210420000104200000000000000000000000000000000000000000000
      1863FF7F1863FF7F186310420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000040104010400000104010401040
      0000000000000000000000000000000000000000000000000000000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000000000000000000000000
      0000000000001042000000000000000000000000000010420000000000000000
      0000000000000000104200000000000000000000000000000000000000001863
      FF7F1863FF7F1863104210420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000401040104010400000000010401040
      0040000000000000000000000000000000000000000000000000000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000000000000000000000000
      0000000000001042000000000000000000000000E07F00000000186300000000
      0000000000000000104200000000000000000000000000000000000000000000
      0000FF7F1863FF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000001040104010401040104010400000000010401040
      1040000000000000000000000000000000000000000000000000000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000000000000000000000000
      0000000000001042000000000000000000000000000010421042000018630000
      0000000000000000104200000000000000000000000000000000000000000000
      00001863FF7F1863186318631863186318630000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010401040104010401040104000000000000010401040
      1040004000000000000000000000000000000000000000000000000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000000001042104210421042
      10421042104210421042104210421042104210420000E07FE07F104200001042
      1042104210420000104200000000000000000000000000000000000000000000
      000000001863FF7F1863FF7F1863FF7F18630000004000400040007C00400040
      0040004000400000000000000000000000000000000000000000000000000000
      0000000000000000000010401040104010401040104000000000000000001040
      1040104000000000000000000000000000001042104210421042000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000000000000000000000000
      0000000000001042000000000000000000000000000000000000E07F10420000
      1863000000000000104200000000000000000000000000000000000000000000
      0000000000001863FF7F1863FF7F186318630000007C007C007C004000401863
      1042004000400000000000000000000000000000000000000000000000000000
      0000000000000000000000001040104010401040000000000000000000001040
      1040104010400000000000000000000000001042104210421042000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000000001863186318631863
      18631863186310421863186318631863186300000000104200000000E07F1042
      0000186300000000104200000000000000000000000000000000000000000000
      000000001863FF7F1863FF7F1863FF7F186300000000004000401863FF7FFF7F
      1042104200000000000000000000000000000000000000000000000000000000
      0000004010401040104000401040104000400000000000000000000000001040
      1040104010401040000000000000000000000000000000000000000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000000000000000000000000
      000000000000000000000000000000001863186300001042000000000000E07F
      1042000018630000000000000000000000000000000000000000000000000000
      00001863FF7F1863FF7F1863FF7F1863FF7F186318630000FF7FFF7FFF7FFF7F
      1042000000000000000000000000000000000000000000000000000000000000
      0000104010401040104010401040104010401040000000000000000000000000
      1040104010401040004000000000000000000000186318631863000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C004000401863186300001042104200000000000010021002100210021002
      1002100210021002100210021002100200001042104210421042104200000000
      E07F104200000000104200000000000000000000000000000000000000000000
      0000FF7F1863FF7F1863FF7F1863FF7F186318630000FF7FFF7FFF7FFF7FFF7F
      1042000000000000000000000000000000000000000000000000000000000000
      0000104010401040104010401040104010401040000000000000000000000000
      1040104010401040104000000000000000000000186300000000000018630000
      1F7C1F7C0040004018631F7C1F7C0040004018631F7C1F7C0040004018631F7C
      1F7C0040004018631863000010421042000000000000FF030000000010020000
      0000100200000000100200000000100200001863000010420000000000000000
      0000000018630000104200000000000000000000000000000000000000000000
      00000000FF7F1863FF7F1863FF7F1F00FF7F186300000000FF7FFF7FFF7F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000104010401040104010401040104010401040000000000000000000000000
      0040104010401040104010400000000000000000186300001863000018630000
      1F7C1F7C004000401863186318631863186318631F7C1F7C0040004018631F7C
      1F7C0040004018631863000010421042000000000000FF03FF0300001002FF03
      00001002FF0300001002FF030000100200001863000010420000000000000000
      00000000E07F1042000000000000000000000000000000000000000000000000
      00000000000000001863FF7F1863000000000000000000001863FF7F18631863
      1863186318631863000000000000000000000000000000000000000000000000
      0000000010401040104000401040104010400000000000000000000000000000
      0000104010401040104010401040000000000000186300001863000018630000
      18631863186318631863186318631863186318631F7C1F7C0040004018631863
      18631863186318631863000010421042000000000000FF031002100210021002
      1002100210021002100210021002100200001863000010420000000000000000
      000000000000E07F104200000000000000000000000000000000000000000000
      000000000000000000001863FF7F1863FF7F00000000000000001863FF7FFF7F
      FF7FFF7FFF7F1863000000000000000000000000000000000000000000000000
      0000000000401040104010400000000000000000000000000000000000000000
      0000000010401040104010401040000000000000186300001000000018630000
      1863186318631863186318631863186318631863186318631863186318631863
      18631863186318631863000010421042000000000000FF030000000010020000
      0000100200000000100200000000100200001042104210421042104210421042
      1042104200000000E07F10420000000000000000000000000000000000000000
      0000000000000000000000001863FF7F186318630000000000000000FF7FFF7F
      FF7FFF7FFF7F1863000000000000000000000000000000000000000000000000
      0000104010400040104010401040000000000000000000000000000000000000
      0000000010401040104010401040104000000000186300001000000018631863
      1863186318631863186318631863186318631863186318631863186318631863
      18631863186318631863000010421042000000000000FF03FF0300001002FF03
      00001002FF0300001002FF030000100200001863000010420000000000000000
      00000000000000000000E07F1042000000000000000000000000000000000000
      00000000000000000000000000001863FF7F18630000000000001863FF7FFF7F
      FF7FFF7FFF7F1863000000000000000000000000000000000000000000000000
      0000104010401040104010401040104000000000000000000000000000000000
      0000000000001040104010401040104000000000186300001863000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000010421042000000000000FF031002100210021002
      1002100210021002100210021002100200001863000010420000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863FF7FFF7FFF7F
      FF7FFF7FFF7FFF7F186318630000000000000000000000000000000000000000
      0000000000401040104010401040104000000000000000000000000000000000
      00000000000000001040104010400040000000001863000018630000E07FE07F
      E07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07F
      E07FE07FE07FE07FE07F000010421042000000000000FF030000000010020000
      0000100200000000100200000000100200001863000010420000000000000000
      0000000000000000104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863FF7FFF7FFF7F
      FF7FFF7FFF7FFF7F186300000000000000000000000000000000000000000000
      0000000000001040004000400040000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300001863000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF03FF0300001002FF03
      00001002FF0300001002FF030000100200001042104210421042104210421042
      1042104210420000104200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863FF7FFF7F
      FF7FFF7F1F00FF7F186300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300001863186318631863
      1000100018631863186318631863100010001000186318631000100018631863
      18630000104210420000000000000000000000000000FF031002100210021002
      1002100210021002100210021002100200001863000010420000000000000000
      0000000000000000104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001863
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300001863186318631863
      1863100010001863186318631000100018631863186318631863100010001863
      18630000104210420000000000000000000000000000FF030000000010020000
      0000100200000000100200000000100200001863000010420000000000000000
      0000000000000000104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1863FF7FFF7FFF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300001863186318631863
      1863186310001000186310001000186318631863186318631863186310001000
      18630000104210420000000000000000000000000000FF03FF0300001002FF03
      00001002FF0300001002FF030000100200001863000010420000000000000000
      0000000000000000104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001863FF7FFF7F186300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300001863186318631863
      1863186318631000100010001863186318631863186318631863186318631000
      18630000104210420000000000000000000000000000FF031002100210021002
      1002100210021002100210021002100200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001863FF7F186300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300001863186318631863
      1863186318631863100018631863186318631863186318631863186318631863
      18630000104210420000000000000000000000000000FF031002100210021002
      1002100210021002100210021002100200001042000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300001863186318631863
      1863186318631863186318631863186318631863186318631863186318631863
      18630000104210420000000000000000000000000000FF030000186300000000
      0000000000000000000000000000100200001042000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F001F001F001F001F00
      1F001F001F001F001F001F001F001F001F001F001F001F001F001F001F001F00
      1F001F0000000000000000000000000000000000186318631863186318631863
      1863186318631863186318631863186318631863186318631863186318631863
      18630000104210420000000000000000000000000000FF030000186318631863
      1863186318631863186318630000100200001042000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F001F001F001F001F00
      1F001F001F001F001F001F001F001F001F001F001F001F001F001F001F001F00
      1F001F0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000104210420000000000000000000000000000FF030000000000000000
      0000000000000000000000000000100200001042000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07FE07FE07FE07FE07F
      E07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07FE07F
      E07F0000104210420000000000000000000000000000FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03100200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F7C1F7C1F7C
      1F7C1F7C00000000000000000000000000000000000000000000000000001042
      1042104200000000000000000000000000000000000000000000000000000000
      10421042104200000000000000000000000021007E68BF6CBF6CBF6CBF6C4000
      A000A000220D01090109801800310031C15580518051A700C800C8003422F219
      F219D1118F09CF38EF38DF75FF75FF75FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000186300001042000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001F7C000000000000
      000000001F7C0000000000000000000000000000000000000000000010420000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010420000000000000000000021007D647E68BF6CBF6CBF6C4000
      A000A0004211220D010D801800310031C155C155C1558500A700C800552A3422
      3422F2198F09AF38EF38DF75DF75DF75FF7F0000000000000000000000000000
      0000000000000000000000000000000000001863186300001042104200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000E07F00001863000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104200000000
      0000104210420000000000000000000000000000000000000000000000001042
      10420000000000001042000000000000000021007B5C7E687E687D647D646000
      A000A0004211421142118018E028C024025AE259E2598500A700850097369736
      9736552A8F09AF38CF389F719F719F71FF7F0000000000000000000000000000
      00000000000000000000000000000000186318630000FF7F0000104210420000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E07F00000000E07F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1042000000000000000000000000000000000000000000000000000000000000
      00001042000000000000000000000000000021007B5C7B5C7B5C7E687D646000
      A00080008319631542118018E028E028025AE259E259850085008500B83A9736
      973697368F098F34AF389F719F719F71FF7F0000000000000000000000000000
      0000000000000000000000000000186318630000FF7FFF7FFF7F000010421042
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E07F0000E07F000018630000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000186300000000104210420000000000000000
      000000000000000000000000000000000000210079547B5C7B5C7B5C7B5C6000
      A00080008419841984198018C024E028235E235E235E4300640064001B4B1B4B
      FA46F9428F091F6D5F715F717F717F71FF7F0000000000000000000000000000
      000000000000000000000000186318630000FF7FFF7FFF7FFF7FFF7F00001042
      1042000000000000000000000000000000000000000000000000000000000000
      0000E07F0000E07F00000000E07F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018630000000018630000000000000000000000000000
      0000000000000000000000000000000000002100795479547954BA5C7B5C6000
      8000A0000000000084198018A020C02444624462235E4200420043005C573C53
      1B4B1B4B8F091F6D3F711F6D5F715F71FF7F0000000000000000000000000000
      00000000000000000000186318630000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      1042104200000000000000000000000000000000000000000000000000000000
      E07F0000E07F0000E07F000018630000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001863000000001863000000001863000018631863104210420000
      0000000000000000000000000000000000002100785477507954795879546000
      A0008000E521C51DC51D8018A01CA020856685664462640020004200B0098F09
      8F098F098F09DF6C1F6D1F6D1F6D3F71FF7F0000000000000000000000000000
      0000000000000000186318630000FF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF7F
      000010421042000000000000000000000000000000000000000000000000E07F
      1863E07F0000E07F00000000E07F000000000000E07F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000186300000000186300000000186300000000000000000000
      0000000000000000000000000000000000002100775077507750795878546000
      8000A000E521E521E5218018A020A01C856685666466856620392C282B24DF6C
      BF6CDF6CDF6CFF6CFF6CFF6C1F6D1F6DFF7F0000000000000000000000000000
      000000000000186318630000FF7FFF7FFF7FFF7FFF7FFF7FFF03FF7FFF7FFF7F
      FF7F0000104210420000000000000000000000000000000000000000E07F1863
      E07F1863E07F0000E07F000018630000E07F000000000000E07F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018630000000000001863000000000000186318631042
      1042000000000000000000000000000000002100764C764C53402C282C286000
      800080000626062606268018801880148566C66A856685662039271827185038
      50384F3450384F346F346F346F346F34FF7F0000000000000000000000000000
      00000000186318630000FF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7F
      FF7FFF7F00001042104200000000000000000000000000000000E07F1863E07F
      1863E07F1863E07F00000000E07F000000000000E07F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000186300000000186300000000000000001863000000000000
      000000000000000000000000000000000000210055485548000000009A586000
      80006000000000000626801480188018C66EC66AC66AC66A2039000000000000
      00000000000000009A589A589A589A58FF7F0000000000000000000000000000
      0000186318630000FF7FFF7FFF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7F
      FF7FFF7FFF7F000010421042000000000000000000000000E07F0000E07F1863
      E07F1863E07F1863E07F000018630000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018630000186318631863
      1863000000000000000000000000000000002100544454443967FF7FFF7F6000
      60008000472E472E472E401080188018E772C66AE66EC66A2039EF3DEF3DFF7F
      EF3DFF7FFF7FFF7FFF7FFF7FFF7FEF3DFF7F0000000000000000000000000000
      186318630000FF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03
      FF7F1042FF7FFF7F0000104210420000000000000000E07F0000E07F0000E07F
      1863E07F1863E07F18630000E07F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001863
      0000000000000000000018630000000000001863186300001863000000000000
      1863104200000000000000000000000000002100534053403967FF7FFF7F4000
      600060006832472E472E6010601060100773E772C66AE7722039EF3DEF3DFF7F
      EF3DFF7FFF7FFF7FFF7FFF7FFF7FEF3DFF7F0000000000000000000000001863
      18630000FF7FFF7FFF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7F
      000218631042FF7FFF7F00001042000000000000E07F1863E07F0000E07F0000
      E07F1863E07F1863E07F000018630000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100200001863
      0000000000000000000000000000000018630000000018630000000000000000
      00001863104200001042000000000000000021005240513C3967FF7FFF7F6000
      6000600089328932893260106010601028772877077328772039EF3DEF3DFF7F
      EF3DFF7FFF7FFF7FFF7FFF7FFF7FEF3DFF7F0000000000000000000018631863
      0000FF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7F0002
      00020002FF7FFF7FFF7FFF7F00000000000000001863E07F1863E07F0000E07F
      0000E07F1863E07F00001863E07F00000000000000000000FF03000000000000
      FF03000000000000000000000000000000000000000000001002100200001863
      1863000000000000000000000000000000000000000000000000000000000000
      0000000000001863186300001042000000002100513C52405A6BFF7FFF7F4000
      60006000A936CA3A893260106010400C48774877487728772039FF7FFF7FFF7F
      EF3DFF7FFF7FFF7FFF7FFF7FFF7FEF3DFF7F0000000000000000186318630000
      FF7FFF7FFF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7F1042E07F
      0002FF7FFF03FF7FFF7FFF7FFF7F000000000000E07F1863E07F1863E07F0000
      E07F0000E07F0000E07F00000000000000000000000000000000FF0300000000
      000000000000000000000000000000000000000000000000FF03100210020000
      1863186300000000000000000000000000000000000000000000000000000000
      00000000E07FE07F00001042104210420000210050384F343967EF3DEF3D6000
      60004000CA3ACA3ACA3A400C20082008697B697B697B48772039EF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DFF7F000000000000186318630000FF7F
      FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7F1042E07F1042
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000E07F1863E07F1863E07F
      0000E07F00001863000000000000000000000000FF03000000000000FF030000
      00000000FF03000000000000000000000000000010020000FF03100210021002
      0000186318630000000000000000000000000000000000000000000010420000
      0000E07FE07F000010421863104210421042210050384F343967FF7FFF7F6000
      60006000EA3EEA3ECA3AE0282008400C20392039203920392039FF7FFF7FFF7F
      EF3DFF7FFF7FFF7FFF7FFF7FFF7FEF3DFF7F00000000000018630000FF7FFF7F
      FF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7F1042E07F1042FF7F
      FF03FF7FFF7FFF7FFF7F00000000000000000000E07F1863E07F0000E07F0000
      E07F000018630000E07F000000000000000000000000FF03000000000000FF03
      000000000000FF03000000000000000000001002100210020000FF0310021002
      1002000000000000000000000000000000000000000000000000000000000000
      E07FE07F000010421863104218631042104221004E2C4E2C3967FF7FFF7F4000
      400040000B430B3FEB3EEB3E8419EF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      EF3DFF7FFF7FFF7FFF7FFF7FFF7FEF3DFF7F0000000000000000FF7FFF7FFF7F
      FF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7F1042E07F1042FF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000E07F1863E07F00001863
      18631863E07F00000000000000000000FF03000000000000FF03000000000000
      FF030000000000000000000000000000000010021002100210020000FF031002
      100210020000000000000000000000000000000000000000000000000000E07F
      E07F0000186318631042186310421863104221002C284E2C3967EF3DEF3D4000
      400040002C430B3F2C430B3F8419E71C2821EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DFF7F000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF03FF7FFF7FFF7FFF03FF7FFF7FFF7F1042E07F1042FF7FFF03FF7F
      FF7FFF7FFF7F0000000000000000000000000000E07F0000E07F000018631863
      E07F00000000000000000000000000000000FF03000000000000FF0300000000
      0000FF030000000000000000000000000000100210021002100210020000FF03
      FF03000000000000000000000000000000000000000000000000000010420000
      00000000186318631863104218631042186321002C282B243967FF7FFF7F4000
      400040006D4B4D4B2C472C478419EF3DEF3DFF7FFF7FFF7F0000000000000000
      00000000000000009A589A589A589A58FF7F0000000000000000FF7F0000FF7F
      FF7FFF7FFF7FFF03FF7FFF7FFF7FFF03FF7F1042E07F1042FF7FFF7FFF7FFF7F
      FF7FFF7F000000000000000000000000000000000000E07F0000000000001863
      000000000000000000000000FF03000000000000FF03000000000000FF030000
      0000000000000000000000000000000000001002100210021002100210020000
      0000000000000000000000000000000000000000000000000000000000001042
      00001863000018631863186310421863000021002C282B245A6BFF7FFF7F2000
      400040004D4B6D4B4D4B4D4B8419EF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF03FF7FFF7FFF7F1042E07F1042FF7FFF03FF7FFF7FFF7F
      FF7F000000000000000000000000000000000000E07F00000000000000000000
      E07F000000000000000000000000FF03000000000000FF03000000000000FF03
      0000000000000000000000000000000000001002100210021002100210020000
      0000000000000000000000000000000000000000000000000000000000000000
      18630000186300001863186318631042000021002A202B243967FF7FFF7F2000
      20002000AE538D4F8D4F8E4F8419EF3DEF3DFF7FFF7FFF7FFF7F396728218C31
      EF3DEF3D2821FF7F4A29396728213967FF7F000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF03FF7F1042E07F1042FF7FFF7FFF7FFF7FFF7FFF7F
      00000000000000000000000000000000000000000000E07F0000000000000000
      00000000E07F00000000000000000000FF03000000000000FF03000000000000
      0000000000000000000000000000000000001002100210021002100210020000
      0000000000000000000000000000000000000000000000000000000000000000
      00001863000018630000186318631863000021002A2029205A6BFF7FFF7F2000
      20002000AE53AE538E4F8D4F8319FF7FFF7FFF7FFF7FFF7FFF7FFF7F9A58F75E
      FF7FFF7F734E524A3967D5562821F75EFF7F0000000000000000000000000000
      FF7F0000FF7FFF7FFF7FFF7F1042E07F1042FF7FFF03FF7FFF7FFF7FFF7F0000
      0000000000000000000000000000000000000000E07F00000000000000000000
      0000000000000000E07F0000000000000000FF03000000000000FF0300000000
      0000000000000000000000000000000000000000100210021002100200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001863000018630000186300000000210029202A203967EF3DB4520000
      20002000CF57CF57CF538E4F8319EF3DEF3DEF3DEF3DEF3DFF7FFF7F0000F75E
      FF7FFF7FFF7FFF7FFF7FFF7FD556FF7FFF7F0000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7F00001042FF7FFF7FFF7FFF7FFF7FFF7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0300000000000000000000
      0000000000000000000000000000000000000000100210021002100200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000186300001863000018630000000000002100281C29205A6BFF7FFF7FA108
      2000200084198319831984198419FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75E
      FF7FFF7FFF7FFF7FFF7FFF7FD5567B6FFF7F0000000000000000000000000000
      00000000FF7FFF7FFF7FFF7FFF7FFF7FFF03FF7FFF7FFF7FFF7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF030000000000000000
      0000000000000000000000000000000000000000100210021002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000018630000186300000000000000002100281C281C3967FF7FFF7FFF7F
      FF7FFF7FFF7FEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000524A
      F75EF75EFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      000000000000FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010021002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001863000018630000000000002100281C27185A6BEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DFF7FFF7F9A58F75E
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010020000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000186300000000000000002100261826183967FF7FFF7FFF7F
      FF7FFF7FFF7FEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75E
      FF7FFF7F734EFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      00000000000000000000FF7FFF7FFF7FFF7FFF7F000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010020000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001863000000000000000000002100261826183967396739673967
      39675A6B39675A6B39675A6B396739675A6B39675A6B3967FF7FFF7F0000F75E
      FF7FFF7FC418FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      000000000000000000000000FF7F0000FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002100261826182618261826182618
      2618271827182718281C281C281C281C281C292029202A20FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000FF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002100051005102618261826182618
      261826182718271827182718281C281C281C281C281C2920FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200100000100010000000000001200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FFFFFFFFFFFFFF87
      FFFFFFFF000000008000007FFFFFFE0300000000000000000000007FFE0FFC01
      00000000000000000000007FFC07F03000000000000000000000007FF803C078
      00000000000000000000007FF001007800000000000000000000007FE0000030
      00000000000000000000007FC000060100000000000000000000007FC0000301
      00000000000000000000007F8000018100000000000000000000003F800000E1
      00000000000000000000001F000000E100000000000000000000000F000000E1
      000000000000000000000007000000E1000000000000000000000003000000E1
      0000000000000000FC000001000000610000000000000000F800000300000021
      0000000000000000FC000001800000010000000000000000FE000003C0000001
      0000000000000000FF000001F80000010000000000000000FF800003FF000001
      0000000000000000FFC00007FFC000010000000000000000FFE0000FFFF00001
      0000000000000000FFF0001FFFF800010000000100000000FFF8003FFFFC0001
      0000000300000000FFFC007FFFFE00018003FFFF00000000FFFE00FFFFFF8001
      C007FFFF00000000FFFF01FFFFFFC001E00FFFFF00000000FFFF83FFFFFFE001
      FFFFFFFF00000000FFFFC7FFFFFFF001FFFFFFFF00000000FFFFEFFFFFFFF811
      FFFFFFFF00000000FFFFFFFFFFFFFC7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFE3E03F
      FFFFFFFFFFFFFF07FFFFFFFFFFC1F07FFFFFF3FFFFFFFE07FFCFFFFFFF80F07F
      FF00001FFFFFFC07FFC3FFFFFF00707FFF00001FFFFFF807FF80FFFFFE00303F
      FF00001FFFFFF007FF803FFFFC00101FFF00001FFFFFE00FFF000FFFF800000F
      FF00001FFFFFC01FFF0003FFF0000007FF00001FFFFF803FFE0000FFE0000007
      FF00001FFFFF007FFE00003FC0000007FF00001FFFFE00FFFC00000F80000007
      FE00001FFFFC01FFFC00000700000007FC00001FFFF803FFF800000700000003
      F800001FFFF007FFF800000700000001F800001FFFE00FFFF000000700000000
      F800001FFE001FFFF000000700000001F800001FFC003FFFE000000700000003
      F800001FF0007FFFE000000700000007FC00001FF000FFFFF00000070800000F
      FE00001FE001FFFFF00000070C00001FFF00001FE181FFFFF00000070E00003F
      FF00001FE3C1FFFFF82000071F00007FFF00001FE781FFFFFE7800073F8800FF
      FF00003FEF83FFFFFFFE00077FDC01FFFF00007FFF07FFFFFFFF8087FFFE03FF
      FF0000FFFE0FFFFFFFFFE1E7FFFF07FFFFFFFFFFFE1FFFFFFFFFF9FFFFFF8FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF007F80001FFFE003C1FFFFFFFFFFFFFC001F80000FFF000000F
      FFFFFFFFFFFF0000F800007FE0000007FFFFFFFFC7FC0000F800003FC0000003
      FFFFFFFFC3F00001F800001FC0000003FE00003FC1C00007F800001FC0000001
      FC00001FE000001FF800001FC0000001FC00001FF000003FF800001F80000001
      FC00001FE000003FF800001F00000001F800001F8000003FF800001F00000001
      F800001F8000003FF800001F00000001F800001F8000003FF800001F00000001
      F800001F8000003FF800001F80000003F000001F8000003FF800001FC0000003
      F000001F8000003FF800001FC0000007F000001F8000003FF800001FE000000F
      F000000F8000003FF800001FE000001FF800001F8000003FF800001FE00000FF
      FC00001F8000003FF800001FE00000FFFC00001F8000003FF800001FE000007F
      FC00001F8000007FF800001FF000003FFC00001F800000FFF800001FF800001F
      FC00003F800000FFF800001FFC00001FFE0007FF800001FFF800001FFC00001F
      FF000FFF800001FFF800001FFC00001FFF801FFF800007FFFC00001FFE00003F
      FFFE3FFF80031FFFFE00001FFF00007FFFFF7FFF800FFFFFFF00001FFFE003FF
      FFFFFFFF803FFFFFFF80001FFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F
      FFFFFFFFFFFFFFFFF800001FFFFFF03FF00007FFFFFFFFFFF000000FFFFFC01F
      E00003FFFFF80001F000000FF830000FE00001FFFFF80001F000000FF8300007
      C00000FFFFF80001F000000FF8300003C000007FFFF80001F000000FF8000001
      8000003FFFF80001F000000FFC0000000000001FFFF80001F000000FFC000001
      0000000FFFF80001F000000FF800000700000007E1F80001F000000FF800000F
      80000003C0F80001F000000F1800000FC000000180C00001F000000F0000000F
      E000000000000001F000000F0000000FE000000000000003F000000F00000007
      E000000000000F07F000000F00000007E000000000010F8FF000000F80000007
      F000000080000FFFF000000FE0000003F8000000C0000FFFF000000FE0000003
      FC000000FC001FFFF000000FC0000003FE000000FF003FFFF000000FC0000003
      FF000000FF807FFFF000000FC0000001FF800000FFC0FFFFF000000FC0000001
      FFC00000FF8FFFFFF000000F80000001FFE00001FF1FFFFFF000000F80000001
      FFF00001FE3FFFFFF000000F80000003FFF80001FC7FFFFFF000000F8C000003
      FFFC0003F8FFFFFFF000000FBC000007FFFE0007F9FFFFFFF800001FFC000C1F
      FFFFC7FFFFFFFFFFFFF007FFFC003FFFFFFFC7FFFFFFFFFFFFF007FFFC20FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFCE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003
      FFFFFFFFFFFF1FFFFFF8FFFFF8000003FFFFFFFFFFFE0FFFFFF03FFFE0000003
      F8000000FFFC07FFFFE00FFFE0000003F8FFFFFFFFF803FFFFC003FFE0000003
      FC3FFFFFFFF001FFFF8000FFE0000003FE003FFFFFE000FFFF00003FE0000003
      FF001FFFFFE0007FFE00000FE0000003FF800FFFFFC0003FFC00000FE0000003
      FFC007FFFF80001FF800000FE0000003FFE003FFFF00000FF000000FE0000003
      FFF000FFFF000007F000000FE0000003FFF8007FFE000003F0000001E0000003
      FFFC003FFC000001F0000000E0000003FFFE000FF8000001F0000001E0000003
      FFFF0007F8000001F0000003E0000003FFFF8003F0000003F0000007E0000003
      FFFF8001E0000007F000000FE0000003FFFFC000C000000FE000000FE0000003
      FFFFE000C000001FC000000FE0000003FFFFF0008000003F80000007E0000003
      FFFFF0000000007F70000003E0000003FFFFF800000000FFF0000001E0000003
      FFFFFC00800000FFE0000000E0000003FFFFFE00E00000FFE0000001E0000003
      FFFFFF00F800007FC0000007E0000003FFFFFF80FC00067F8000001FE0000003
      FFFFFFC0FC000E3FC000001FE0000003FFFFFFE0FC000F1FF800001FE0000003
      FFFFFFF0FE201F1FF800001FE0000003FFFFFFF8FE783F1FFFF0007FE000000F
      FFFFFFFCFFFE7FFFFFF8007FE000000F00000000FFFFFFFFFFFFFC1F00000000
      00000000FFFFFFFFFFFFF0070000000000000000FEFDFBF7FFFFC00100000000
      00000000FFFFFFFFFFFF00006000000E00000000C0000000FFFC00007E00007E
      00000000DFFFFFFFFFF000017F8001FE00000000DC183060FFC000077FC003FE
      0000000058102040FF00001F7FC003FE00000000D0102040FC00003F7FC001FE
      00000000D0102040F000003F7F8001FE00000000D0102040C000003F7F0000FE
      00000000D80020408000003F7E0000FE00000000D80020408000003F7E00007E
      00000000D80020408000003F7C00007E00000000581020408000003F7C00003E
      00000000D81020008000003F7C00003E00000000D81020008000003F7C00003E
      00000000D81020008000003F7C00003E00000000D81000408000003F7C00003E
      00000000D81000408000003F7C00003E00000000D81000408000003F7E00007E
      00000000581020418000007F7E00007E00000000D810207F800000FF7E00007E
      00000000D810607F800000FF7F0000FE00000000D81FE07F800001FF7F0001FE
      00000000D81FE07F800001FF7FC003FE00000000D81FE0FF800007FF7FF807FE
      00000000D83FFFFF80031FFF7FFC3FFE000000005FFFFFFF800FFFFF7FFFFFFE
      00000000DFFFFFFF803FFFFF7FFFFFFE00000000FFFFFFFFE0FFFFFF7FFFFFFE
      00000000FFFFFFFFE3FFFFFF00000000FFFFFFFFF0000001E000000FFFFFFFFF
      FFFFE7FFF0000001C000000FFC01FFFFFFFFC7FFF0000001DFDFDFCFE0007FFF
      FFFFC3FFF0000001DFDFDFCFE000FFFFFFFF83FFF0000001DFDFDFCFF001FFFF
      FFFF81FFF0000001C000000FF003FFFFFFFF11FFF0000001DFDF1FCFF803FFFF
      FFFE18FFF0000001DFDF07CFF800FFFFFFF818FFF0000001DFDF83CFF000003F
      FFF0387FF0000001C000000FE000000FFFF03C7F00000001DFDFD0CFE000001F
      8000003F00000001C000C84FC000003FBE00E81F00000001C000540FC000007F
      BE006E0F0000000180000207C000007FBE006E0F0000000180005D0BC000001F
      800000070000000180005E8DC000000FBE80EF030000000180005F45C000000F
      BE83EF830000000180000021C000000FBE03EF810000000180005FD1E0000007
      800000010000000180005FC9E0000003BE81EFA10000000180005FC2F0000007
      BEC3EFBF000000078000000CF8000007BEFBEFBF0000001F80005FCFFE00000F
      8000003F0000001F80005FCFFFF8000FBEFBEFBF0000001F80005FCFFFF80007
      BEFBEFBF0000001F8000001FFFFC0003BEFBEFBF0000001F80007FFFFFFC0003
      8000003F0000001F87F87FFFFFFE00038000003F0000001F80007FFFFFFF0007
      8000003F0000001F80007FFFFFFFC01F8000003F0000001F8000FFFFFFFFFFFF
      FFFFFFFF0000007FC001FFFFFFFFFFFFFFFFDFFFFFFFF77FFFFFFFFF80000000
      FFFF8FFFFFFFF07FFC7FFE3F00000000FFFF07FFFFE3E73FFBFFFFDF00000000
      FFFE03FFFFC1F77FF73FFCEF00000000FFFC01FFFF92F77FFEFC1F7F00000000
      FFF800FFFF22777FFFF10FFF00000000FFF0007FFE53B7BFFFC483FF00000000
      FFE0003FFCA2D7DFFF1201FF00000000FFC0001FF853A7EFFEC920FF00000000
      FF80000FF022E7F7FE64707F00000000FF000007E013A7F7FE81E07F00000000
      FE000003C802DB17FDFFC07F00000000FC0000019403BB67F1F00E0F00000000
      F80000010A027D77E1F61F0300000000F00000010502EC7BC0FBFF8100000000
      E0000001028DF47D807DFF0000000000C0000003401BBBBE0000020000000000
      C00000070827DDDD003FF80000000000C000000F402EEEFB003FF80000000000
      8000001F20DF7777007FF88000000000A000003F49BBBBEF00FFF94100000000
      B000007F2CDDDDDF01FFFCA100000000C80000FF4EAEEFBF01FFFD5100000000
      F40001FF1F67777F83FFFEAB00000000F60003FF3FABBEFF83FFFE5700000000
      F90007FF7FDDDDFF87FFFF2F00000000FE800FFFFFFEFBFFC7FFFF5700000000
      FEC01FFFFFFF77FFCFFFFFAF00000000FF203FFFFFFFAFFFCFFFFF9F00000000
      FFD07FFFFFFFDFFFFFFFFFFF00000000FFD8FFFFFFFFFFFFFFFFFFFF00000000
      FFE5FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ADOConn: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=;Persist Security Info=True;User ID' +
      '=sa;Initial Catalog=PSAM;Data Source=10.10.10.131'
    ConnectionTimeout = 10
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 660
    Top = 4
  end
  object ImageBtn: TImageList
    ShareImages = True
    Left = 604
    Top = 4
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001001000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7739673967DE7B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7F8E2DCE391352EF3DDE7B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7F6D2DEA7EC7653452CF39
      DE7B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7F9C73F75E6B310A7FC7653452
      CF39DE7B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F504190D5C199E25502D0A7FC765
      3556734E7B6FD65AD75A7B6FFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018097D21BF2DFF31BB21F03D0A7F
      0D566F25D435DA4A3C5B143EF03DDE7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001509BF291F325F3A9C3A5F537625
      F339DD4AFF67FF6BFF6FFF773C63CE39FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B6F39113F3A370D1F4B3F4B5715
      7946FF67DF5FFF6FFF77FF7FFF7BF5397B6F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FD65A8B00203481402034F00C
      5E5B9F57BF5FFF6BFF77FF77FF6F5D5BB5560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000082121040000E25002550251842C
      7E5F7F57BF5BFF67FF6BFF6FFF6B5D5794520000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004208630CE244635D636163612351
      DB4EFF77BF679F5BBF5FDF5FFF6758425A6B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008410A514434DC46DE571C56DA469
      2C25DF77FF7F9F5F7F53DF635F574B29FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A514E71C400C667E667E667E257A
      ED498F2DBA4E9E5B7F5BFD526C2DBD7700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000210429254A29630C813043694351
      3967DE7B5A6BD65AD65A7B6FFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018630821AD353146F75EAD352104
      DE7B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FF75E630CEF3D6B2D21047B6F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010001F7C1040
      000000001863FF7FFF7FFF7F1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001700FF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100010401F7C
      10400000FF7FFF7FFF7FFF7F1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000170017001700FF7F00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010001F7C1040
      1F7C0000FF7FFF7FFF7FFF7F1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1700170017001700FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100010401F7C
      10400000FF7FFF03FF7FFF031000000000000000FF7F00000000000000000000
      0000000000000000FF7F00000000000000000000000000000000000000001700
      17001700FF7F17001700FF7F0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010001F7C1040
      1F7C0000FF7FFF7FFF7FFF7F1000000000000000FF7F00000000000000000000
      0000000000000000FF7F000000000000000000000000FF7FFF7FFF7F17001700
      1700FF7F0000000017001700FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100010401F7C
      10400000FF7FFF03FF7FFF031000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F1042104210421700
      FF7FFF7F0000000000001700FF7F000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010001F7C1040
      1F7C0000FF7FFF7FFF7FFF7F10000000000000000000FF7F0000000000000000
      00000000FF7F00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000001700FF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100010401F7C
      10400000FF7FFF03FF7FFF0310000000000000000000FF7F0000000000000000
      00000000FF7F00000000000000000000000000000000FF7F1042104210421042
      1042FF7F000000000000000000001700FF7F0000000000000000000000000000
      000000000000000000000000000000000000000000000000000010001F7C1040
      1F7C0000FF03FF7FFF03FF7F10000000000000000000FF7F0000000000000000
      00000000FF7F00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000017000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100010401F7C
      10400000FF7FFF03FF7FFF031000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F1042104200000000
      0000FF7F00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010001F7C1040
      1F7C0000FF03FF7FFF03FF7F100000000000000000000000FF7F000000000000
      00000000FF7F00000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100010001000
      1000100010001000100010001000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F1042104200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7F00000000
      000000000000FF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      E003E003E003E003000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E00000000000000000000000000000000
      00000000000000000000000000000000FF7F000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF7FFF7F0000FF7F00000000FF7F00000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000000000000000FF7F0000
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      000000000000000000000000000000000000FF0300000000E07FFF7FE07FFF7F
      E07F0000FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      0000000000000000000000000000FF7F00000000007C007C007C007C007C007C
      000000000000000000000000000000000000FF030000E07FFF7FE07FFF7F0000
      00000000FF7FFF7FFF7FFF7F0000FF7F00000000FF7FF75EFF7FF75EFF7FF75E
      FF7FF75EFF7FF75EFF7FF75EFF7FF75E0000000000000000000000000000FF7F
      000000000000000000000000FF7F00000000000000000000007C007C00000000
      000000000000000000000000000000000000FF030000FF7FE07FFF7FE07FFF7F
      E07FFF7F0000FF7F00000000FF7FFF7F00000000F75EFF7FF75EFF7FF75EFF7F
      F75EFF7FF75EFF7FF75EFF7F007CFF7F00000000000000000000000000000000
      FF7F00000000000000000000FF7F00000000000000000000007C007C00000000
      000000000000000000000000000000000000FF030000E07FFF7FE07FFF7F0000
      0000000000000000E07F0000FF7FFF7F00000000FF7FF75EFF7FF75EFF7FF75E
      FF7FF75EFF7FF75EFF7FF75EFF7FF75E00000000000000000000000000000000
      0000FF7F000000000000FF7F0000000000000000000000000000000000000000
      000000000000000000000000000000000000FF030000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7F0000FF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      1F0000000000000000000000000000000000FF030000E07FFF7F000000000000
      0000000000000000FF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      000000000000FF7F000000000000000000000000000000000000000000000000
      1F001F000000000000000000000000000000000000000000E07FFF7FE07F0000
      0000E07F0000FF7FFF7F00000000FF7F00000000000000000000FF7F00000000
      00000000FF7F0000FF7F00000000000000000000000000000000000000000000
      0000000000000000FF7F000000000000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C000000000000000000000000000000000000
      E07F0000FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000FF7F00000000FF7F000000000000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C00000000000000000000000000000000E07F
      0000FF7FFF7FFF7FFF7F00000000000000000000000000000000FF7F00000000
      FF7F000000000000000000000000000000000000000000000000000000000000
      FF7F00000000000000000000FF7F000000000000000000000000000000000000
      1F001F00000000000000000000000000000000000000000000000000E07F0000
      FF7FFF7F00000000FF7F0000FF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7F0000FF7FFF7F00000000000000000000000000000000000000000000FF7F
      0000000000000000000000000000FF7F00000000000000000000000000000000
      1F00000000000000000000000000000000000000000000000000E07F00000000
      FF7FFF7FFF7FFF7FFF7F0000FF7F000000000000000000000000FF7F0000F75E
      FF7F0000FF7F0000000000000000000000000000000000000000FF7F00000000
      00000000000000000000000000000000FF7F0000000000000000000000000000
      000000000000000000000000000000000000000000000000007C000000000000
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C3FFFFFFFFFF000081FFFFFFFFFF0000
      80FFFFFFFEFF0000007FF83FFC7F00000003F83FF83F00000001F83FF01F0000
      0000F83FE00F000000008003C00700000000C007800300000000E00FF01F0000
      0000F01FF01F00000000F83FF01F00000001FC7FF01F00000003FEFFFFFF0000
      00FFFFFFFFFF000001FFFFFFFFFF0000FFFFFFFFF003FFFFFF9FFFFFF003FFFF
      FF0FC007F00307C1FE0FE7E7F00307C18007F3F7F00307C18023F9F7F0030101
      8033FCFFF00300018039FE7FF0030201803CFF3FF0030201803EFE7FF0038003
      873FFCFFF003C107803FF9F7F003C107857FF3F7FFFFE38F80FFE7E7FC0FE38F
      81FFC007FC0FE38FFFFFFFFFFC0FFFFFFFFFFC008001FFFFE7F8FC000000FFFC
      E7F820000000F3FF81FF00000000E1F981FC00000000E1F3E7FC00000000F0E3
      E7FF00000000F847FFFC00000000FC0FFEFC0000E007FE1FFE7F0000E007FC0F
      8013E000E007F84F8013F800E007E0E3FE7FF000E00FC1F1FEF8E001E01FC7F8
      FFF8C403E03FFFFFFFFFEC07E07FFFFF00000000000000000000000000000000
      000000000000}
  end
  object ADOTmp: TADOQuery
    AutoCalcFields = False
    CacheSize = 100
    Connection = ADOConn
    CommandTimeout = 0
    Parameters = <>
    Left = 712
    Top = 4
  end
  object DSIHead: TDataSource
    DataSet = IHeadQry
    Left = 105
    Top = 184
  end
  object iListQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSIHead
    Parameters = <
      item
        Name = 'iSNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select L.cPrdtID,P.cName,P.cUnit,'
      '       L.nQty,L.nPrice,Amt=L.nQty * L.nPrice'
      'From StockList L,PrdtEnCode P'
      'Where L.cPrdtID = P.cPrdtID'
      '      And L.iSNo = :iSNo'
      '      ')
    Left = 44
    Top = 232
  end
  object DSIList: TDataSource
    DataSet = iListQry
    Left = 105
    Top = 232
  end
  object TypeQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    AfterScroll = IHeadQryAfterScroll
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select cTypeID,cTypeAbbr From PrdtType '
      '')
    Left = 720
    Top = 225
  end
  object DSType: TDataSource
    DataSet = TypeQry
    Left = 760
    Top = 225
  end
  object BrandQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    AfterScroll = IHeadQryAfterScroll
    CommandTimeout = 0
    DataSource = DSType
    Parameters = <
      item
        Name = 'cTypeID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'Select cTypeID,cBrandID,cBrandAbbr'
      'From  PrdtBrand'
      'Where cTypeID = :cTypeID'
      'Order By cBrandID'
      '')
    Left = 720
    Top = 277
  end
  object DSBrand: TDataSource
    DataSet = BrandQry
    Left = 760
    Top = 277
  end
  object PrdtQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSBrand
    EnableBCD = False
    Parameters = <
      item
        Name = 'cTypeID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'cBrandID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'PrdtID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = '%'
      end>
    SQL.Strings = (
      'Select cPrdtID,cName,cUnit'
      'From  PrdtEnCode'
      'Where cTypeID = :cTypeID And cBrandID = :cBrandID '
      '      And cParentID is Null'
      '      And cPrdtID Like :PrdtID'
      'Order By cPrdtID'
      '')
    Left = 724
    Top = 325
  end
  object dsPrdt: TDataSource
    DataSet = PrdtQry
    Left = 760
    Top = 325
  end
  object DSArea: TDataSource
    DataSet = AreaQry
    Left = 760
    Top = 181
  end
  object AreaQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select * From AreaInfo'
      '')
    Left = 716
    Top = 177
  end
  object DSPro: TDataSource
    DataSet = ProInfoQry
    Left = 756
    Top = 137
  end
  object ProInfoQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
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
      end
      item
        Name = 'cProName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = '%'
      end>
    SQL.Strings = (
      'Select * '
      'From ProvInfo'
      'Where iAreaID = :iAreaID And cProName Like :cProName'
      '')
    Left = 712
    Top = 133
  end
  object DSCust: TDataSource
    DataSet = CustInfoQry
    Left = 664
    Top = 237
  end
  object CustInfoQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
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
      end
      item
        Name = 'cCustName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = '%'
      end>
    SQL.Strings = (
      'Select * '
      'From CustInfo'
      'Where iAreaID = :iAreaID And cCustName Like :cCustName'
      '')
    Left = 616
    Top = 237
  end
  object DSStaff: TDataSource
    DataSet = StaffQry
    Left = 660
    Top = 189
  end
  object StaffQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSArea
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'From StaffInfo'
      '')
    Left = 612
    Top = 189
    object StaffQrycStaffID: TStringField
      FieldName = 'cStaffID'
      FixedChar = True
      Size = 7
    end
    object StaffQrycName: TStringField
      FieldName = 'cName'
      Size = 10
    end
    object StaffQryiSex: TBooleanField
      FieldName = 'iSex'
      OnGetText = StaffQryiSexGetText
    end
    object StaffQrycTel: TStringField
      FieldName = 'cTel'
      Size = 100
    end
    object StaffQrycEmail: TStringField
      FieldName = 'cEmail'
      Size = 30
    end
    object StaffQrycAddr: TStringField
      FieldName = 'cAddr'
      Size = 120
    end
    object StaffQrycIDNo: TStringField
      FieldName = 'cIDNo'
    end
  end
  object DSIRHead: TDataSource
    DataSet = IRHeadQry
    Left = 105
    Top = 280
  end
  object IRHeadQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    AfterScroll = IHeadQryAfterScroll
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'sDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'eDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'cProName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'cSN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'cOprName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cStkName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cPrdtName'
        DataType = ftString
        Size = 100
        Value = '%'
      end>
    SQL.Strings = (
      'Select H.*,K.cStkName,OprName = V.cName, P.cProName'
      'From unStockHead H left join ProvInfo P on H.cProID = P.cProID'
      '                   left join V_OprList V on H.cOprID = V.cOprID,'
      '     StkInfo K'
      'Where H.dHapdDate between :sDate And :eDate'
      '      And H.iStkID = K.iStkID'
      '      And P.cProName Like :cProName'
      '      And H.cSN Like :cSN'
      '      And isNull(V.cName,'#39#39') Like :cOprName'
      '      And K.cStkName Like :cStkName'
      '      And H.iSNo In'
      '            (Select iSNo'
      '                    From unStockList S,PrdtEnCode E'
      
        '                         Where s.cPrdtID = E.cPrdtID And e.cName' +
        ' Like :cPrdtName) '
      '')
    Left = 44
    Top = 280
  end
  object DSIRList: TDataSource
    DataSet = IRListQry
    Left = 349
    Top = 184
  end
  object IRListQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSIRHead
    Parameters = <
      item
        Name = 'iSNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select L.cPrdtID,P.cName,P.cUnit,'
      '       L.nQty,L.nPrice,Amt=L.nQty * L.nPrice'
      'From unStockList L,PrdtEnCode P'
      'Where L.cPrdtID = P.cPrdtID'
      '      And L.iSNo = :iSNo'
      '      ')
    Left = 288
    Top = 184
  end
  object DSOHead: TDataSource
    DataSet = OHeadQry
    Left = 349
    Top = 232
  end
  object OHeadQry: TADOQuery
    AutoCalcFields = False
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    AfterScroll = IHeadQryAfterScroll
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <
      item
        Name = 'sDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'eDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'cCustName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'cStaffName'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cSN'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cStkName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cOprName'
        Size = -1
        Value = Null
      end
      item
        Name = 'cPrdtName'
        DataType = ftString
        Size = 100
        Value = '%'
      end>
    SQL.Strings = (
      'Select H.*,K.cStkName,P.cCustName, S.cName , OprName = V.cName'
      '  From SaleHead H left join CustInfo P on H.cCustID = P.cCustID'
      '                left join StaffInfo S on H.cStaffID = S.cStaffID'
      '                left join V_OprList V on H.cOprID = V.cOprID,'
      '       StkInfo K'
      '  Where H.dHapdDate between :sDate And :eDate'
      '      And H.iStkID = K.iStkID'
      '      And P.cCustName Like :cCustName'
      '      And isNull(S.cName,'#39#39') Like :cStaffName'
      '      And H.cSN Like :cSN'
      '      And K.cStkName Like :cStkName'
      '      And isNull(V.cName,'#39#39') Like :cOprName'
      '      And H.iSNo In'
      '            (Select iSNo'
      '                    From SaleList S,PrdtEnCode E'
      
        '                         Where s.cPrdtID = E.cPrdtID And e.cName' +
        ' Like :cPrdtName) '
      '')
    Left = 288
    Top = 232
  end
  object DSOList: TDataSource
    DataSet = OListQry
    Left = 349
    Top = 280
  end
  object OListQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSOHead
    Parameters = <
      item
        Name = 'iSNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select L.cPrdtID,P.cName,P.cUnit,'
      '       L.nQty,L.nPrice,Amt=L.nQty * L.nPrice'
      'From SaleList L,PrdtEnCode P'
      'Where L.cPrdtID = P.cPrdtID'
      '      And L.iSNo = :iSNo'
      '      ')
    Left = 288
    Top = 280
  end
  object DSORHead: TDataSource
    DataSet = ORHeadQry
    Left = 227
    Top = 184
  end
  object ORHeadQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    AfterScroll = IHeadQryAfterScroll
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'sDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'eDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'cCustName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'cSN'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cOprName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cStkName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cPrdtName'
        DataType = ftString
        Size = 100
        Value = '%'
      end>
    SQL.Strings = (
      'Select H.*,K.cStkName,OprName = v.cName, P.cCustName'
      'From unSaleHead H left join CustInfo P on H.cCustID = P.cCustID'
      '                  left join V_OprList V on H.cOprID = V.cOprID,'
      '     StkInfo K'
      'Where H.dHapdDate between :sDate And :eDate'
      '      And H.iStkID = K.iStkID'
      '      And P.cCustName Like :cCustName'
      '      And H.cSN Like :cSN'
      '      And isNull(V.cName,'#39#39') Like :cOprName'
      '      And K.cStkName Like :cStkName'
      '      And H.iSNo In'
      '            (Select iSNo'
      '                    From UnSaleList S,PrdtEnCode E'
      
        '                         Where s.cPrdtID = E.cPrdtID And e.cName' +
        ' Like :cPrdtName) '
      ''
      '')
    Left = 166
    Top = 184
  end
  object ORListQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSORHead
    Parameters = <
      item
        Name = 'iSNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select L.cPrdtID,P.cName,P.cUnit,'
      '       L.nQty,L.nPrice,Amt=L.nQty * L.nPrice'
      'From unSaleList L,PrdtEnCode P'
      'Where L.cPrdtID = P.cPrdtID'
      '      And L.iSNo = :iSNo'
      '      ')
    Left = 166
    Top = 232
  end
  object DSORList: TDataSource
    DataSet = ORListQry
    Left = 227
    Top = 232
  end
  object DSMHead: TDataSource
    DataSet = MHeadQry
    Left = 227
    Top = 280
  end
  object MHeadQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    AfterScroll = IHeadQryAfterScroll
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'sDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'eDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'cSN'
        Size = 100
        Value = Null
      end
      item
        Name = 'cOprName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cPrdtName'
        DataType = ftString
        Size = 100
        Value = '%'
      end>
    SQL.Strings = (
      'Select H.*,'
      
        '       cOStkName = (Select cStkName From StkInfo Where H.iOStkID' +
        ' = iStkID),'
      
        '       cTStkName = (Select cStkName From StkInfo Where H.iTStkID' +
        ' = iStkID),'
      '       OprName = V.cName'
      'From MoveHead H left join V_OprList V on H.cOprID = V.cOprID'
      'Where H.dHapdDate between :sDate And :eDate'
      '      And H.cSN Like :cSN'
      '      And V.cName Like :cOprName'
      '      And H.iSNo In'
      '            (Select iSNo'
      '                    From MoveList S,PrdtEnCode E'
      
        '                         Where s.cPrdtID = E.cPrdtID And e.cName' +
        ' Like :cPrdtName) ')
    Left = 166
    Top = 280
  end
  object DSMList: TDataSource
    DataSet = MListQry
    Left = 472
    Top = 184
  end
  object MListQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSMHead
    Parameters = <
      item
        Name = 'iSNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select L.cPrdtID,P.cName,P.cUnit,'
      '       L.nQty,L.nPrice,Amt=L.nQty * L.nPrice'
      'From MoveList L,PrdtEnCode P'
      'Where L.cPrdtID = P.cPrdtID'
      '      And L.iSNo = :iSNo'
      '      ')
    Left = 410
    Top = 184
  end
  object DSChkHead: TDataSource
    DataSet = ChkHeadQry
    Left = 472
    Top = 232
  end
  object ChkHeadQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    AfterScroll = IHeadQryAfterScroll
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'sDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'eDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'cSN'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cOprName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cStkName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cPrdtName'
        DataType = ftString
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'Select H.*,K.cStkName,OprName = V.cName'
      'From CheckHead H left join V_OprList V on H.cOprID = V.cOprID,'
      '     StkInfo K'
      'Where H.dHapdDate between :sDate And :eDate'
      '      And H.iStkID = K.iStkID'
      '      And H.cSN Like :cSN'
      '      And isNull(V.cName,'#39#39') Like :cOprName'
      '      And K.cStkName Like :cStkName'
      '      And H.iSNo In'
      '            (Select iSNo'
      '                    From CheckList S,PrdtEnCode E'
      
        '                         Where s.cPrdtID = E.cPrdtID And e.cName' +
        ' Like :cPrdtName) ')
    Left = 410
    Top = 232
  end
  object DSChkList: TDataSource
    DataSet = ChkListQry
    Left = 472
    Top = 280
  end
  object ChkListQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSChkHead
    Parameters = <
      item
        Name = 'iSNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select L.cPrdtID,P.cName,P.cUnit,'
      '       L.nStkQty,L.nChkQty,nQty= L.nChkQty - L.nStkQty'
      'From CheckList L,PrdtEnCode P'
      'Where L.cPrdtID = P.cPrdtID'
      '      And L.iSNo = :iSNo'
      '      ')
    Left = 410
    Top = 280
  end
  object P_StatIList: TADOStoredProc
    CacheSize = 100
    Connection = ADOConn
    ExecuteOptions = [eoAsyncFetchNonBlocking]
    CommandTimeout = 0
    ProcedureName = 'P_iStockStat'
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
        Name = '@dBDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@dEDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@cProName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cStkName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cTypeAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cBrandAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 48
    Top = 328
  end
  object DStatI: TDataSource
    DataSet = P_StatIList
    Left = 100
    Top = 328
  end
  object DStatS: TDataSource
    DataSet = P_StatSList
    Left = 205
    Top = 328
  end
  object P_StatSList: TADOStoredProc
    CacheSize = 100
    Connection = ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_SaleStat'
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
        Name = '@dBDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@dEDate'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@cStkName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cTypeAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cBrandAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 153
    Top = 328
  end
  object DStatUni: TDataSource
    DataSet = P_StatUnIList
    Left = 310
    Top = 328
  end
  object P_StatUnIList: TADOStoredProc
    CacheSize = 100
    Connection = ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_unStockStat'
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
        Name = '@dBDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@dEDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@cProName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cStkName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cTypeAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cBrandAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 258
    Top = 328
  end
  object P_StatUnSList: TADOStoredProc
    AutoCalcFields = False
    CacheSize = 100
    Connection = ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_unSaleStat'
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
        Value = 0
      end
      item
        Name = '@dBDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@dEDate'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@cStkName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cTypeAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cBrandAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 363
    Top = 328
  end
  object DStatUnS: TDataSource
    DataSet = P_StatUnSList
    Left = 416
    Top = 328
  end
  object DStatM: TDataSource
    DataSet = P_StatMList
    Left = 572
    Top = 193
  end
  object P_StatMList: TADOStoredProc
    AutoCalcFields = False
    CacheSize = 100
    Connection = ADOConn
    CommandTimeout = 0
    ProcedureName = 'P_MoveStat'
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
        Name = '@dBDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@dEDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@cOStkName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cTStkName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cTypeAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cBrandAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@cName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 520
    Top = 192
  end
  object DStatC: TDataSource
    DataSet = P_StatCList
    Left = 576
    Top = 237
  end
  object P_StatCList: TADOStoredProc
    AutoCalcFields = False
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    ProcedureName = 'P_CheckStat'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Flag'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@dBDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37622d
      end
      item
        Name = '@dEDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37904d
      end
      item
        Name = '@cStkName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '%'
      end
      item
        Name = '@cTypeAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@cBrandAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@cName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '%'
      end>
    Left = 524
    Top = 236
  end
  object DStock: TDataSource
    DataSet = P_StatStock
    Left = 580
    Top = 285
  end
  object P_StatStock: TADOStoredProc
    AutoCalcFields = False
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    ProcedureName = 'P_StockList'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@dHapdDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37622d
      end
      item
        Name = '@cTypeAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@cBrandAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@cPrdtID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = '%'
      end
      item
        Name = '@cName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '%'
      end
      item
        Name = '@cStkName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '%'
      end>
    Left = 524
    Top = 288
  end
  object DSJXC: TDataSource
    DataSet = P_JXC
    Left = 584
    Top = 337
  end
  object P_JXC: TADOStoredProc
    AutoCalcFields = False
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    ProcedureName = 'P_JXCList'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@dSDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37895d
      end
      item
        Name = '@deDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37925d
      end
      item
        Name = '@cTypeAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@cBrandAbbr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@cName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '%'
      end>
    Left = 524
    Top = 339
  end
  object PrnEh: TPrintDBGridEh
    Options = [pghFitGridToPageWidth, pghRowAutoStretch]
    Page.BottomMargin = 2
    Page.LeftMargin = 2
    Page.RightMargin = 2
    Page.TopMargin = 2
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -29
    PageHeader.Font.Name = #40657#20307
    PageHeader.Font.Style = []
    PageHeader.LineType = pcltDoubleLine
    Units = MM
    Left = 160
    Top = 372
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673933365C64656666305C646566
      6C616E67313033335C6465666C616E676665323035327B5C666F6E7474626C7B
      5C66305C666E696C5C666368617273657430203F3F3B7D7D0D0A5C766965776B
      696E64345C7563315C706172645C6C616E67323035325C66305C667332322020
      0D0A5C7061722020200D0A5C706172207D0D0A00}
  end
  object PopFindMenu: TPopupMenu
    AutoHotkeys = maManual
    Left = 388
    Top = 12
    object N13: TMenuItem
      Tag = 100
      Caption = #20837#24211#21333#25454
      OnClick = N13Click
    end
    object N15: TMenuItem
      Tag = 101
      Caption = #20986#24211#21333#25454
      OnClick = N13Click
    end
    object N16: TMenuItem
      Tag = 102
      Caption = #37319#36141#36864#36135#21333#25454
      OnClick = N13Click
    end
    object N17: TMenuItem
      Tag = 103
      Caption = #38144#21806#36864#36135#21333#25454
      OnClick = N13Click
    end
    object N18: TMenuItem
      Tag = 104
      Caption = #35843#25320#21333#25454
      OnClick = N13Click
    end
    object N19: TMenuItem
      Tag = 105
      Caption = #30424#28857#21333#25454
      OnClick = N13Click
    end
  end
  object PopAddMenu: TPopupMenu
    AutoHotkeys = maManual
    Left = 452
    Top = 20
    object PA0: TMenuItem
      Caption = #20837#24211#21333#25454
      OnClick = PA0Click
    end
    object PA1: TMenuItem
      Caption = #20986#24211#21333#25454
      OnClick = PA0Click
    end
    object PA2: TMenuItem
      Caption = #37319#36141#36864#36135#21333#25454
      OnClick = PA0Click
    end
    object PA3: TMenuItem
      Caption = #38144#21806#36864#36135#21333#25454
      OnClick = PA0Click
    end
    object PA4: TMenuItem
      Caption = #35843#25320#21333#25454
      OnClick = PA0Click
    end
    object PA5: TMenuItem
      Caption = #30424#28857#21333#25454
      OnClick = PA0Click
    end
  end
  object IHeadQry: TADOQuery
    CacheSize = 100
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'cSN'
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = 'sDate'
        DataType = ftDateTime
        Size = 16
        Value = Null
      end
      item
        Name = 'eDate'
        DataType = ftDateTime
        Size = 16
        Value = Null
      end
      item
        Name = 'cStaffName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cProName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cStkName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cOprName'
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = 'cPrdtName'
        DataType = ftString
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'Select H.*,K.cStkName,S.cName, P.cProName, OprName = V.cName'
      'From StockHead H left join ProvInfo P on H.cProID = P.cProID'
      
        '                 left join StaffInfo S on H.cStaffID = S.cStaffI' +
        'D'
      '                 left join V_OprList V on H.cOprID = V.cOprID,'
      '     StkInfo K'
      'Where H.cSN Like :cSN'
      '      And H.dHapdDate between :sDate And :eDate'
      '      And H.iStkID = K.iStkID'
      '      And isNull(S.cName,'#39#39') Like :cStaffName'
      '      And P.cProName Like :cProName'
      '      And K.cStkName Like :cStkName'
      '      And isNull(V.cName,'#39#39') Like :cOprName'
      '      And H.iSNo In'
      '            (Select iSNo'
      '               From StockList S,PrdtEnCode E'
      
        '               Where s.cPrdtID = E.cPrdtID And e.cName Like :cPr' +
        'dtName)'
      '')
    Left = 40
    Top = 180
  end
  object ChildPrdtQry: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    DataSource = dsPrdt
    Parameters = <
      item
        Name = 'cPrdtID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = '01BY101     '
      end>
    SQL.Strings = (
      'select cPrdtid,cName,cUnit'
      'From PrdtEnCode'
      'Where cParentID = :cPrdtID')
    Left = 724
    Top = 376
  end
  object dsChild: TDataSource
    DataSet = ChildPrdtQry
    Left = 756
    Top = 380
  end
  object PopPrdt: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 648
    Top = 364
    object MenuItem1: TMenuItem
      Caption = #26032#24314#19979#32423#32534#30721
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #23646#24615
      OnClick = TBUpdateClick
    end
  end
end
