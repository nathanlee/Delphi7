object StaffListFam: TStaffListFam
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
  OnCanResize = FrameCanResize
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
      Caption = #26032#22686
      ImageIndex = 0
      OnClick = TBNewClick
    end
    object TBUpdate: TToolButton
      Left = 55
      Top = 0
      Hint = 'CTRL+U'
      Caption = #20462#25913
      ImageIndex = 1
      OnClick = TBUpdateClick
    end
    object TBPrnList: TToolButton
      Left = 110
      Top = 0
      Hint = 'CTRL+P'
      Caption = #25171#21360
      ImageIndex = 2
      OnClick = TBPrnListClick
    end
    object TBLeve: TToolButton
      Left = 165
      Top = 0
      Caption = #31163#32844
      ImageIndex = 9
      OnClick = TBLeveClick
    end
    object TBDel: TToolButton
      Left = 220
      Top = 0
      Hint = 'CTRL+DELETE'
      Caption = #21024#38500
      ImageIndex = 3
      OnClick = TBDelClick
    end
    object TBFind: TToolButton
      Left = 275
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
    Width = 659
    Height = 60
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = #21592#24037#20449#24687
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #40657#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object GridStaff: TDBGridEh
    Left = 0
    Top = 82
    Width = 659
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
        Title.Caption = #32534#30721
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'cName'
        Footer.FieldName = 'cStaffID'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #22995#21517
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
      end
      item
        EditButtons = <>
        FieldName = 'cColeName'
        Footers = <>
        Title.Caption = #23398#21382
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'cDutyName'
        Footers = <>
        Title.Caption = #32844#21153
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'cTel'
        Footers = <>
        Title.Caption = #32852#31995#30005#35805
        Title.TitleButton = True
        Width = 233
      end>
  end
  object DSStaff: TDataSource
    DataSet = MainFrm.StaffList
    Left = 172
    Top = 156
  end
end
