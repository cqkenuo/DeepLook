VERSION 5.00
Begin VB.UserControl ucDeepLookHeader 
   BackColor       =   &H00FFFFFF&
   ClientHeight    =   450
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5355
   Picture         =   "CtlDeepLookHeader.ctx":0000
   ScaleHeight     =   450
   ScaleWidth      =   5355
   ToolboxBitmap   =   "CtlDeepLookHeader.ctx":4B12
End
Attribute VB_Name = "ucDeepLookHeader"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'*************************************************************************
''               ����Ϊ�ң���Ϊ����
''      ���ƾ�VB��.NETԴ�벩�ͺ����ղ�����
''��    վ��http://www.Mndsoft.com/
''e-mail  ��mndsoft@126.com
''�������ڣ�2009-10-08 10:13:00
''QQ      ��88382850
''   ��������µġ��õĴ�������ṩ�����ƾ��Ϸ������ô��ѧϰŶ!
''----------------------------------------------------------------------
'**ϵͳ���ƣ�VB��.NET����Դ����ɨ��������� V4.12.0
'**ģ��������
'**ģ �� ����ucDeepLookHeader
'**�� �� �ˣ�
'**�� �� �ߣ����ƾ�(mndsoft)
'**��    �ڣ�2009-10-08 10:13:00
'**�� �� �ˣ�
'**��    �ڣ�
'**��    ����
'**��    ����V4.12.0
'*************************************************************************
Option Explicit


' Used to minimize memory requirements for DeepLook by only storing one logo

Private Sub UserControl_Resize()
    On Error Resume Next
    
    UserControl.Height = 370
    UserControl.Width = UserControl.Parent.Width
End Sub

Sub ResizeMe()
    UserControl_Resize
End Sub
