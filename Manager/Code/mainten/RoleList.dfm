object RoleListFam: TRoleListFam
  Left = 0
  Top = 0
  Width = 659
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
  OnEnter = FrameEnter
  OnResize = FrameResize
  object Splitter1: TSplitter
    Left = 213
    Top = 61
    Height = 284
    Beveled = True
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 659
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
    object TBNew: TToolButton
      Left = 0
      Top = 0
      Hint = 'CTRL+N'
      Caption = #26032#24314
      ImageIndex = 0
      OnClick = TBNewClick
    end
    object TBUpdate: TToolButton
      Left = 55
      Top = 0
      Hint = 'CTRL+U'
      Caption = #23646#24615
      ImageIndex = 10
      OnClick = TBUpdateClick
    end
    object TBDelete: TToolButton
      Left = 110
      Top = 0
      Caption = #21024#38500
      ImageIndex = 3
      OnClick = TBDeleteClick
    end
  end
  object PanelTitle: TPanel
    Left = 0
    Top = 22
    Width = 659
    Height = 39
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = #31995#32479#35282#33394#21015#34920
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #40657#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object GridRole: TDBGridEh
    Left = 0
    Top = 61
    Width = 213
    Height = 284
    Align = alLeft
    Ctl3D = True
    DataSource = DSRole
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
    OnTitleBtnClick = GridRoleTitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cRuleName'
        Footers = <>
        Title.Caption = #35282#33394
        Width = 195
      end>
  end
  object GridEhRights: TDBGridEh
    Left = 216
    Top = 61
    Width = 443
    Height = 284
    Align = alClient
    Ctl3D = True
    DataSource = DSRights
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
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = GridEhRightsDrawColumnCell
    OnTitleBtnClick = GridRoleTitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cFunAbbr'
        Footer.Alignment = taRightJustify
        Footer.FieldName = 'cFunID'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26435#38480'|'#21517#31216
        Width = 100
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'bBrowse'
        Footers = <>
        Title.Caption = #26435#38480'|'#27983#35272
        OnUpdateData = GridEhRightsColumns1UpdateData
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'bInsert'
        Footers = <>
        Title.Caption = #26435#38480'|'#26032#22686
        OnUpdateData = GridEhRightsColumns1UpdateData
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'bUpdate'
        Footers = <>
        Title.Caption = #26435#38480'|'#20462#25913
        OnUpdateData = GridEhRightsColumns1UpdateData
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'bDelete'
        Footers = <>
        Title.Caption = #26435#38480'|'#21024#38500
        OnUpdateData = GridEhRightsColumns1UpdateData
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'bVouch'
        Footers = <>
        Title.Caption = #26435#38480'|'#23457#26680
        OnUpdateData = GridEhRightsColumns1UpdateData
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'bStat'
        Footers = <>
        Title.Caption = #26435#38480'|'#26597#35810
        OnUpdateData = GridEhRightsColumns1UpdateData
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'bPrnint'
        Footers = <>
        Title.Caption = #26435#38480'|'#25171#21360
        OnUpdateData = GridEhRightsColumns1UpdateData
      end>
  end
  object DSRole: TDataSource
    DataSet = RoleList
    Left = 172
    Top = 156
  end
  object RoleList: TADOQuery
    CacheSize = 100
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From StaffRule')
    Left = 124
    Top = 152
  end
  object DSRights: TDataSource
    DataSet = RightsList
    Left = 408
    Top = 192
  end
  object RightsList: TADOQuery
    CacheSize = 100
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    DataSource = DSRole
    Parameters = <
      item
        Name = 'iRuleID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select F.cFunAbbr,R.*'
      'From RuleRights R,FunList F'
      'Where R.cFunID = F.cFunID And R.iRuleID = :iRuleID')
    Left = 372
    Top = 152
  end
end
