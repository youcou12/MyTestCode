Set obj = CreateObject("Microsoft.XMLDOM")
obj.async = False
obj.Load "MyPet.xml"
s = ""
For i = 1 To obj.documentElement.childNodes.length
	s = s & obj.documentElement.childNodes.Item(i -1 ).nodeName
	s = s & "..."
	s = s & obj.documentElement.childNodes.Item(i - 1).Text
	s = s & vbCrLf
Next


MsgBox s