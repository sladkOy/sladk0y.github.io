Attribute VB_Name = "NewMacros"
Sub ЄСКДиОбтекание()
'
' ЄСКД&Обтекание Макрос
' Установки стандартів Єдиної конструкторської документації и обтекание нескольких рисунков в документе
'
    Dim pic As Object
    On Error Resume Next
    For Each pic In ActiveDocument.Content.InlineShapes
       pic.ConvertToShape
    Next
    For Each pic In ActiveDocument.Shapes
       pic.WrapFormat.Type = wdWrapSquare
    Next
    Selection.Style = ActiveDocument.Styles("Без интервала")
    ActiveDocument.Range.ParagraphFormat.Alignment = wdAlignParagraphJustify
    ActiveDocument.Range.ParagraphFormat.Alignment = wdAlignParagraphJustify
    Selection.Font.Name = "Times New Roman"
    Selection.Font.Size = 14
    Selection.ParagraphFormat.Alignment = wdAlignParagraphJustify
    ActiveDocument.Range.ParagraphFormat.LineSpacingRule = WdLineSpacing.wdLineSpace1pt5
    With Selection.PageSetup
        .TopMargin = CentimetersToPoints(2)
        .BottomMargin = CentimetersToPoints(2)
        .LeftMargin = CentimetersToPoints(2)
        .RightMargin = CentimetersToPoints(2)
    End With
End Sub
