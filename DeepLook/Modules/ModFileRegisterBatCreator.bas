Attribute VB_Name = "ModFileRegisterBatCreator"
'*************************************************************************
''               ����Ϊ�ң���Ϊ����
''      ���ƾ�VB��.NETԴ�벩�ͺ����ղ�����
''��    վ��http://www.Mndsoft.com/
''e-mail  ��mndsoft@126.com
''�������ڣ�2009-10-08 10:11:18
''QQ      ��88382850
''   ��������µġ��õĴ�������ṩ�����ƾ��Ϸ������ô��ѧϰŶ!
''----------------------------------------------------------------------
'**ϵͳ���ƣ�VB��.NET����Դ����ɨ��������� V4.12.0
'**ģ��������
'**ģ �� ����ModFileRegisterBatCreator
'**�� �� �ˣ�
'**�� �� �ߣ����ƾ�(mndsoft)
'**��    �ڣ�2009-10-08 10:11:18
'**�� �� �ˣ�
'**��    �ڣ�
'**��    ����
'**��    ����V4.12.0
'*************************************************************************

Option Explicit

'-----------------------------------------------------------------------------------------------
Dim BATFileNum As Integer
'-----------------------------------------------------------------------------------------------

Public Sub CreateBatHeader(FileName As String)
    BATFileNum = FreeFile
    Open FileName For Output As #BATFileNum

    Print #BATFileNum, "@echo off" & vbCrLf & "echo                    En-Tech DeepLook Project Scanner" & vbCrLf & _
        "echo             *** Automatic file register batch script file ***" & vbCrLf & _
        "echo -------------------------------------------------------------------------------" & vbCrLf & _
        "echo You must be using WinME/98/95 and have the RegSvr32.exe in your windows folder." & vbNewLine & "echo." & _
        vbCrLf & "pause" & vbCrLf & "cls"
End Sub

Public Sub AddBatRegAndCopyFile(FileName As String, Findex As Long, Fmax As Long)
    Print #BATFileNum, "echo *** Copying File #" & Findex & " of " & Fmax & " (" & FileName & ")..."
    Print #BATFileNum, "echo." & vbCrLf & "copy """ & FileName & """, """ & "%WINDIR%\System\" & FileName & """"
    Print #BATFileNum, "echo *** Registering File #" & Findex & " of " & Fmax & " (" & FileName & ")..."
    Print #BATFileNum, "%WINDIR%\System\Regsvr32.exe ""%WINDIR%\System\" & FileName & """ /s"
    Print #BATFileNum, "wait 1" & vbCrLf & "cls"
End Sub

Public Sub AddBatFooter(FileName As String)
    Print #BATFileNum, "echo." & vbCrLf & "echo." & vbCrLf & "echo File copy/registration complete." & vbCrLf & "pause"
    
    Close #BATFileNum
End Sub
