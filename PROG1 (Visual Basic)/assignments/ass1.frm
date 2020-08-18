VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   3165
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3735
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   11.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H0000FFFF&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      BackColor       =   &H0000FFFF&
      Caption         =   "E&XIT"
      BeginProperty Font 
         Name            =   "BrodyD"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000FFFF&
      Caption         =   "&START"
      BeginProperty Font 
         Name            =   "BrodyD"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1440
      Width           =   975
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00808080&
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   2520
      MaxLength       =   2
      TabIndex        =   1
      Top             =   960
      Width           =   735
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00808080&
      CausesValidation=   0   'False
      ForeColor       =   &H00FFFF00&
      Height          =   375
      HideSelection   =   0   'False
      Left            =   2520
      LinkTimeout     =   0
      MaxLength       =   2
      TabIndex        =   0
      Top             =   360
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private X As Integer

Private Sub Command1_Click()
For X = 1 To Val(Text2.Text)
Print Val(Text1.Text)
Text1.Text = Text1.Text + 2
Next
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HC0C0&
End Sub

Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command2.BackColor = &HC0C0&
End Sub

Private Sub Command2_Click()
Command2.BackColor = &HC0C0&
End
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HFFFF&
Command2.BackColor = &HFFFF&
End Sub

Private Sub Text1_click()
Text1.Text = " "
End Sub

Private Sub Text2_click()
Text2.Text = " "
End Sub
