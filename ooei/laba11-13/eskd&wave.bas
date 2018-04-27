<<<<<<< HEAD
Attribute VB_Name = "NewMacros1"
=======
Attribute VB_Name = "NewMacros"
>>>>>>> 7493c7d050bac07c383dda15efe2b59e8673075d
Sub ЄСКДиОбтекание()
'
' ЄСКД&Обтекание Макрос
' Установки стандартів Єдиної конструкторської документації и обтекание нескольких рисунков в документе
'
<<<<<<< HEAD
    Selection.Style = ActiveDocument.Styles("Без интервала")
    ActiveDocument.Range.ParagraphFormat.Alignment = wdAlignParagraphJustify
=======
>>>>>>> 7493c7d050bac07c383dda15efe2b59e8673075d
    Dim pic As Object
    On Error Resume Next
    For Each pic In ActiveDocument.Content.InlineShapes
       pic.ConvertToShape
    Next
    For Each pic In ActiveDocument.Shapes
       pic.WrapFormat.Type = wdWrapSquare
    Next
<<<<<<< HEAD
=======
    Selection.Style = ActiveDocument.Styles("Без интервала")
    ActiveDocument.Range.ParagraphFormat.Alignment = wdAlignParagraphJustify
    ActiveDocument.Range.ParagraphFormat.Alignment = wdAlignParagraphJustify
>>>>>>> 7493c7d050bac07c383dda15efe2b59e8673075d
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
<<<<<<< HEAD
Selection.MoveDown Unit:=wdLine, Count:=1
=======
>>>>>>> 7493c7d050bac07c383dda15efe2b59e8673075d
End Sub
