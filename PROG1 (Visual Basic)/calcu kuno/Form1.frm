VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Discount para sa Kuripot"
   ClientHeight    =   8640
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   9870
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   FontTransparent =   0   'False
   ForeColor       =   &H00000000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   99  'Custom
   Moveable        =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   36
   ScaleMode       =   0  'User
   ScaleWidth      =   82.25
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFC0C0&
      Caption         =   "e&Xit"
      BeginProperty Font 
         Name            =   "Garamond"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   32
      ToolTipText     =   "exit"
      Top             =   1440
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FFC0FF&
      Caption         =   "&Compute"
      BeginProperty Font 
         Name            =   "Garamond"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   3960
      Style           =   1  'Graphical
      TabIndex        =   31
      ToolTipText     =   "Compute"
      Top             =   1440
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFC0C0&
      Caption         =   "&Reset"
      BeginProperty Font 
         Name            =   "Garamond"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   30
      ToolTipText     =   "Reset"
      Top             =   1440
      Width           =   1935
   End
   Begin VB.OptionButton Option6 
      BackColor       =   &H00000000&
      Caption         =   "75%"
      BeginProperty Font 
         Name            =   "Franklin Gothic Medium"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   7320
      TabIndex        =   29
      Top             =   6600
      Width           =   1215
   End
   Begin VB.OptionButton Option5 
      BackColor       =   &H00000000&
      Caption         =   "50%"
      BeginProperty Font 
         Name            =   "Franklin Gothic Medium"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   7320
      TabIndex        =   28
      Top             =   5880
      Width           =   1215
   End
   Begin VB.OptionButton Option4 
      BackColor       =   &H00000000&
      Caption         =   "40%"
      BeginProperty Font 
         Name            =   "Franklin Gothic Medium"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   7320
      TabIndex        =   27
      Top             =   5160
      Width           =   1215
   End
   Begin VB.OptionButton Option3 
      BackColor       =   &H00000000&
      Caption         =   "30%"
      BeginProperty Font 
         Name            =   "Franklin Gothic Medium"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   7320
      TabIndex        =   26
      Top             =   4440
      Width           =   1215
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00000000&
      Caption         =   "20%"
      BeginProperty Font 
         Name            =   "Franklin Gothic Medium"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   7320
      TabIndex        =   25
      Top             =   3720
      Width           =   1215
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00000000&
      Caption         =   "10%"
      BeginProperty Font 
         Name            =   "Franklin Gothic Medium"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   7320
      TabIndex        =   24
      Top             =   3000
      Width           =   1215
   End
   Begin VB.TextBox Text6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   5640
      MaxLength       =   2
      TabIndex        =   23
      Top             =   6720
      Width           =   615
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   5640
      MaxLength       =   2
      TabIndex        =   22
      Top             =   6000
      Width           =   615
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   5640
      MaxLength       =   2
      TabIndex        =   21
      Top             =   5280
      Width           =   615
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   5640
      MaxLength       =   2
      TabIndex        =   20
      Top             =   4560
      Width           =   615
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   5640
      MaxLength       =   2
      TabIndex        =   19
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   5640
      MaxLength       =   2
      TabIndex        =   18
      Top             =   3120
      Width           =   615
   End
   Begin VB.CheckBox Check6 
      BackColor       =   &H00000000&
      Caption         =   "CPU"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   1800
      TabIndex        =   17
      Top             =   6600
      Width           =   2535
   End
   Begin VB.CheckBox Check5 
      BackColor       =   &H00000000&
      Caption         =   "Monitor"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   1800
      TabIndex        =   16
      Top             =   5880
      Width           =   2415
   End
   Begin VB.CheckBox Check4 
      BackColor       =   &H00000000&
      Caption         =   "RAM"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   1800
      TabIndex        =   15
      Top             =   5160
      Width           =   2295
   End
   Begin VB.CheckBox Check3 
      BackColor       =   &H00000000&
      Caption         =   "Speaker"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   1800
      TabIndex        =   14
      Top             =   4440
      Width           =   2175
   End
   Begin VB.CheckBox Check2 
      BackColor       =   &H00000000&
      Caption         =   "Keyboard"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   1800
      TabIndex        =   13
      Top             =   3720
      Width           =   2175
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00000000&
      Caption         =   "Mouse"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   1800
      TabIndex        =   12
      Top             =   3000
      Width           =   2655
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000008&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   4320
      TabIndex        =   34
      Top             =   360
      Width           =   2535
   End
   Begin VB.Label Label4 
      BackColor       =   &H00E0E0E0&
      BackStyle       =   0  'Transparent
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "0"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   1
      EndProperty
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   435
      Left            =   4320
      LinkTimeout     =   100
      TabIndex        =   33
      Top             =   840
      Width           =   4920
   End
   Begin VB.Image Image6 
      Height          =   735
      Left            =   4200
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   4440
      Width           =   855
   End
   Begin VB.Image Image5 
      Height          =   735
      Left            =   4200
      Picture         =   "Form1.frx":2F68
      Stretch         =   -1  'True
      Top             =   5160
      Width           =   855
   End
   Begin VB.Image Image4 
      Height          =   735
      Left            =   4200
      Picture         =   "Form1.frx":6558
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   855
   End
   Begin VB.Image Image3 
      Height          =   735
      Left            =   4200
      Picture         =   "Form1.frx":9CE4
      Stretch         =   -1  'True
      Top             =   5880
      Width           =   855
   End
   Begin VB.Image Image2 
      Height          =   735
      Left            =   4200
      Picture         =   "Form1.frx":E800
      Stretch         =   -1  'True
      Top             =   3720
      Width           =   855
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   4080
      Picture         =   "Form1.frx":12F8E
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   855
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "P600"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   435
      Left            =   360
      TabIndex        =   11
      Top             =   6720
      Width           =   885
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "P500"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   435
      Left            =   360
      TabIndex        =   10
      Top             =   6000
      Width           =   885
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "P400"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   435
      Left            =   360
      TabIndex        =   9
      Top             =   5280
      Width           =   885
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "P300"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   435
      Left            =   360
      TabIndex        =   8
      Top             =   4560
      Width           =   885
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "P200"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   435
      Left            =   360
      TabIndex        =   7
      Top             =   3840
      Width           =   885
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "P100"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   435
      Left            =   360
      TabIndex        =   6
      Top             =   3120
      Width           =   885
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Discount"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   7200
      TabIndex        =   5
      Top             =   2400
      Width           =   1545
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Unit"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   5520
      TabIndex        =   4
      Top             =   2400
      Width           =   705
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Description"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   1800
      TabIndex        =   3
      Top             =   2400
      Width           =   1980
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Price"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   360
      TabIndex        =   2
      Top             =   2400
      Width           =   870
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Total Discounted Price:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   435
      Left            =   240
      TabIndex        =   1
      Top             =   840
      Width           =   4020
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Total Price:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   435
      Left            =   2280
      TabIndex        =   0
      Top             =   360
      Width           =   1950
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, b, c, d, e, f, g, h, i As Currency
Private Sub Command2_Click()
i = g - h
a = Val(Text1.Text) * 100
b = Val(Text2.Text) * 200
c = Val(Text3.Text) * 300
d = Val(Text4.Text) * 400
e = Val(Text5.Text) * 500
f = Val(Text6.Text) * 600
g = a + b + c + d + e + f
If Option1.Value = True Then
h = g * 0.1
ElseIf Option2.Value = True Then
h = g * 0.2
ElseIf Option3.Value = True Then
h = g * 0.3
ElseIf Option4.Value = True Then
h = g * 0.4
ElseIf Option5.Value = True Then
h = g * 0.5
ElseIf Option6.Value = True Then
h = g * 0.75
End If
i = g - h
Label3.Caption = "P" & g
Label4.Caption = "P" & i

