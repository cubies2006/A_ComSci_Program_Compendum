VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmLoading 
   BackColor       =   &H80000007&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   1920
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7755
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MinButton       =   0   'False
   Moveable        =   0   'False
   Picture         =   "frmLoading.frx":0000
   ScaleHeight     =   1920
   ScaleMode       =   0  'User
   ScaleWidth      =   13049.28
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   30
      Left            =   0
      Top             =   0
   End
   Begin MSComctlLib.ProgressBar bar 
      Height          =   255
      Left            =   1200
      TabIndex        =   0
      Top             =   840
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.Label lblpcent 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   360
      Left            =   6000
      TabIndex        =   3
      Top             =   360
      Width           =   315
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0 %"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   360
      Left            =   1200
      TabIndex        =   2
      Top             =   360
      Width           =   450
   End
   Begin VB.Label lblwait 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Wait for a while...."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   330
      Left            =   2760
      TabIndex        =   1
      Top             =   1320
      Width           =   2220
   End
End
Attribute VB_Name = "frmLoading"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Timer1.Enabled = True
End Sub


Private Sub Timer1_Timer()
lblwait.ForeColor = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))

If bar.Value <> bar.Max Then
    bar.Value = bar.Value + 1
    lblpcent.Caption = bar.Value & " %"
    
    If bar.Value >= 80 Then
        lblwait.Caption = "Loading the Inventory System..."
    ElseIf bar.Value >= 50 Then
        lblwait.Caption = "Updating database..."
    Else
        lblwait.Caption = "Please wait for a while..."
    End If
    
Else
    Timer1.Enabled = False
    frmMain.Show
    Unload Me
End If

End Sub

