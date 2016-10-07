inherited AddColeFrm: TAddColeFrm
  Caption = #23398#21382#35774#32622
  PixelsPerInch = 96
  TextHeight = 14
  inherited GridProv: TDBGridEh
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cColeName'
        Footer.Alignment = taRightJustify
        Footer.FieldName = 'cColeName'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #23398#21382
        Width = 225
      end>
  end
  inherited ListQry: TADOQuery
    SQL.Strings = (
      'Select * From CollegeInfo ')
  end
end
