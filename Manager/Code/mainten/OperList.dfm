object OprListFam: TOprListFam
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
    Caption = #31995#32479#25805#20316#21592
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #40657#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object GridOpr: TDBGridEh
    Left = 0
    Top = 61
    Width = 659
    Height = 284
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
    OnTitleBtnClick = GridOprTitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cOprID'
        Footers = <>
        Title.Caption = #30331#24405#21517
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'cName'
        Footers = <>
        Title.Caption = #22995#21517
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'Access'
        Footers = <>
        Title.Caption = #31995#32479#30331#24405
        Width = 70
      end>
  end
  object DSStaff: TDataSource
    DataSet = OprList
    Left = 172
    Top = 156
  end
  object OprList: TADOQuery
    CacheSize = 100
    Connection = MainFrm.ADOConn
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select cOprID,cName,cPassWord,bAllowLogin,'
      'Access=case bAllowLogin when 1 then '#39#20801#35768#39' else '#39#19981#20801#35768#39' end'
      'From V_OprList ')
    Left = 124
    Top = 152
    object OprListcOprID: TStringField
      FieldName = 'cOprID'
      FixedChar = True
      Size = 7
    end
    object OprListcName: TStringField
      FieldName = 'cName'
      Size = 10
    end
    object OprListAccess: TStringField
      FieldName = 'Access'
      ReadOnly = True
      Size = 6
    end
    object OprListcPassWord: TStringField
      FieldName = 'cPassWord'
      Size = 10
    end
    object OprListbAllowLogin: TBooleanField
      FieldName = 'bAllowLogin'
    end
  end
end
