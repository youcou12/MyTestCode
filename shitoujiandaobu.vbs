' ��ס�ļ���ʽһ��Ҫ����ΪANSI/ASCC��ʽ����Ȼ��������
Dim gesture(2)
gesture(0)="ʯͷ"
gesture(1)="����"
gesture(2)= " �� "

' ��ʼ������һ�ʤ���������ı���
wins = 0

'��ʼ����������
battle = 5

' ��ʼ�����������
Randomize

'��ʾ����������Ϣ
MsgBox "ʯͷ��������Ϸ Ver.1.00 by H.Yzzawa"

Sub userInputJust(userInput)
    
    flag1 = False
    if isnumeric(userInput) Then
    	flag1 = True
    End If
    
    If(flag1=False) Then
    	MsgBox "�ף���ֻ����������0,1,2,������������ֵŶ��"
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
    	MsgBox "�ף���ֻ������0,1,2,������������ֵŶ��"
    	Exit Sub
    End If
    
    
    
    '����������������������
    computer = CInt(Rnd *2)

    '������ʾ˫���������Ƶ��ַ���
    '& gesture(user) & "�������: " & gesture(computer)
    's = " ��ң�"
    s = "��" & (6-battle) & "�֣�" &" ��� " & gesture(user) & " �������: " & gesture(computer)

    '�ж�ʤ������ʾ���
    If user = computer Then
        MsgBox s & " ...ƽ " 
    ElseIf computer = (user + 1 ) Mod 3 Then
        MsgBox s &"...��һ�ʤ!"
        wins = wins +1
    Else
        MsgBox s &"...�������ʤ��"
    End If
    battle = battle -1 

End Sub

'����5�ֱ���
'For i =1 To 5
    '�����������
 '   user = InputBox("0:ʯͷ��1��������2����")
  '  Call userInputJust(user)
'Next

Do While battle <> 0 '��battle����Ϊ0ʱ��ֹͣѭ��
  'MsgBox Count
  '�����������
  user = InputBox("0:ʯͷ��1��������2����")
  Call userInputJust(user)
Loop


'��ʾ��ҵĻ�ʤ����
MsgBox "��һ�ʤ������ "& wins

