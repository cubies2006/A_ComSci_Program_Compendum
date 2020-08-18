VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "CoL0r GaMe"
   ClientHeight    =   11520
   ClientLeft      =   120
   ClientTop       =   900
   ClientWidth     =   15360
   LinkTopic       =   "Form1"
   Moveable        =   0   'False
   ScaleHeight     =   11520
   ScaleWidth      =   15360
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command5 
      Caption         =   "reset"
      Height          =   195
      Left            =   10920
      TabIndex        =   22
      Top             =   7920
      Width           =   615
   End
   Begin VB.Timer Timer5 
      Interval        =   80
      Left            =   9120
      Top             =   2040
   End
   Begin VB.Timer Timer4 
      Interval        =   80
      Left            =   5520
      Top             =   1920
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2760
      Locked          =   -1  'True
      MaxLength       =   8
      TabIndex        =   21
      Top             =   7200
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   10680
      Locked          =   -1  'True
      MaxLength       =   3
      TabIndex        =   20
      Top             =   7200
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "&Bet"
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   10200
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   6480
      Width           =   1935
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00000000&
      Caption         =   "Red"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "ArabBruD"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   630
      Left            =   6240
      TabIndex        =   18
      Top             =   6720
      Width           =   1935
   End
   Begin VB.OptionButton Option6 
      BackColor       =   &H00000000&
      Caption         =   "Violet"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "ArabBruD"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   630
      Left            =   6240
      TabIndex        =   8
      Top             =   10320
      Width           =   1935
   End
   Begin VB.OptionButton Option5 
      BackColor       =   &H00000000&
      Caption         =   "Blue"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "ArabBruD"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   630
      Left            =   6240
      TabIndex        =   7
      Top             =   9600
      Width           =   1935
   End
   Begin VB.OptionButton Option4 
      BackColor       =   &H00000000&
      Caption         =   "Green"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "ArabBruD"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   630
      Left            =   6240
      TabIndex        =   6
      Top             =   8880
      Width           =   1935
   End
   Begin VB.OptionButton Option3 
      BackColor       =   &H00000000&
      Caption         =   "Yellow"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "ArabBruD"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   630
      Left            =   6240
      TabIndex        =   5
      Top             =   8160
      Width           =   1935
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00000000&
      Caption         =   "Orange"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "ArabBruD"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   630
      Left            =   6240
      TabIndex        =   4
      Top             =   7440
      Width           =   2055
   End
   Begin VB.Timer Timer3 
      Interval        =   75
      Left            =   120
      Top             =   3240
   End
   Begin VB.Timer Timer2 
      Interval        =   70
      Left            =   120
      Top             =   2760
   End
   Begin VB.Timer Timer1 
      Interval        =   80
      Left            =   1920
      Top             =   1800
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFC0C0&
      Caption         =   "&End Game"
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   10200
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   5520
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "St&Op"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   5520
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "&Spin"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3000
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   5520
      Width           =   1935
   End
   Begin VB.Label Label10 
      BackColor       =   &H00000000&
      Caption         =   "E"
      BeginProperty Font 
         Name            =   "NevisonCasD"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1335
      Left            =   10440
      TabIndex        =   17
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label9 
      BackColor       =   &H00000000&
      Caption         =   "m"
      BeginProperty Font 
         Name            =   "Shannon"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   1215
      Left            =   9360
      TabIndex        =   16
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label8 
      BackColor       =   &H00000000&
      Caption         =   "a"
      BeginProperty Font 
         Name            =   "Century"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   1335
      Left            =   8640
      TabIndex        =   15
      Top             =   0
      Width           =   735
   End
   Begin VB.Label Label7 
      BackColor       =   &H00000000&
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   1215
      Left            =   7560
      TabIndex        =   14
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label6 
      BackColor       =   &H00000000&
      Caption         =   "r"
      BeginProperty Font 
         Name            =   "NevisonCasD"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   1335
      Left            =   6720
      TabIndex        =   13
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label5 
      BackColor       =   &H00000000&
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "VladimirScrD"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   1095
      Left            =   5640
      TabIndex        =   12
      Top             =   240
      Width           =   975
   End
   Begin VB.Label Label4 
      BackColor       =   &H00000000&
      Caption         =   "L"
      BeginProperty Font 
         Name            =   "Quill"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1215
      Left            =   4920
      TabIndex        =   11
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label3 
      BackColor       =   &H00000000&
      Caption         =   "o"
      BeginProperty Font 
         Name            =   "MotterFemD"
         Size            =   60
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1095
      Left            =   4200
      TabIndex        =   10
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "NevisonCasD"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1335
      Left            =   3600
      TabIndex        =   9
      Top             =   120
      Width           =   735
   End
   Begin VB.Image Image9 
      Enabled         =   0   'False
      Height          =   615
      Left            =   8280
      Picture         =   "spin.frx":0000
      Stretch         =   -1  'True
      Top             =   10320
      Width           =   615
   End
   Begin VB.Image Image8 
      Enabled         =   0   'False
      Height          =   615
      Left            =   8280
      Picture         =   "spin.frx":0473
      Stretch         =   -1  'True
      Top             =   9600
      Width           =   615
   End
   Begin VB.Image Image7 
      Enabled         =   0   'False
      Height          =   615
      Left            =   8280
      Picture         =   "spin.frx":0FFB
      Stretch         =   -1  'True
      Top             =   8880
      Width           =   615
   End
   Begin VB.Image Image6 
      Enabled         =   0   'False
      Height          =   615
      Left            =   8280
      Picture         =   "spin.frx":1593
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   615
   End
   Begin VB.Image Image5 
      Enabled         =   0   'False
      Height          =   615
      Left            =   8280
      Picture         =   "spin.frx":1BBB
      Stretch         =   -1  'True
      Top             =   7440
      Width           =   615
   End
   Begin VB.Image Image4 
      Enabled         =   0   'False
      Height          =   615
      Left            =   8280
      Picture         =   "spin.frx":21CE
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   615
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "mOneY"
      BeginProperty Font 
         Name            =   "TimeScrDLig"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   735
      Left            =   3000
      TabIndex        =   0
      Top             =   6480
      Width           =   1935
      WordWrap        =   -1  'True
   End
   Begin VB.Line Line8 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   3
      X1              =   12840
      X2              =   12840
      Y1              =   2040
      Y2              =   4560
   End
   Begin VB.Line Line7 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   3
      X1              =   2040
      X2              =   2040
      Y1              =   2040
      Y2              =   4560
   End
   Begin VB.Line Line6 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   3
      X1              =   9840
      X2              =   12240
      Y1              =   5160
      Y2              =   5160
   End
   Begin VB.Line Line5 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   3
      X1              =   6240
      X2              =   8640
      Y1              =   5160
      Y2              =   5160
   End
   Begin VB.Line Line4 
      BorderColor     =   &H000080FF&
      BorderWidth     =   3
      X1              =   2640
      X2              =   5040
      Y1              =   5160
      Y2              =   5160
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   3
      X1              =   9840
      X2              =   12240
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Line Line2 
      BorderColor     =   &H0000FFFF&
      BorderWidth     =   3
      X1              =   6240
      X2              =   8640
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      X1              =   2640
      X2              =   5040
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H00FFFFFF&
      BorderColor     =   &H00E0E0E0&
      BorderWidth     =   3
      Height          =   3615
      Left            =   2040
      Shape           =   4  'Rounded Rectangle
      Top             =   1560
      Width           =   10815
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Height          =   2775
      Left            =   9600
      Shape           =   4  'Rounded Rectangle
      Top             =   1920
      Width           =   2895
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Height          =   2775
      Left            =   6000
      Shape           =   4  'Rounded Rectangle
      Top             =   1920
      Width           =   2895
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00000080&
      BorderWidth     =   2
      Height          =   2775
      Left            =   2400
      Shape           =   4  'Rounded Rectangle
      Top             =   1920
      Width           =   2895
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   2295
      Left            =   9840
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   2415
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   2295
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   2415
   End
   Begin VB.Image Image1 
      BorderStyle     =   1  'Fixed Single
      Height          =   2295
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, b, c, d As Byte
Dim bet, m, n, o, p As Integer

