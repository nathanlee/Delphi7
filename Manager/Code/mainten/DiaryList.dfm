object DiaryListFam: TDiaryListFam
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 659
    Height = 22
    AutoSize = True
    ButtonWidth = 111
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
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #21047#26032#25805#20316#26085#24535
      ImageIndex = 9
      OnClick = FrameEnter
    end
    object TBDelete: TToolButton
      Left = 111
      Top = 0
      Caption = #21024#38500#25805#20316#26085#24535
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
    Caption = #31995#32479#25805#20316#26085#24535
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #40657#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Grid: TDBGridEh
    Left = 0
    Top = 61
    Width = 659
    Height = 284
    Align = alClient
    Ctl3D = True
    DataSource = DSDiary
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
        FieldName = 'dHapdDate'
        Footers = <>
        Title.Caption = #26085#26399
        Width = 100
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = 'cOprAbbr'
        Footers = <>
        Title.Caption = #25551#36848
        Width = 528
      end>
  end
  object DSDiary: TDataSource
    DataSet = DiaryList
    Left = 408
    Top = 192
  end
  object DiaryList: TADOQuery
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From OperDiary'
      'Order By dHapdDate desc')
    Left = 372
    Top = 152
  end
end
