VERSION 5.00
Begin VB.Form FrmOptions 
   BackColor       =   &H00D5E6EA&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ѡ��"
   ClientHeight    =   6825
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3855
   Icon            =   "FrmOptions.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6825
   ScaleWidth      =   3855
   StartUpPosition =   2  '��Ļ����
   Begin DeepLook.ucDeepLookHeader hedDeepLookHeader 
      Height          =   375
      Left            =   0
      TabIndex        =   5
      Top             =   0
      Width           =   3945
      _ExtentX        =   6959
      _ExtentY        =   661
   End
   Begin VB.Frame fmeOptions 
      BackColor       =   &H00D5E6EA&
      Caption         =   "ѡ��"
      Height          =   5655
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   3615
      Begin DeepLook.ucButtons_H btnThoroughBestLooking 
         Height          =   375
         Left            =   840
         TabIndex        =   14
         Top             =   4560
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         Caption         =   "���� && ���"
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
         cBhover         =   14737632
         Focus           =   0   'False
         LockHover       =   3
         cGradient       =   8421504
         Mode            =   0
         Value           =   0   'False
         cBack           =   12632256
      End
      Begin VB.CheckBox chkSortSPFs 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   "����ĸ���� ����/����/����"
         Height          =   375
         Left            =   120
         TabIndex        =   22
         Top             =   1680
         Width           =   3255
      End
      Begin VB.CheckBox chkScannedFileToTop 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   $"FrmOptions.frx":058A
         Height          =   330
         Left            =   120
         TabIndex        =   21
         Top             =   3495
         Width           =   3255
      End
      Begin DeepLook.ucThreeDLine ucThreeDLine1 
         Height          =   45
         Left            =   240
         TabIndex        =   20
         Top             =   2130
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   79
         LineColour      =   12632256
      End
      Begin VB.CheckBox chkHideSelPath 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   "��������ʽ��Ͽ��·��ѡ��"
         Height          =   375
         Left            =   120
         TabIndex        =   19
         Top             =   3040
         Width           =   3255
      End
      Begin DeepLook.ucThreeDLine linSep2 
         Height          =   45
         Left            =   2640
         TabIndex        =   17
         Top             =   4050
         Width           =   840
         _ExtentX        =   1482
         _ExtentY        =   79
         LineStyle       =   2
      End
      Begin VB.CheckBox chkAllowOneBranch 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   "ֻ�������״��ͼ�е�һ����֧"
         Height          =   375
         Left            =   120
         TabIndex        =   15
         Top             =   2650
         Width           =   3255
      End
      Begin VB.CheckBox chkFNFE 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   "��ʾ ""�ļ�δ�ҵ�"" ����"
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   2280
         Width           =   3255
      End
      Begin VB.CheckBox chkSSPFLines 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   "������ʾ ����/����/���� ��������"
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   1320
         Width           =   3255
      End
      Begin VB.CheckBox chkSGROCSO 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   "��ͼ����ʾ������ɨ�����Ŀ"
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   960
         Width           =   3255
      End
      Begin VB.CheckBox chkSSFPPARA 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   "��ʾ����/����/���ԵȲ���"
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   3255
      End
      Begin VB.CheckBox chkCheckMaliciousCode 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D5E6EA&
         Caption         =   "���Ǳ�ڶ������"
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   3255
      End
      Begin DeepLook.ucButtons_H btnFast 
         Height          =   375
         Left            =   1080
         TabIndex        =   11
         Top             =   4200
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   661
         Caption         =   "����"
         CapAlign        =   2
         BackStyle       =   2
         Shape           =   3
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cBhover         =   14737632
         Focus           =   0   'False
         LockHover       =   3
         cGradient       =   8421504
         Mode            =   0
         Value           =   0   'False
         cBack           =   12632256
      End
      Begin DeepLook.ucButtons_H btnThorough 
         Height          =   375
         Left            =   130
         TabIndex        =   12
         Top             =   4200
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   661
         Caption         =   "����"
         CapAlign        =   2
         BackStyle       =   2
         Shape           =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cBhover         =   14737632
         Focus           =   0   'False
         LockHover       =   3
         cGradient       =   8421504
         Mode            =   0
         Value           =   0   'False
         cBack           =   12632256
      End
      Begin DeepLook.ucButtons_H btnBestLooking 
         Height          =   375
         Left            =   2030
         TabIndex        =   13
         Top             =   4200
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   661
         Caption         =   "���"
         CapAlign        =   2
         BackStyle       =   2
         Shape           =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cBhover         =   14737632
         Focus           =   0   'False
         LockHover       =   3
         cGradient       =   8421504
         Mode            =   0
         Value           =   0   'False
         cBack           =   12632256
      End
      Begin DeepLook.ucThreeDLine linSep3 
         Height          =   45
         Left            =   120
         TabIndex        =   18
         Top             =   5010
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   79
         LineStyle       =   2
      End
      Begin DeepLook.ucThreeDLine linSep1 
         Height          =   45
         Left            =   120
         TabIndex        =   16
         Top             =   4050
         Width           =   735
         _ExtentX        =   1296
         _ExtentY        =   79
         LineStyle       =   2
      End
      Begin VB.Label lblSettingsTip 
         BackStyle       =   0  'Transparent
         Caption         =   "��ʾ��һЩ�����ѡ�����ͨ���Ҽ�����һ��������ͼ��Ŀ�󣬲鿴��ɨ��ĸ���ϸ�����ݡ�"
         Height          =   555
         Left            =   255
         TabIndex        =   7
         Top             =   5070
         Width           =   3270
      End
      Begin VB.Label lblQuickSettings 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "����ɨ������:"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   3960
         Width           =   3255
      End
   End
   Begin DeepLook.ucButtons_H btnCancel 
      Height          =   375
      Left            =   2040
      TabIndex        =   9
      Top             =   6360
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
      Focus           =   0   'False
      cGradient       =   8421504
      Mode            =   0
      Value           =   0   'False
      Image           =   "FrmOptions.frx":05A2
      cBack           =   16777215
   End
   Begin DeepLook.ucButtons_H btnSaveSettings 
      Height          =   375
      Left            =   840
      TabIndex        =   10
      Top             =   6360
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   661
      Caption         =   "����"
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
      Focus           =   0   'False
      cGradient       =   8421504
      Mode            =   0
      Value           =   0   'False
      Image           =   "FrmOptions.frx":0888
      cBack           =   16777215
   End
