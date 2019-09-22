For x = 0 To 10
	For y = 0 To 10
		a = x + y
		b = 2 * x + 4 * y
		If ( a = 10 ) And ( b =32 ) Then
			MsgBox "¼¦ = " & CStr(x) & ",ÍÃ×Ó = " & CStr(y)
		End If
	Next
Next