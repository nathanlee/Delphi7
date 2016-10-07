object LeaveListFam: TLeaveListFam
  Left = 0
  Top = 0
  Width = 792
  Height = 277
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnCanResize = FrameCanResize
  OnEnter = FrameEnter
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 792
    Height = 22
    AutoSize = True
    ButtonWidth = 83
    Caption = 'ToolBar1'
    EdgeBorders = []
    EdgeInner = esLowered
    EdgeOuter = esNone
    Flat = True
    Images = MainFrm.ImageBtn
    List = True
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    Transparent = True
    object TBOff: TToolButton
      Left = 0
      Top = 0
      Caption = #35831#20551#30003#35831
      ImageIndex = 10
      OnClick = TBOffClick
    end
    object TBFind: TToolButton
      Left = 83
      Top = 0
      Caption = #21047#26032
      ImageIndex = 7
      OnClick = TBFindClick
    end
    object TBAppove: TToolButton
      Left = 166
      Top = 0
      Caption = #30003#35831#23457#25209
      ImageIndex = 4
      OnClick = TBAppoveClick
    end
    object TBCancel: TToolButton
      Left = 249
      Top = 0
      Caption = #25764#38144#22788#29702
      ImageIndex = 9
      OnClick = TBCancelClick
    end
    object TBPrn: TToolButton
      Left = 332
      Top = 0
      Caption = #25171#21360
      ImageIndex = 2
    end
  end
  object PanelTitle: TPanel
    Left = 0
    Top = 22
    Width = 792
    Height = 60
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #40657#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LabTitle: TLabel
      Left = 1
      Top = 1
      Width = 790
      Height = 24
      Align = alTop
      Alignment = taCenter
      Caption = #21592#24037#35831#20551#30003#35831#23457#25209
    end
    object Bevel1: TBevel
      Left = 383
      Top = 43
      Width = 23
      Height = 2
      Shape = bsFrame
    end
    object Label9: TLabel
      Left = 8
      Top = 12
      Width = 56
      Height = 14
      Caption = #25152#23646#37096#38376
      FocusControl = cbxDept
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object SDate: TDateTimePicker
      Left = 276
      Top = 31
      Width = 104
      Height = 23
      CalAlignment = dtaRight
      Date = 36295
      Time = 36295
      DateFormat = dfShort
      DateMode = dmUpDown
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      Kind = dtkDate
      ParseInput = False
      ParentFont = False
      TabOrder = 2
    end
    object EDate: TDateTimePicker
      Left = 408
      Top = 32
      Width = 104
      Height = 23
      CalAlignment = dtaRight
      Date = 36295
      Time = 36295
      DateFormat = dfShort
      DateMode = dmUpDown
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      Kind = dtkDate
      ParseInput = False
      ParentFont = False
      TabOrder = 3
    end
    object LeName: TLabeledEdit
      Left = 67
      Top = 31
      Width = 117
      Height = 22
      EditLabel.Width = 56
      EditLabel.Height = 14
      EditLabel.Caption = #21592#24037#22995#21517
      EditLabel.Font.Charset = GB2312_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -14
      EditLabel.Font.Name = #23435#20307
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      LabelPosition = lpLeft
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 1
    end
    object cbxDept: TComboBox
      Left = 67
      Top = 7
      Width = 119
      Height = 22
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
    end
  end
  object GridList: TDBGridEh
    Left = 0
    Top = 82
    Width = 792
    Height = 195
    Align = alClient
    DataSource = DSAttendStat
    DrawMemoText = True
    Flat = True
    FooterColor = 10223615
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking]
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = GridListDrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = #23457#25209
        Footer.Value = #21512#35745#65306
        Footer.ValueType = fvtStaticText
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = #32534#21495
        Footer.FieldName = #32534#21495
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = #22995#21517
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26085#26399
        Footers = <>
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = #26102#38388
        Footers = <>
        Width = 85
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = #29366#24577
        Footers = <>
        Width = 54
      end>
  end
  object DSAttendStat: TDataSource
    DataSet = LeaveListQry
    Left = 120
    Top = 152
  end
  object LeaveListQry: TADOQuery
    Connection = MainFrm.ADOConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cDepName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
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
      end>
    SQL.Strings = (
      'Select iSN,'#39#23457#25209#39'=bApply,'#39#32534#21495#39'=S.cStaffID,'#39#22995#21517#39'=cName,'
      '  '#39#26085#26399#39'=dCheckTime,'
      '  '#39#26102#38388#39'=case cCheckStatue'
      '    when '#39'0'#39' then '#39#19978#21320#39
      '    when '#39'1'#39' then '#39#19979#21320#39
      '    when '#39'2'#39' then '#39#20840#22825#39
      '  end,'
      '  '#39#29366#24577#39'=case cType'
      '    when '#39'3'#39' then '#39#20986#24046#39
      '    when '#39'4'#39' then '#39#35831#20551#39
      '    when '#39'5'#39' then '#39#20241#24687#39
      '  end'
      'From StaffAttendList S, StaffInfo I,DepartInfo D'
      'Where S.cSTaffID = I.cStaffID And I.iDepID = D.iDepID '
      '      And D.cdepName Like :cDepName'
      '      And S.dCheckTime between :sDate And :eDate'
      '      And S.cType ='#39'4'#39
      ''
      ' ')
    Left = 72
    Top = 124
  end
end
