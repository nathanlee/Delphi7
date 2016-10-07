object MainOptionFrm: TMainOptionFrm
  Left = -1
  Top = 103
  BorderStyle = bsDialog
  Caption = #36873#39033
  ClientHeight = 233
  ClientWidth = 456
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
  object Label4: TLabel
    Left = 10
    Top = 46
    Width = 56
    Height = 14
    Caption = #25253#35686#31867#22411
  end
  object Label2: TLabel
    Left = 213
    Top = 46
    Width = 70
    Height = 14
    Caption = #19978#26376#38144#21806#37327
  end
  object Label3: TLabel
    Left = 347
    Top = 46
    Width = 14
    Height = 14
    Caption = #36798
  end
  object Label5: TLabel
    Left = 427
    Top = 46
    Width = 14
    Height = 14
    Caption = #65285
  end
  object BtnOK: TBitBtn
    Left = 103
    Top = 202
    Width = 113
    Height = 27
    Caption = #30830#23450'(&O)'
    ModalResult = 1
    TabOrder = 4
    OnClick = BtnOKClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 239
    Top = 202
    Width = 113
    Height = 27
    Caption = #20851#38381'(&C)'
    TabOrder = 5
    Kind = bkCancel
  end
  object CbxAlarm: TComboBox
    Left = 69
    Top = 38
    Width = 136
    Height = 22
    Style = csDropDownList
    ItemHeight = 14
    TabOrder = 1
    Items.Strings = (
      #21830#21697#21517#31216#24322#21160#30417#25511
      #21830#21697#31867#21035#24322#21160#30417#25511
      #21830#21697#21697#29260#24322#21160#30417#25511
      #23458#25143#38144#21806#24322#21160#30417#25511)
  end
  object cbxUpDown: TComboBox
    Left = 284
    Top = 38
    Width = 61
    Height = 22
    Style = csDropDownList
    ItemHeight = 14
    TabOrder = 2
    Items.Strings = (
      #22686#38271
      #38477#20302)
  end
  object SEPercent: TSpinEdit
    Left = 365
    Top = 37
    Width = 60
    Height = 23
    MaxLength = 3
    MaxValue = 100
    MinValue = 0
    TabOrder = 3
    Value = 20
  end
  object chkWarm: TCheckBox
    Left = 12
    Top = 12
    Width = 115
    Height = 17
    Caption = #20351#29992#33258#21160#25253#35686
    TabOrder = 0
  end
end
