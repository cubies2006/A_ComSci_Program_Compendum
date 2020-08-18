VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00808080&
   Caption         =   "Form1"
   ClientHeight    =   4965
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5085
   LinkTopic       =   "Form1"
   ScaleHeight     =   4965
   ScaleWidth      =   5085
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   1200
      Width           =   4335
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   720
      Width           =   4335
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00C0E0FF&
      Caption         =   "^"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H00C0FFFF&
      Caption         =   "\"
      Height          =   375
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00C0FFC0&
      Caption         =   "/"
      Height          =   375
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFFFC0&
      Caption         =   "*"
      Height          =   375
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FFC0C0&
      Caption         =   "-"
      Height          =   375
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFC0FF&
      Caption         =   "+"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1800
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   4335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Command1_Click()
Text3.Text = Val(Text1.Text) + Val(Text2.Text)
End Sub
Private Sub Command2_Click()
Text3.Text = Val(Text1.Text) - Val(Text2.Text)
End Sub
Private Sub Command3_Click()
Text3.Text = Val(Text1.Text) * Val(Text2.Text)
End Sub
Private Sub Command4_Click()
Text3.Text = Val(Text1.Text) / Val(Text2.Text)
End Sub
Private Sub Command5_Click()
Text3.Text = Val(Text1.Text) \ Val(Text2.Text)
End Sub
Private Sub Command6_Click()
Text3.Text = Val(Text1.Text) ^ Val(Text2.Text)
End Sub
Private Sub Text1_GotFocus()
Text1.Text = " "
End Sub
Private Sub Text2_GotFocus()
Text2.Text = ""
End Sub
Private Sub Text3_GotFocus()
Text3.Text = " "
End Sub