Private Sub Command1_Click()
Command1.Enabled = False
Command2.Enabled = True
Timer1.Enabled = True
Timer2.Enabled = True
Timer3.Enabled = True
Timer4.Enabled = True
Timer5.Enabled = True
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HFF&
End Sub

Private Sub Command2_Click()
Dim m, n, bet As Integer


If a = 0 And b <> 0 And c <> 0 And Option1.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 0 And b = 0 And c <> 0 And Option1.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 0 And b <> 0 And c = 0 And Option1.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a = 0 And b = 0 And c <> 0 And Option1.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 0 And b <> 0 And c = 0 And Option1.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a <> 0 And b = 0 And c = 0 And Option1.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 0 And b = 0 And c = 0 And Option1.Value = True Then
m = (Val(Text2.Text) * 4)
End If

If a = 1 And b <> 1 And c <> 1 And Option2.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 1 And b = 1 And c <> 1 And Option2.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 1 And b <> 1 And c = 1 And Option2.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a = 1 And b = 1 And c <> 1 And Option2.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 1 And b <> 1 And c = 1 And Option2.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a <> 1 And b = 1 And c = 1 And Option2.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 1 And b = 1 And c = 1 And Option2.Value = True Then
m = (Val(Text2.Text) * 4)
End If

If a = 2 And b <> 2 And c <> 2 And Option3.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 2 And b = 2 And c <> 2 And Option3.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 2 And b <> 2 And c = 2 And Option3.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a = 2 And b = 2 And c <> 2 And Option3.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 2 And b <> 2 And c = 2 And Option3.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a <> 2 And b = 2 And c = 2 And Option3.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 2 And b = 2 And c = 2 And Option3.Value = True Then
m = (Val(Text2.Text) * 4)
End If

