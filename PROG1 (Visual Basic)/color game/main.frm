VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "CoL0r GaMe"
   ClientHeight    =   6585
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   8775
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "main.frx":0000
   ScaleHeight     =   6585
   ScaleWidth      =   8775
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      BackColor       =   &H00FFC0C0&
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   720
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Exit"
      Top             =   3360
      Width           =   3495
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFFFC0&
      Caption         =   "&About"
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   2
      ToolTipText     =   "About Color Game"
      Top             =   2400
      Width           =   3495
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FFC0C0&
      Caption         =   "&Help/ &Instruction"
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   1
      ToolTipText     =   "Help/ Instruction"
      Top             =   1440
      Width           =   3495
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFFC0&
      Caption         =   "&New Game"
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   0
      ToolTipText     =   "New Game"
      Top             =   480
      Width           =   3495
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Show
Form2.Hide
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HFFFF00
End Sub

Private Sub Command2_Click()
Form2.Hide
Form4.Show
End Sub

Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command2.BackColor = &HFF8080

End Sub

Private Sub Command3_Click()
Form3.Show
Form2.Hide
End Sub

Private Sub Command3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command3.BackColor = &HFFFF00
End Sub

Private Sub Command4_Click()
End
End Sub

Private Sub Command4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command4.BackColor = &HFF8080
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HFFFFC0
Command2.BackColor = &HFFC0C0
Command3.BackColor = &HFFFFC0
Command4.BackColor = &HFFC0C0
End Sub
