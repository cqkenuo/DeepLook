VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmOptions 
   BackColor       =   &H00D5E6EA&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "���ѡ��"
   ClientHeight    =   1905
   ClientLeft      =   2175
   ClientTop       =   1935
   ClientWidth     =   6510
   Icon            =   "frmAddinOptions.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1905
   ScaleWidth      =   6510
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
   Begin VB.CheckBox chkShowWarning 
      BackColor       =   &H00D5E6EA&
      Caption         =   "ɨ��ʱ��ʾ������ͼ��һ�������ļ�δ����"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   960
      Width           =   6255
   End
   Begin MSComDlg.CommonDialog cdlgDialogs 
      Left            =   5880
      Top             =   720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin DeepLookAddin.ucButtons_H btnFindEXE 
      Height          =   300
      Left            =   6000
      TabIndex        =   3
      Top             =   360
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   529
      Caption         =   "..."
      CapAlign        =   2
      BackStyle       =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      cBhover         =   12632256
      Focus           =   0   'False
      cGradient       =   12632256
      Gradient        =   3
      Mode            =   0
      Value           =   0   'False
      cBack           =   16777215
   End
   Begin VB.TextBox txtEXELoc 
      Height          =   285
      Left            =   240
      TabIndex        =   2
      Top             =   360
      Width           =   5655
   End
   Begin DeepLookAddin.ucButtons_H btnSaveChanges 
      Height          =   375
      Left            =   1800
      TabIndex        =   0
      Top             =   1440
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      Caption         =   "�������"
      CapAlign        =   2
      BackStyle       =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      cGradient       =   0
      Mode            =   0
      Value           =   0   'False
      Image           =   "frmAddinOptions.frx":058A
      cBack           =   16777215
   End
   Begin DeepLookAddin.ucButtons_H btnCancel 
      Height          =   375
      Left            =   3600
      TabIndex        =   4
      Top             =   1440
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   661
      Caption         =   "ȡ��"
      CapAlign        =   2
      BackStyle       =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      cGradient       =   0
      Mode            =   0
      Value           =   0   'False
      Image           =   "frmAddinOptions.frx":0ADE
      cBack           =   16777215
   End
   Begin VB.Label lblDLEXELoc 
      BackStyle       =   0  'Transparent
      Caption         =   "��ִ���ļ�λ��:"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   3135
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*************************************************************************
''               ����Ϊ�ң���Ϊ����
''      ���ƾ�VB��.NETԴ�벩�ͺ����ղ�����
''��    վ��http://www.Mndsoft.com/
''e-mail  ��mndsoft@126.com
''�������ڣ�2009-10-08 10:15:27
''QQ      ��88382850
''   ��������µġ��õĴ�������ṩ�����ƾ��Ϸ������ô��ѧϰŶ!
''----------------------------------------------------------------------
'**ϵͳ���ƣ�VB��.NET����Դ����ɨ��������� V4.12.0
'**ģ�����������ѡ��
'**ģ �� ����frmOptions
'**�� �� �ˣ�
'**�� �� �ߣ����ƾ�(mndsoft)
'**��    �ڣ�2009-10-08 10:15:27
'**�� �� �ˣ�
'**��    �ڣ�
'**��    ����
'**��    ����V1.0.0
'*************************************************************************
Option Explicit

Public Sub LoadOptions()
    Dim EXELocation As String
    
    EXELocation = GetSetting("DLAddin", "Options", "EXEpath", vbNullString)

    If EXELocation = vbNullString Then
        txtEXELoc.Text = "No location known. Click to enter location."
        txtEXELoc.ForeColor = RGB(160, 160, 160)
        
        btnSaveChanges.Enabled = False
    Else
        txtEXELoc.Text = EXELocation
    End If

    chkShowWarning.Value = GetSetting("DLAddin", "Options", "ShowWarning", 1)
End Sub

Private Sub btnCancel_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Me.Hide
End Sub

Private Sub btnFindEXE_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    With cdlgDialogs
        .FileName = "DeepLook.exe"
        .Filter = "DeepLook EXE (DeepLook.exe)|DeepLook.exe"
        .ShowOpen
                
        txtEXELoc.Text = .FileName
        txtEXELoc.ForeColor = vbBlack
        btnSaveChanges.Enabled = True
    End With
End Sub

Private Sub btnSaveChanges_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If txtEXELoc.Text <> vbNullString Then
        SaveSetting "DLAddin", "Options", "EXEpath", txtEXELoc.Text
        SaveSetting "DLAddin", "Options", "ShowWarning", chkShowWarning.Value
                
        Me.Hide
    End If
End Sub

Private Sub txtEXELoc_Click()
    If txtEXELoc.ForeColor <> vbBlack Then
        txtEXELoc.Text = vbNullString
        txtEXELoc.ForeColor = vbBlack
        
        btnSaveChanges.Enabled = True
    End If
End Sub

Private Sub txtEXELoc_LostFocus()
    If txtEXELoc.Text = vbNullString Then
        txtEXELoc.Text = "No location known. Click to enter location."
        txtEXELoc.ForeColor = RGB(160, 160, 160)
        
        btnSaveChanges.Enabled = False
    End If
End Sub