If a = 3 And b <> 3 And c <> 3 And Option4.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 3 And b = 3 And c <> 3 And Option4.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 3 And b <> 3 And c = 3 And Option4.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a = 3 And b = 3 And c <> 3 And Option4.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 3 And b <> 3 And c = 3 And Option4.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a <> 3 And b = 3 And c = 3 And Option4.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 3 And b = 3 And c = 3 And Option4.Value = True Then
m = (Val(Text2.Text) * 4)
End If

If a = 4 And b <> 4 And c <> 4 And Option5.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 4 And b = 4 And c <> 4 And Option5.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 4 And b <> 4 And c = 4 And Option5.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a = 4 And b = 4 And c <> 4 And Option5.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 4 And b <> 4 And c = 4 And Option5.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a <> 4 And b = 4 And c = 4 And Option5.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 4 And b = 4 And c = 4 And Option5.Value = True Then
m = (Val(Text2.Text) * 4)
End If

If a = 5 And b <> 5 And c <> 5 And Option6.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 5 And b = 5 And c <> 5 And Option6.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a <> 5 And b <> 5 And c = 5 And Option6.Value = True Then
m = (Val(Text2.Text) * 2)
ElseIf a = 5 And b = 5 And c <> 5 And Option6.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 5 And b <> 5 And c = 5 And Option6.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a <> 5 And b = 5 And c = 5 And Option6.Value = True Then
m = (Val(Text2.Text) * 3)
ElseIf a = 5 And b = 5 And c = 5 And Option6.Value = True Then
m = (Val(Text2.Text) * 4)
End If
Text1.Text = (Val(Text1.Text) + m)
Command1.Enabled = False
Command2.Enabled = False
Command4.Enabled = True
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option5.Enabled = False
Option6.Enabled = False
Option1.Value = False
Option2.Value = False
Option3.Value = False
Option4.Value = False
Option5.Value = False
Option6.Value = False
Text2.Text = ""
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Enabled = False
Timer5.Enabled = False

if

End Sub

Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command2.BackColor = &HFF00&
End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub Command3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command3.BackColor = &HFF8080
End Sub

