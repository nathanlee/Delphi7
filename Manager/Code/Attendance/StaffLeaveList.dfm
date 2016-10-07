object StaffLeaveListFam: TStaffLeaveListFam
  Left = 0
  Top = 0
  Width = 796
  Height = 345
  Ctl3D = True
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  ParentCtl3D = False
  ParentFont = False
  ParentShowHint = False
  ShowHint = True
  TabOrder = 0
  OnCanResize = FrameCanResize
  OnEnter = FrameEnter
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 796
    Height = 22
    AutoSize = True
    ButtonWidth = 55
    Caption = 'ToolBar1'
    Color = clBtnFace
    EdgeBorders = []
    EdgeInner = esLowered
    EdgeOuter = esNone
    Flat = True
    Images = MainFrm.ImageBtn
    List = True
    ParentColor = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object TBFind: TToolButton
      Left = 0
      Top = 0
      Hint = 'CTRL+F'
      Caption = #26597#25214
      ImageIndex = 7
      OnClick = TBFindClick
    end
  end
  object PanelTitle: TPanel
    Left = 0
    Top = 22
    Width = 796
    Height = 60
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 794
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = #31163#32844#21592#24037#20449#24687
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 279
      Top = 41
      Width = 28
      Height = 14
      Caption = #26085#26399
    end
    object Bevel7: TBevel
      Left = 404
      Top = 45
      Width = 10
      Height = 2
      Shape = bsFrame
    end
    object LeName: TLabeledEdit
      Left = 71
      Top = 31
      Width = 102
      Height = 22
      EditLabel.Width = 56
      EditLabel.Height = 14
      EditLabel.Caption = #21592#24037#22995#21517
      LabelPosition = lpLeft
      LabelSpacing = 3
      MaxLength = 7
      TabOrder = 0
    end
    object SDate: TDateTimePicker
      Left = 307
      Top = 33
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
    object EDate: TDateTimePicker
      Left = 415
      Top = 33
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
  end
  object GridStaff: TDBGridEh
    Left = 0
    Top = 82
    Width = 796
    Height = 263
    Align = alClient
    Ctl3D = True
    DataSource = DSStaff
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
    ParentCtl3D = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    UseMultiTitle = True
    OnTitleBtnClick = GridStaffTitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cStaffID'
        Footer.Value = #21512#35745#20154#25968#65306
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = #32534#21495
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'cName'
        Footer.Alignment = taRightJustify
        Footer.FieldName = 'cStaffID'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #22995#21517
        Title.TitleButton = True
        Width = 85
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = #24615#21035
        Footers = <>
        Title.TitleButton = True
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'dBirthday'
        Footers = <>
        Title.Caption = #20986#29983#26085#26399
        Title.TitleButton = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'cNation'
        Footers = <>
        Title.Caption = #31821#36143
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'cDepName'
        Footers = <>
        Title.Caption = #25152#23646#37096#38376
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'cColeName'
        Footers = <>
        Title.Caption = #23398#21382
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'cDutyName'
        Footers = <>
        Title.Caption = #32844#21153
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'dWorkTime'
        Footers = <>
        Title.Caption = #20837#32844#26102#38388
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'dLeaveTime'
        Footers = <>
        Title.Caption = #31163#32844#26102#38388
        Title.TitleButton = True
        Width = 75
      end>
  end
  object DSStaff: TDataSource
    DataSet = qryLeaveList
    Left = 172
    Top = 156
  end
  object qryLeaveList: TADOQuery
    Connection = MainFrm.ADOConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      'select S.*,'
      '       '#39#24615#21035#39'=case S.iSex when 1 then '#39#22899#39' else '#39#30007#39' end,'
      '       cColeName,'
      '       cDutyName,'
      '       cDepName'
      'From StaffInfo S,DutyInfo T,CollegeInfo C,DepartInfo D'
      'Where S.iDepID *= D.iDepID'
      '      And S.iColeID *= C.iColeID And S.iDutyID *= T.iDutyID'
      '      And S.cName Like :cName'
      '      And S.dLeaveTime between :sDate And :eDate'
      '  ')
    Left = 128
    Top = 148
  end
end