End Sub

Private Sub Check1_Click()
If Check1.Value = Checked Then
Text1.Enabled = True
ElseIf Check1.Value = Unchecked Then
Text1.Text = ""
Text1.Enabled = False
End If
End Sub
Private Sub Check2_Click()
If Check2.Value = Checked Then
Text2.Enabled = True
ElseIf Check2.Value = Unchecked Then
Text2.Text = ""
Text2.Enabled = False
End If
End Sub
Private Sub Check3_Click()
If Check3.Value = Checked Then
Text3.Enabled = True
ElseIf Check3.Value = Unchecked Then
Text3.Text = ""
Text3.Enabled = False
End If
End Sub
Private Sub Check4_Click()
If Check4.Value = Checked Then
Text4.Enabled = True
ElseIf Check4.Value = Unchecked Then
Text4.Text = ""
Text4.Enabled = False
End If
End Sub
Private Sub Check5_Click()
If Check5.Value = Checked Then
Text5.Enabled = True
ElseIf Check5.Value = Unchecked Then
Text5.Text = ""
Text5.Enabled = False
End If
End Sub
Private Sub Check6_Click()
If Check6.Value = Checked Then
Text6.Enabled = True
ElseIf Check6.Value = Unchecked Then
Text6.Text = ""
Text6.Enabled = False
End If
End Sub
Private Sub Command1_Click()
Check1.Value = Unchecked
Check2.Value = Unchecked
Check3.Value = Unchecked
Check4.Value = Unchecked
Check5.Value = Unchecked
Check6.Value = Unchecked
Text1.Enabled = False
Text2.Enabled = False
Text3.Enabled = False
Text4.Enabled = False
Text5.Enabled = False
Text6.Enabled = False
Option1.Value = False
Option2.Value = False
Option3.Value = False
Option4.Value = False
Option5.Value = False
Option6.Value = False
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
Label3.Caption = ""
Label4.Caption = ""
h = 0
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HFF8080
End Sub


Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command2.BackColor = &HFF80FF
End Sub
Private Sub Command3_Click()
End
End Sub

Private Sub Command3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command3.BackColor = &HFF8080
End Sub

Private Sub Form_Activate()
Text1.Enabled = False
Text2.Enabled = False
Text3.Enabled = False
Text4.Enabled = False
Text5.Enabled = False
Text6.Enabled = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HFFC0C0
Command2.BackColor = &HFFC0FF
Command3.BackColor = &HFFC0C0
End Sub