Private Sub Command4_Click()
Command4.Enabled = False
n = Text1.Text
bet = InputBox("How much is your bet?")
ans = MsgBox("Are you sure you want to bet " & bet & "?", vbYesNo, "Bet")
If bet > n Or bet = 0 And ans = vbYes Then
MsgBox ("Invallid entry!")
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option5.Enabled = False
Option6.Enabled = False
Command4.Enabled = True
ElseIf bet <= n And ans = vbYes Then
Text1.Text = n - bet
Text2.Text = bet
Command3.Enabled = True
Option1.Enabled = True
Option2.Enabled = True
Option3.Enabled = True
Option4.Enabled = True
Option5.Enabled = True
Option6.Enabled = True
Image4.Enabled = True
Image5.Enabled = True
Image6.Enabled = True
Image7.Enabled = True
Image8.Enabled = True
Image9.Enabled = True
End If
End Sub

Private Sub Command4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command4.BackColor = &HFFFF&
End Sub

Private Sub Command5_Click()
Command4.Enabled = True
End Sub

Private Sub Command5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command5.BackColor = &HC0C000
End Sub

Private Sub Form_Initialize()
Text1.Text = "500"
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Enabled = False
Timer5.Enabled = False
End Sub

Private Sub Form_Load()
Text1.Text = 500
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Enabled = False
Timer5.Enabled = False

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HC0C0FF
Command2.BackColor = &HC0FFC0
Command3.BackColor = &HFFC0C0
Command4.BackColor = &HC0FFFF
End Sub

Private Sub Option1_Click()
If Option1.Value = True Then
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option5.Enabled = False
Option6.Enabled = False
Command1.Enabled = True

Command4.Enabled = False
End If
End Sub

Private Sub Option2_Click()
If Option2.Value = True Then
Option1.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option5.Enabled = False
Option6.Enabled = False
Command1.Enabled = True

Command4.Enabled = False
End If

End Sub

Private Sub Option3_Click()
If Option3.Value = True Then
Option2.Enabled = False
Option1.Enabled = False
Option4.Enabled = False
Option5.Enabled = False
Option6.Enabled = False
Command1.Enabled = True

Command4.Enabled = False
End If

End Sub

Private Sub Option4_Click()
If Option4.Value = True Then
Option2.Enabled = False
Option3.Enabled = False
Option1.Enabled = False
Option5.Enabled = False
Option6.Enabled = False
Command1.Enabled = True

Command4.Enabled = False
End If

End Sub

Private Sub Option5_Click()
If Option5.Value = True Then
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option1.Enabled = False
Option6.Enabled = False
Command1.Enabled = True

Command4.Enabled = False
End If

End Sub

Private Sub Option6_Click()
If Option6.Value = True Then
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option5.Enabled = False
Option1.Enabled = False
Command1.Enabled = True
Command4.Enabled = False
End If
End Sub

Private Sub Timer1_Timer()
a = Int(Rnd * 6)
Select Case a
Case Is = 0
Image1.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\apple.jpg")
Case Is = 1
Image1.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\orange.gif")
Case Is = 2
Image1.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\banan2.gif")
Case Is = 3
Image1.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\avocado.gif")
Case Is = 4
Image1.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\boysenberrybluefinla.gif")
Case Is = 5
Image1.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\blueberries.gif")
End Select

b = Int(Rnd * 6)
Select Case b
Case Is = 0
Image2.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\apple.jpg")
Case Is = 1
Image2.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\orange.gif")
Case Is = 2
Image2.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\banan2.gif")
Case Is = 3
Image2.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\avocado.gif")
Case Is = 4
Image2.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\boysenberrybluefinla.gif")
Case Is = 5
Image2.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\blueberries.gif")
End Select

c = Int(Rnd * 6)
Select Case c
Case Is = 0
Image3.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\apple.jpg")
Case Is = 1
Image3.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\orange.gif")
Case Is = 2
Image3.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\banan2.gif")
Case Is = 3
Image3.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\avocado.gif")
Case Is = 4
Image3.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\boysenberrybluefinla.gif")
Case Is = 5
Image3.Picture = LoadPicture("C:\Documents and Settings\Aileen\My Documents\ailene\visual basic\color game\blueberries.gif")
End Select

End Sub

Private Sub Timer2_Timer()
Shape1.BorderColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Shape2.BorderColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Shape3.BorderColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
End Sub

Private Sub Timer3_Timer()
Label2.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Label3.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Label4.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Label5.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Label6.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Label7.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Label8.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Label9.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))
Label10.ForeColor = RGB(Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500))

End Sub

