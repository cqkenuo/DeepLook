Attribute VB_Name = "ModLvTimer"
'*************************************************************************
''               ����Ϊ�ң���Ϊ����
''      ���ƾ�VB��.NETԴ�벩�ͺ����ղ�����
''��    վ��http://www.Mndsoft.com/
''e-mail  ��mndsoft@126.com
''�������ڣ�2009-10-08 10:11:28
''QQ      ��88382850
''   ��������µġ��õĴ�������ṩ�����ƾ��Ϸ������ô��ѧϰŶ!
''----------------------------------------------------------------------
'**ϵͳ���ƣ�VB��.NET����Դ����ɨ��������� V4.12.0
'**ģ��������
'**ģ �� ����ModLvTimer
'**�� �� �ˣ�
'**�� �� �ߣ����ƾ�(mndsoft)
'**��    �ڣ�2009-10-08 10:11:28
'**�� �� �ˣ�
'**��    �ڣ�
'**��    ����
'**��    ����V4.12.0
'*************************************************************************
' THIS MODULE WAS NOT WRITTEN BY DEAN CAMERA. I CANNOT OFFER ANY SUPPORT FOR THIS MODULE.


' REQUIRED: copy & paste these few lines in any module of your project
' This is used by every lvButtons control as a replacement of the Timer control
' By doing it this way, each button control does NOT need an individual timer control
' The timer function is primarily used to determine when the mouse enters/leaves
' the button's physical region on the screen.

Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (pDest As Any, pSource As Any, ByVal ByteLen As Long)
Private Declare Function GetProp Lib "user32" Alias "GetPropA" (ByVal hwnd As Long, ByVal lpString As String) As Long

Public Function lv_TimerCallBack(ByVal hwnd As Long, ByVal Message As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Dim tgtButton As ucButtons_H
' when timer was intialized, the button control's hWnd
' had property set to the handle of the control itself
' and the timer ID was also set as a window property
CopyMemory tgtButton, GetProp(hwnd, "lv_ClassID"), &H4
Call tgtButton.TimerUpdate(GetProp(hwnd, "lv_TimerID"))  ' fire the button's event
CopyMemory tgtButton, 0&, &H4                                    ' erase this instance
End Function

