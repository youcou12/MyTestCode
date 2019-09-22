' 记住文件格式一定要保存为ANSI/ASCC格式，不然中文乱码
Dim gesture(2)
gesture(0)="石头"
gesture(1)="剪刀"
gesture(2)= " 布 "

' 初始化对玩家获胜次数计数的变量
wins = 0

'初始化比赛次数
battle = 5

' 初始化随机数种子
Randomize

'显示程序启动信息
MsgBox "石头剪刀布游戏 Ver.1.00 by H.Yzzawa"

Sub userInputJust(userInput)
    
    flag1 = False
    if isnumeric(userInput) Then
    	flag1 = True
    End If
    
    If(flag1=False) Then
    	MsgBox "亲，你只能输入数字0,1,2,不能输入其它值哦！"
    	Exit Sub
    End If

    user = CInt(userInput)
    flag = False
    
    For j =0 To 2
      If user = j Then
      	 flag = True
      	 Exit For
      End If
    Next
    
    If(flag=False) Then
    	MsgBox "亲，你只能输入0,1,2,不能输入其它值哦！"
    	Exit Sub
    End If
    
    
    
    '用随机数决定计算机的手势
    computer = CInt(Rnd *2)

    '生成提示双方出的手势的字符串
    '& gesture(user) & "、计算机: " & gesture(computer)
    's = " 玩家："
    s = "第" & (6-battle) & "轮：" &" 玩家 " & gesture(user) & " 、计算机: " & gesture(computer)

    '判定胜负，显示结果
    If user = computer Then
        MsgBox s & " ...平 " 
    ElseIf computer = (user + 1 ) Mod 3 Then
        MsgBox s &"...玩家获胜!"
        wins = wins +1
    Else
        MsgBox s &"...计算机获胜！"
    End If
    battle = battle -1 

End Sub

'进行5轮比试
'For i =1 To 5
    '输入玩家手势
 '   user = InputBox("0:石头、1：剪刀、2：布")
  '  Call userInputJust(user)
'Next

Do While battle <> 0 '当battle变量为0时，停止循环
  'MsgBox Count
  '输入玩家手势
  user = InputBox("0:石头、1：剪刀、2：布")
  Call userInputJust(user)
Loop


'显示玩家的获胜次数
MsgBox "玩家获胜次数： "& wins

