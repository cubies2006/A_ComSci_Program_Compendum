VERSION 5.00
Begin VB.Form Prime_Composite 
   BackColor       =   &H00C0C0C0&
   Caption         =   "Prime or Composite"
   ClientHeight    =   2625
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3015
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   2625
   ScaleWidth      =   3015
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdPrimeComposite 
      Caption         =   "&START"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   720
      TabIndex        =   1
      Top             =   960
      Width           =   1575
   End
   Begin VB.TextBox txtNumber 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
   Begin VB.Label lblPrimeComposite 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   1920
      Width           =   2535
   End
End
Attribute VB_Name = "Prime_Composite"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim a As Integer, b As Integer, c As Integer

Private Sub cmdPrimeComposite_Click()
    a = txtNumber.Text
    b = 1
    c = 2
    While (c < a)
        If (a Mod c = 0) Then
            b = b + 1
            c = a
        End If
        c = c + 1
    Wend
    If (b > 1) Then
        lblPrimeComposite.Caption = "Composite"
    Else
        lblPrimeComposite.Caption = "Prime"
    End If
End Sub

Private Sub txtNumber_Change()
    If IsNumeric(txtNumber.Text) Then
    Else
        txtNumber.Text = ""
    End If
End Sub
