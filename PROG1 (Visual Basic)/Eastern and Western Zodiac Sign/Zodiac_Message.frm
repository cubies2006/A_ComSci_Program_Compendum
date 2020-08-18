VERSION 5.00
Begin VB.Form Zodiac_Message 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Invalid Zodiac Sign"
   ClientHeight    =   3090
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6945
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   6945
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdExit 
      BackColor       =   &H0000FFFF&
      Caption         =   "E&XIT"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4320
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2160
      Width           =   1455
   End
   Begin VB.CommandButton cmdGoBack 
      BackColor       =   &H0000FFFF&
      Caption         =   "&GO BACK"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1320
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Image imgInvalid 
      Height          =   1695
      Left            =   360
      Picture         =   "Zodiac_Message.frx":0000
      Stretch         =   -1  'True
      Top             =   360
      Width           =   6210
   End
End
Attribute VB_Name = "Zodiac_Message"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdExit_Click()
    End
End Sub

Private Sub cmdGoBack_Click()
    Zodiac_Form.Visible = True
    Zodiac_Message.Visible = False
End Sub

Private Sub cmdGoBack_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdGoBack.BackColor = &HC0C0&
End Sub

Private Sub cmdExit_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdExit.BackColor = &HC0C0&
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdGoBack.BackColor = &HFFFF&
    cmdExit.BackColor = &HFFFF&
End Sub


