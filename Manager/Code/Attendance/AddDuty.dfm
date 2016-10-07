inherited AddDutyFrm: TAddDutyFrm
  Caption = #32844#21153#35774#32622
  PixelsPerInch = 96
  TextHeight = 14
  inherited GridProv: TDBGridEh
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cDutyName'
        Footer.Alignment = taRightJustify
        Footer.FieldName = 'cDutyName'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #32844#21153
        Width = 225
      end>
  end
  inherited ListQry: TADOQuery
    SQL.Strings = (
      'Select * From DutyInfo ')
  end
end
