VERSION 5.00
Begin VB.Form frmModeSelect 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Choose A Destination"
   ClientHeight    =   9600
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   14430
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   9600
   ScaleWidth      =   14430
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Quit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   5760
      TabIndex        =   3
      Top             =   7080
      Width           =   3375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Play A Game"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   9000
      TabIndex        =   2
      Top             =   4440
      Width           =   3375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Read A Story"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   2640
      TabIndex        =   1
      Top             =   4440
      Width           =   3375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "What Would You Like To Do?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   3225
      TabIndex        =   0
      Top             =   720
      Width           =   8445
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "frmModeSelect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmLanguage.Show
End Sub

Private Sub Command2_Click()
frmGselect.Show
Unload Me
End Sub

Private Sub Command3_Click()
Unload Me
End Sub