End
Attribute VB_Name = "FrmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*************************************************************************
''               ����Ϊ�ң���Ϊ����
''      ���ƾ�VB��.NETԴ�벩�ͺ����ղ�����
''��    վ��http://www.Mndsoft.com/
''e-mail  ��mndsoft@126.com
''�������ڣ�2009-10-08 10:10:34
''QQ      ��88382850
''   ��������µġ��õĴ�������ṩ�����ƾ��Ϸ������ô��ѧϰŶ!
''----------------------------------------------------------------------
'**ϵͳ���ƣ�VB��.NET����Դ����ɨ��������� V4.12.0
'**ģ��������
'**ģ �� ����FrmOptions
'**�� �� �ˣ�
'**�� �� �ߣ����ƾ�(mndsoft)
'**��    �ڣ�2009-10-08 10:10:34
'**�� �� �ˣ�
'**��    �ڣ�
'**��    ����
'**��    ����V4.12.0
'*************************************************************************

Option Explicit

Private Sub btnSaveSettings_Click()
    SaveSetting "DeepLook", "Options", "PMCCheck", chkCheckMaliciousCode.Value
    SaveSetting "DeepLook", "Options", "ShowSPFParams", chkSSFPPARA.Value
    SaveSetting "DeepLook", "Options", "ShowCurrItemPic", chkSGROCSO.Value
    SaveSetting "DeepLook", "Options", "ShowSPFLines", chkSSPFLines.Value
    SaveSetting "DeepLook", "Options", "ShowFNFErrors", chkFNFE.Value
    SaveSetting "DeepLook", "Options", "AllowOnlyOneBranch", chkAllowOneBranch.Value
    SaveSetting "DeepLook", "Options", "HideSelPath", chkHideSelPath.Value
    SaveSetting "DeepLook", "Options", "BringScannedFileToTop", chkScannedFileToTop.Value
    SaveSetting "DeepLook", "Options", "SortSPFs", chkSortSPFs.Value

    FrmSelProject.cmbProjectPath.ComboItems.Clear
    FrmSelProject.GetScannedFilesFromRegistry

    Unload Me
End Sub

Private Sub btnCancel_Click()
    Unload Me
End Sub

Private Sub btnBestLooking_Click()
    chkCheckMaliciousCode.Value = 0
    chkSSFPPARA.Value = 0
    chkSGROCSO.Value = 1
    chkSSPFLines.Value = 0
    chkSortSPFs.Value = 1
End Sub

Private Sub btnFast_Click()
    chkCheckMaliciousCode.Value = 0
    chkSSFPPARA.Value = 1
    chkSGROCSO.Value = 0
    chkSSPFLines.Value = 0
    chkSortSPFs.Value = 0
End Sub

Private Sub Form_Load()
    chkCheckMaliciousCode.Value = GetSetting("DeepLook", "Options", "PMCCheck", 1)
    chkSSFPPARA.Value = GetSetting("DeepLook", "Options", "ShowSPFParams", 1)
    chkSGROCSO.Value = GetSetting("DeepLook", "Options", "ShowCurrItemPic", 1)
    chkSSPFLines.Value = GetSetting("DeepLook", "Options", "ShowSPFLines", 0)
    chkFNFE.Value = GetSetting("DeepLook", "Options", "ShowFNFErrors", 1)
    chkAllowOneBranch.Value = GetSetting("DeepLook", "Options", "AllowOnlyOneBranch", 0)
    chkHideSelPath.Value = GetSetting("DeepLook", "Options", "HideSelPath", 0)
    chkScannedFileToTop.Value = GetSetting("DeepLook", "Options", "BringScannedFileToTop", 1)
    chkSortSPFs.Value = GetSetting("DeepLook", "Options", "SortSPFs", 1)
    
    RemoveTabStops Me
End Sub

Private Sub btnThorough_Click()
    chkCheckMaliciousCode.Value = 1
    chkSSFPPARA.Value = 1
    chkSGROCSO.Value = 0
    chkSSPFLines.Value = 1
    chkSortSPFs.Value = 1
End Sub

Private Sub btnThoroughBestLooking_Click()
    chkCheckMaliciousCode.Value = 1
    chkSSFPPARA.Value = 0
    chkSGROCSO.Value = 1
    chkSSPFLines.Value = 1
    chkSortSPFs.Value = 1
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then DragForm Me.hwnd ' You can move the forms by holding down the left mouse button
End Sub
