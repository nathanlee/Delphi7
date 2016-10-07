object AttendStatFam: TAttendStatFam
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
    ButtonWidth = 55
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
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 790
      Height = 24
      Align = alTop
      Alignment = taCenter
      Caption = #32771#21220#32479#35745
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
      Date = 36295.9999884259
      Time = 36295.9999884259
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
  object Page: TPageControl
    Left = 0
    Top = 82
    Width = 792
    Height = 195
    ActivePage = TabSheet2
    Align = alClient
    TabIndex = 1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #32771#21220#35760#24405
      object GridList: TDBGridEh
        Left = 0
        Top = 0
        Width = 784
        Height = 166
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = GridListDrawColumnCell
        OnTitleBtnClick = GridListTitleBtnClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #32771#21220#32479#35745
      ImageIndex = 1
      object GridStat: TDBGridEh
        Left = 0
        Top = 0
        Width = 784
        Height = 166
        Align = alClient
        DataSource = DataSource1
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        OnTitleBtnClick = GridListTitleBtnClick
      end
    end
  end
  object DSAttendStat: TDataSource
    DataSet = AttendListQry
    Left = 120
    Top = 152
  end
  object AttendListQry: TADOQuery
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cDepName'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'sDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'eDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select '#39#22995#21517#39'=cName,'#39#21047#21345#26102#38388#39'=dCheckTime,'
      '  '#39#26102#38388#39'=case cCheckStatue'
      '    when '#39'0'#39' then '#39#19978#21320#19978#29677#39
      '    when '#39'1'#39' then '#39#19978#21320#19979#29677#39
      '    when '#39'2'#39' then '#39#19979#21320#19978#29677#39
      '    when '#39'3'#39' then '#39#19979#21320#19979#29677#39
      '    when '#39'4'#39' then '#39#20840#26085#39
      '  end,'
      '  '#39#29366#24577#39'=case cType'
      '    when '#39'2'#39' then '#39#20934#26102#39
      '    when '#39'4'#39' then '#39#35831#20551#39
      '    when '#39'5'#39' then '#39#20241#24687#39
      '    when '#39'6'#39' then '#39#26103#24037#39
      '    when '#39'7'#39' then '#39#36831#21040#39
      '    when '#39'8'#39' then '#39#26089#36864#39
      '    when '#39'9'#39' then '#39#26410#21047#21345#39
      '  end,'
      '  '#39#36831#21040#26102#38388#39'= iOutTime'
      'From StaffAttendList S, StaffInfo I,DepartInfo D'
      
        'Where S.cSTaffID = I.cStaffID And I.iDepID = D.iDepID And D.cdep' +
        'Name Like :cDepName'
      '      And S.dCheckTime between :sDate And :eDate'
      '      And S.bApply = 1')
    Left = 60
    Top = 148
  end
  object DataSource1: TDataSource
    DataSet = AttendStatQry
    Left = 248
    Top = 152
  end
  object AttendStatQry: TADOQuery
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'SDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'eDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'cDepName'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @sDate DateTime'
      'declare @eDate DateTime'
      ''
      'Set @sDate = :sDate'
      'Set @eDate = :eDate'
      ''
      'Select '#39#22995#21517#39'=S.cName,'
      
        '       '#39#20934#26102#39' =(Select Count(B.cStaffID) From StaffAttendList B Wh' +
        'ere B.cStaffID = S.cStaffID And bApply = 1 And B.cType ='#39'2'#39' And ' +
        'B.dCheckTime BetWeen @SDate And @EDate),'
      
        '       '#39#36831#21040#39'=(Select Count(B.cStaffID) From StaffAttendList B Whe' +
        're B.cStaffID = S.cStaffID  And bApply = 1 And B.cType = '#39'7'#39' And' +
        ' B.dCheckTime BetWeen @SDate And @EDate),'
      
        '       '#39#26103#24037#39'=(Select Count(B.cStaffID) From StaffAttendList B Whe' +
        're B.cStaffID = S.cStaffID  And bApply = 1 And B.cType = '#39'6'#39' And' +
        ' B.dCheckTime BetWeen @SDate And @EDate),'
      
        '       '#39#26089#36864#39'=(Select Count(B.cStaffID) From StaffAttendList B Whe' +
        're B.cStaffID = S.cStaffID  And bApply = 1 And B.cType = '#39'8'#39' And' +
        ' B.dCheckTime BetWeen @SDate And @EDate),'
      
        '       '#39#20986#24046#39'=(Select Count(B.cStaffID) From StaffAttendList B Whe' +
        're B.cStaffID = S.cStaffID  And bApply = 1 And B.cType = '#39'3'#39' And' +
        ' B.dCheckTime BetWeen @SDate And @EDate),'
      
        '       '#39#35831#20551#39'=(Select Count(B.cStaffID) From StaffAttendList B Whe' +
        're B.cStaffID = S.cStaffID  And bApply = 1 And B.cType = '#39'4'#39' And' +
        ' B.dCheckTime BetWeen @SDate And @EDate),'
      
        '       '#39#20241#24687#39'=(Select Count(B.cStaffID) From StaffAttendList B Whe' +
        're B.cStaffID = S.cStaffID  And bApply = 1 And B.cType = '#39'5'#39' And' +
        ' B.dCheckTime BetWeen @SDate And @EDate),'
      
        '       '#39#26410#21047#21345#39'=(Select Count(B.cStaffID) From StaffAttendList B Wh' +
        'ere B.cStaffID = S.cStaffID And B.cType = '#39'9'#39' And B.dCheckTime B' +
        'etWeen @SDate And @EDate),'
      
        '       '#39#36831#21040#26102#38388#39'=(Select isNull(Sum(B.iOutTime),0) From StaffAttend' +
        'List B Where B.cStaffID = S.cStaffID And B.cType = '#39'7'#39' And B.dCh' +
        'eckTime BetWeen @SDate And @EDate)'
      'From StaffInfo S, DepartInfo D'
      'Where S.cName Like :Name And S.iDepID = D.iDepID'
      '   And D.cDepName Like :cDepName'
      '   Order By S.cName'
      ''
      '')
    Left = 172
    Top = 124
  end
end
