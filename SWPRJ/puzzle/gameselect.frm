VERSION 5.00
Begin VB.Form frmGselect 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Select a Game"
   ClientHeight    =   9675
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14460
   ControlBox      =   0   'False
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   9675
   ScaleWidth      =   14460
   StartUpPosition =   2  'CenterScreen
   WhatsThisHelp   =   -1  'True
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Back"
      Height          =   1095
      Left            =   5880
      TabIndex        =   2
      Top             =   6000
      Width           =   3735
   End
   Begin VB.CommandButton cmdB 
      Caption         =   "Puzzle B (Slide Mode)"
      Height          =   975
      Left            =   5880
      TabIndex        =   1
      Top             =   4560
      Width           =   3735
   End
   Begin VB.CommandButton cmdA 
      Caption         =   "Puzzle A (Drag Mode)"
      Height          =   1095
      Left            =   5880
      TabIndex        =   0
      Top             =   2880
      Width           =   3735
   End
End
Attribute VB_Name = "frmGselect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdA_Click()
frmMain.Text1.Text = 1
frmMain.Show
Unload Me

End Sub

Private Sub cmdB_Click()
frmMain.Text1.Text = ""
frmMain.Show

Unload Me

End Sub

Private Sub Command1_Click()
frmModeSelect.Show
Unload Me
End Sub


