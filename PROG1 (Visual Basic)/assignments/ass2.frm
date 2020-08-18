VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   3000
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3165
   LinkTopic       =   "Form1"
   ScaleHeight     =   3000
   ScaleWidth      =   3165
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "E&XIT"
      Height          =   375
      Left            =   2040
      TabIndex        =   4
      Top             =   2400
      Width           =   855
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   2160
      MaxLength       =   2
      TabIndex        =   3
      Top             =   1200
      Width           =   615
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   2160
      MaxLength       =   2
      TabIndex        =   2
      Top             =   720
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2160
      MaxLength       =   2
      TabIndex        =   1
      Top             =   240
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&START"
      Height          =   375
      Left            =   2040
      TabIndex        =   0
      Top             =   1920
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private x As Integer
Private Sub Command1_Click()
For x = 1 To Val(Text3.Text)
Print Val(Text1.Text), Val(Text2.Text)
Text1.Text = Val(Text1.Text) + Val(Text1.Text)
Text2.Text = Val(Text1.Text) + Val(Text1.Text)
Next
Text1.SetFocus
End Sub

Private Sub Command2_Click()
End
End Sub


