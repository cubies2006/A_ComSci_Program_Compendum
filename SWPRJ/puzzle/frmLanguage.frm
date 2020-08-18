VERSION 5.00
Begin VB.Form frmLanguage 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Select Language Type"
   ClientHeight    =   3090
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4710
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   4710
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Filipino"
      Height          =   615
      Left            =   1320
      TabIndex        =   2
      Top             =   1920
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "English"
      Height          =   615
      Left            =   1320
      TabIndex        =   1
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "What Language Type Do You Want To Use?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   4020
   End
End
Attribute VB_Name = "frmLanguage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmStorySelect.txtlang.Text = 1


frmStorySelect.Show
Unload frmModeSelect
Unload Me
End Sub

Private Sub Command2_Click()
frmStorySelect.txtlang.Text = 2


frmStorySelect.Show
Unload frmModeSelect
Unload Me
End Sub
