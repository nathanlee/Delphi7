object RedePloyFrm: TRedePloyFrm
  Left = 190
  Top = 103
  BorderStyle = bsDialog
  Caption = #20869#37096#35843#21160
  ClientHeight = 295
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Label16: TLabel
    Left = 252
    Top = 25
    Width = 56
    Height = 14
    Caption = #35843#20837#37096#38376
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object SBAddToTrg: TSpeedButton
    Left = 220
    Top = 124
    Width = 23
    Height = 22
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333FF3333333333333003333
      3333333333773FF3333333333309003333333333337F773FF333333333099900
      33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
      99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
      33333333337F3F77333333333309003333333333337F77333333333333003333
      3333333333773333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SBAddToTrgClick
  end
  object SBRemTrg: TSpeedButton
    Left = 220
    Top = 152
    Width = 23
    Height = 22
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F33333333333009033
      333333333F7737F333333333009990333333333F773337FFFFFF330099999000
      00003F773333377777770099999999999990773FF33333FFFFF7330099999000
      000033773FF33777777733330099903333333333773FF7F33333333333009033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SBRemTrgClick
  end
  object CBXDept: TComboBox
    Left = 312
    Top = 15
    Width = 141
    Height = 24
    Style = csDropDownList
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ItemHeight = 16
    MaxLength = 4
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 48
    Width = 210
    Height = 204
    Caption = ' '#20840#20307#21592#24037' '
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object GridStaff: TDBGridEh
      Left = 2
      Top = 16
      Width = 206
      Height = 186
      Align = alClient
      Ctl3D = True
      DataSource = DSAll
      DragMode = dmAutomatic
      DrawMemoText = True
      Flat = True
      FooterColor = 10223615
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -14
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking]
      ParentCtl3D = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      UseMultiTitle = True
      OnDblClick = SBAddToTrgClick
      OnDragDrop = GridStaffDragDrop
      OnDragOver = GridDeptStaffDragOver
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cName'
          Footer.Alignment = taRightJustify
          Footer.Value = #21512#35745#65306
          Footer.ValueType = fvtStaticText
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
          FieldName = 'cDutyName'
          Footer.FieldName = 'cStaffID'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = #32844#21153
          Width = 61
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 248
    Top = 43
    Width = 210
    Height = 209
    Caption = ' '#35843#20837#37096#38376#21592#24037' '
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object TrgBox: TListBox
      Left = 2
      Top = 16
      Width = 206
      Height = 191
      Align = alClient
      DragMode = dmAutomatic
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 14
      MultiSelect = True
      ParentFont = False
      TabOrder = 0
    end
    object GridDeptStaff: TDBGridEh
      Left = 2
      Top = 16
      Width = 206
      Height = 191
      Align = alClient
      Ctl3D = True
      DataSource = DSDept
      DragMode = dmAutomatic
      DrawMemoText = True
      Flat = True
      FooterColor = 10223615
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -14
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking]
      ParentCtl3D = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      UseMultiTitle = True
      OnDblClick = SBRemTrgClick
      OnDragDrop = GridDeptStaffDragDrop
      OnDragOver = GridDeptStaffDragOver
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cName'
          Footer.Alignment = taRightJustify
          Footer.FieldName = 'cStaffID'
          Footer.Value = #21512#35745#65306
          Footer.ValueType = fvtStaticText
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
          FieldName = 'cDutyName'
          Footer.FieldName = 'cStaffID'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = #32844#21153
          Width = 64
        end>
    end
  end
  object LeName: TLabeledEdit
    Left = 37
    Top = 19
    Width = 175
    Height = 22
    EditLabel.Width = 28
    EditLabel.Height = 14
    EditLabel.Caption = #22995#21517
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 240
    Top = 264
    Width = 113
    Height = 27
    Caption = #20851#38381'(&X)'
    TabOrder = 5
    Kind = bkCancel
  end
  object BtnFind: TBitBtn
    Left = 103
    Top = 261
    Width = 113
    Height = 27
    Caption = #26597#25214'(&F)'
    TabOrder = 4
    OnClick = BtnFindClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object StaffAllQry: TADOQuery
    CacheSize = 100
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
        Name = 'cDepName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'select S.cStaffID,S.cName,'
      '       '#39#24615#21035#39'=case S.iSex when 1 then '#39#22899#39' else '#39#30007#39' end,'
      '       cDutyName'
      'From StaffInfo S left join DutyInfo T on S.iDutyID = T.iDutyID'
      '     left join DepartInfo D on S.iDepID = D.iDepID'
      'Where S.cName Like :cName'
      '      And isNull(D.cDepName,'#39#39') <> :cDepName')
    Left = 124
    Top = 100
    object StaffAllQrycName: TStringField
      FieldName = 'cName'
      Size = 10
    end
    object StaffAllQryDSDesigner: TStringField
      FieldName = #24615#21035
      ReadOnly = True
      Size = 2
    end
    object StaffAllQrycDutyName: TStringField
      FieldName = 'cDutyName'
      Size = 50
    end
    object StaffAllQrycStaffID: TStringField
      FieldName = 'cStaffID'
      FixedChar = True
      Size = 7
    end
  end
  object StaffDeptQry: TADOQuery
    CacheSize = 100
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
      end>
    SQL.Strings = (
      'select S.cName,S.cStaffID,'
      '       '#39#24615#21035#39'=case S.iSex when 1 then '#39#22899#39' else '#39#30007#39' end,'
      '       cDutyName'
      'From StaffInfo S,DutyInfo T,DepartInfo D'
      'Where S.iDepID = D.iDepID'
      '      And  S.iDutyID *= T.iDutyID'
      '      And D.cDepName = :cDepName'
      ''
      '')
    Left = 324
    Top = 100
    object StaffDeptQrycName: TStringField
      FieldName = 'cName'
      Size = 10
    end
    object StaffDeptQrycStaffID: TStringField
      FieldName = 'cStaffID'
      FixedChar = True
      Size = 7
    end
    object StaffDeptQryDSDesigner: TStringField
      FieldName = #24615#21035
      ReadOnly = True
      Size = 2
    end
    object StaffDeptQrycDutyName: TStringField
      FieldName = 'cDutyName'
      Size = 50
    end
  end
  object DSAll: TDataSource
    DataSet = StaffAllQry
    Left = 172
    Top = 156
  end
  object DSDept: TDataSource
    DataSet = StaffDeptQry
    Left = 348
    Top = 160
  end
end
