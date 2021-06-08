Attribute VB_Name = "Module1"

Dim c As New Std.Config

Sub Main()
    Dim s As String
    Dim v As Variant
    Dim r As Variant
    Dim m As String
    c.LoadW ("test.cfg")

    COALESCE (c.Recall("boun.AsUTF32Codepoints") = "yes")
    Dim i As Integer
    i = 1
    m = ""
    Do
        On Error Resume Next
        s = c.Recall("boun.test." & i)
        If Err.Number <> 0 Then Exit Do
        On Error GoTo 0
        
        r = NOTATE(s)
        For Each v In r
            'm = m & s & vbTab & Len(s) & vbNewLine
            m = m & v & " "
        Next
        m = m & vbNewLine
        i = i + 1
    Loop
    Debug.Print m
    MsgBox m ', , IIf(COALESCE, "With UTF32 codepoints", "Only UTF16 codepoints")
End Sub
