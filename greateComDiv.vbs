
'求2个正整数的最大公约数
MsgBox "求2个正整数的最大公约数 Ver.1.00 by lirongfu"

userNum = 0

Do While userNum <> 1 
   userInput1 = InputBox("请输入第1个正整数")
   call inputNumer(userInput1)
Loop

userNum = 0


Do While userNum <> 1 
   userInput2 = InputBox("请输入第2个正整数")
   call inputNumer(userInput2)
Loop

temp1 = userInput1
temp2 = userInput2

'MsgBox userInput1 &"与"  & userInput2 &"的最大公约数为" & CStr(temp2) & "。"

While CInt(temp1) <> CInt(temp2)
    MsgBox temp1 &"与"  & temp2
    If CInt(temp1) > CInt(temp2) Then
        temp1 = temp1 - temp2
    Else
        temp2 = temp2 - temp1
    End If
Wend

MsgBox userInput1 &"与"  & userInput2 &"的最大公约数为" & CStr(temp2) & "。"



Sub inputNumer(userInput)
    
    flag1 = False
    if isnumeric(userInput) Then
    	If userInput >0 Then
    		 	flag1 = True
    	End If
    End If
    
    If(flag1=False) Then
    	MsgBox "亲，你只能输入正整数,不能输入其它值哦！"
    	Exit Sub
    End If
    
    userNum = userNum + 1

End Sub
