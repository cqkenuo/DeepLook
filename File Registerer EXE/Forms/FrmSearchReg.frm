VERSION 5.00
Begin VB.Form SearchReg 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "�ļ�ע��"
   ClientHeight    =   2820
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   4455
   Icon            =   "FrmSearchReg.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2820
   ScaleWidth      =   4455
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton BtnExit 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   1680
      TabIndex        =   2
      Top             =   2400
      Width           =   975
   End
   Begin VB.FileListBox RegFiles 
      Height          =   630
      Left            =   120
      Pattern         =   "*.ocx;*.dll;*.tlb"
      TabIndex        =   1
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.TextBox Info 
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "SearchReg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*************************************************************************
''               ����Ϊ�ң���Ϊ����
''      ���ƾ�VB��.NETԴ�벩�ͺ����ղ�����
''��    վ��http://www.Mndsoft.com/
''e-mail  ��mndsoft@126.com
''�������ڣ�2009-10-08 10:16:42
''QQ      ��88382850
''   ��������µġ��õĴ�������ṩ�����ƾ��Ϸ������ô��ѧϰŶ!
''----------------------------------------------------------------------
'**ϵͳ���ƣ�VB��.NET����Դ����ɨ��������� V4.12.0
'**ģ�����������ע��
'**ģ �� ����SearchReg
'**�� �� �ˣ�
'**�� �� �ߣ����ƾ�(mndsoft)
'**��    �ڣ�2009-10-08 10:16:42
'**�� �� �ˣ�
'**��    �ڣ�
'**��    ����
'**��    ����V1.0.0
'*************************************************************************
Dim FileSearch As New ClsSearch
Attribute FileSearch.VB_VarHelpID = -1

Private Sub BtnExit_Click()
    End
End Sub

Private Sub Form_Load()
    RegFiles.Path = App.Path
    Me.Show
    DoEvents
    Info.Text = Info.Text & "Searching for RegSvr32.exe...."
    DoEvents
    FileSearch.SearchFiles Environ("windir"), "RegSvr32.exe", True

    If FileSearch.Files.Count <> 0 Then
        Info.Text = Info.Text & "Found."

        For i = 0 To RegFiles.ListCount - 1
            Info.Text = Info.Text & vbNewLine & "Registering " & RegFiles.List(i) & "..."
            Shell FileSearch.Files.Item(1).FilePath & "RegSvr32.exe /s " & RegFiles.List(i)
            Info.Text = Info.Text & "Done."
            DoEvents
        Next

        Info.Text = Info.Text & vbNewLine & "All files registered."
    Else
        Info.Text = Info.Text & "Not Found, file reg failed."
    End If
End Sub
