object AddStkFrm: TAddStkFrm
  Left = 110
  Top = 99
  BorderStyle = bsDialog
  Caption = #20179#24211#20449#24687
  ClientHeight = 152
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object LeStkLinkMan: TLabeledEdit
    Left = 88
    Top = 31
    Width = 368
    Height = 22
    EditLabel.Width = 70
    EditLabel.Height = 14
    EditLabel.Caption = #36127#36131#20154#22995#21517
    LabelPosition = lpLeft
    LabelSpacing = 3
    MaxLength = 20
    TabOrder = 1
  end
  object leStkTel: TLabeledEdit
    Left = 88
    Top = 54
    Width = 368
    Height = 22
    EditLabel.Width = 56
    EditLabel.Height = 14
    EditLabel.Caption = #32852#31995#30005#35805
    LabelPosition = lpLeft
    LabelSpacing = 3
    MaxLength = 50
    TabOrder = 2
  end
  object leStkAddr: TLabeledEdit
    Left = 88
    Top = 78
    Width = 368
    Height = 22
    EditLabel.Width = 56
    EditLabel.Height = 14
    EditLabel.Caption = #20179#24211#22320#22336
    LabelPosition = lpLeft
    LabelSpacing = 3
    MaxLength = 100
    TabOrder = 3
  end
  object leStkName: TLabeledEdit
    Left = 88
    Top = 8
    Width = 368
    Height = 22
    EditLabel.Width = 56
    EditLabel.Height = 14
    EditLabel.Caption = #20179#24211#21517#31216
    LabelPosition = lpLeft
    LabelSpacing = 3
    MaxLength = 100
    TabOrder = 0
  end
  object BtnSaveOut: TBitBtn
    Left = 198
    Top = 111
    Width = 103
    Height = 25
    Caption = #20445#23384#36864#20986'(&S)'
    ModalResult = 1
    TabOrder = 5
    OnClick = BtnSaveOutClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 309
    Top = 111
    Width = 103
    Height = 25
    Caption = #20851#38381'(&C)'
    TabOrder = 6
    Kind = bkCancel
  end
  object BtnSave: TBitBtn
    Left = 87
    Top = 111
    Width = 103
    Height = 25
    Caption = #20445#23384#32487#32493'(&R)'
    TabOrder = 4
    OnClick = BtnSaveClick
    Glyph.Data = {
      26050000424D26050000000000003604000028000000100000000F0000000100
      080000000000F000000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0C8
      A400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070700000000
      0000000000000000000707000303000000000000070700030007070003030000
      0000000007070003000707000303000000000000070700030007070003030000
      0000000000000003000707000303030303030303030303030007070003030000
      0000000000000303000707000300070707070707070700030007070003000707
      0707070707070003000707000300070707070707070700030007070003000707
      0707070707070003000707000300070707070707070700000007070003000707
      0707070707070007000707000000000000000000000000000007070707070707
      07070707070707070707}
  end
end