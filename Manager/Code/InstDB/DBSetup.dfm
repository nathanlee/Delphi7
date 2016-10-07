object DBSetupFrm: TDBSetupFrm
  Left = 225
  Top = 106
  BorderStyle = bsDialog
  Caption = #25968#25454#24211#23433#35013#37197#32622
  ClientHeight = 264
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object SPDat: TSpeedButton
    Left = 500
    Top = 124
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    OnClick = SPDatClick
  end
  object SBLog: TSpeedButton
    Left = 500
    Top = 148
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    OnClick = SBLogClick
  end
  object LEServer: TLabeledEdit
    Left = 116
    Top = 28
    Width = 378
    Height = 22
    EditLabel.Width = 84
    EditLabel.Height = 14
    EditLabel.Caption = #26381#21153#22120#21517#31216#65306
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 0
  end
  object LELogin: TLabeledEdit
    Left = 116
    Top = 52
    Width = 378
    Height = 22
    EditLabel.Width = 56
    EditLabel.Height = 14
    EditLabel.Caption = #30331#38470#21517#65306
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 1
  end
  object LEPass: TLabeledEdit
    Left = 116
    Top = 76
    Width = 378
    Height = 22
    EditLabel.Width = 42
    EditLabel.Height = 14
    EditLabel.Caption = #23494#30721#65306
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 2
  end
  object LEDatFile: TLabeledEdit
    Left = 116
    Top = 124
    Width = 378
    Height = 22
    EditLabel.Width = 98
    EditLabel.Height = 14
    EditLabel.Caption = #25968#25454#25991#20214#21517#31216#65306
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 4
  end
  object LELogFile: TLabeledEdit
    Left = 116
    Top = 148
    Width = 378
    Height = 22
    EditLabel.Width = 98
    EditLabel.Height = 14
    EditLabel.Caption = #26085#24535#25991#20214#21517#31216#65306
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 5
  end
  object Button1: TButton
    Left = 144
    Top = 208
    Width = 129
    Height = 39
    Caption = #23433#35013
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 208
    Width = 129
    Height = 39
    Caption = #21462#28040
    TabOrder = 7
    OnClick = Button2Click
  end
  object LEDBName: TLabeledEdit
    Left = 116
    Top = 100
    Width = 378
    Height = 22
    EditLabel.Width = 84
    EditLabel.Height = 14
    EditLabel.Caption = #25968#25454#24211#21517#31216#65306
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 3
  end
  object LEBackupName: TLabeledEdit
    Left = 116
    Top = 172
    Width = 378
    Height = 22
    EditLabel.Width = 126
    EditLabel.Height = 14
    EditLabel.Caption = #22791#20221#35774#22791#21517#31216#21517#31216#65306
    LabelPosition = lpLeft
    LabelSpacing = 3
    TabOrder = 8
  end
  object ADOConn: TADOConnection
    Left = 184
    Top = 24
  end
  object ADODataSet: TADODataSet
    Connection = ADOConn
    CommandTimeout = 0
    Parameters = <>
    Left = 280
    Top = 36
  end
  object ODFile: TOpenDialog
    Left = 284
    Top = 92
  end
  object ADOCommand: TADOCommand
    Connection = ADOConn
    Parameters = <>
    Left = 148
    Top = 84
  end
  object ADOQuery: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 216
    Top = 144
  end
end
