VERSION 5.00
Begin VB.Form Zodiac_Form 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form Zodiac Sign"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7455
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   7455
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFFF00&
      Caption         =   "E&XIT"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   2040
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FFFF00&
      Caption         =   "&RESET"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   2040
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFF00&
      Cancel          =   -1  'True
      Caption         =   "&ZODIAC SIGN"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2520
      MaskColor       =   &H00E0E0E0&
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "zodiac sign"
      Top             =   2040
      Width           =   2415
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   5160
      MaxLength       =   4
      TabIndex        =   2
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   3720
      MaxLength       =   2
      TabIndex        =   1
      Top             =   1320
      Width           =   495
   End
   Begin VB.TextBox Text1 
      CausesValidation=   0   'False
      DataField       =   "12"
      BeginProperty DataFormat 
         Type            =   0
         Format          =   "0"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   2520
      MaxLength       =   2
      OLEDragMode     =   1  'Automatic
      OLEDropMode     =   2  'Automatic
      TabIndex        =   0
      ToolTipText     =   "1-12 only"
      Top             =   1320
      Width           =   495
   End
   Begin VB.Image Image26 
      Height          =   705
      Left            =   240
      Picture         =   "Zodiac_Form.frx":0000
      Stretch         =   -1  'True
      Top             =   5880
      Width           =   7005
   End
   Begin VB.Image Image25 
      Height          =   705
      Left            =   240
      Picture         =   "Zodiac_Form.frx":5C54
      Stretch         =   -1  'True
      Top             =   120
      Width           =   7005
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   2
      DrawMode        =   5  'Not Copy Pen
      X1              =   3735
      X2              =   3735
      Y1              =   2640
      Y2              =   5400
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      X1              =   1320
      X2              =   6120
      Y1              =   1860
      Y2              =   1860
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00FF8080&
      BorderWidth     =   3
      Height          =   4935
      Left            =   480
      Shape           =   4  'Rounded Rectangle
      Top             =   840
      Width           =   6495
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Height          =   4455
      Left            =   840
      Shape           =   4  'Rounded Rectangle
      Top             =   1080
      Width           =   5775
   End
   Begin VB.Image Image24 
      Height          =   1695
      Left            =   4080
      Picture         =   "Zodiac_Form.frx":EFFA
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Image Image23 
      Height          =   1695
      Left            =   1440
      Picture         =   "Zodiac_Form.frx":105BE
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Image Image22 
      Height          =   1695
      Left            =   4080
      Picture         =   "Zodiac_Form.frx":15593
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image21 
      Height          =   1695
      Left            =   1560
      Picture         =   "Zodiac_Form.frx":1688C
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image20 
      Height          =   1695
      Left            =   4080
      Picture         =   "Zodiac_Form.frx":1B5A1
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image19 
      Height          =   1695
      Left            =   1560
      Picture         =   "Zodiac_Form.frx":1CAFC
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image18 
      Height          =   1695
      Left            =   4200
      Picture         =   "Zodiac_Form.frx":1FF63
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image17 
      Height          =   1695
      Left            =   1680
      Picture         =   "Zodiac_Form.frx":21FF1
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Image Image16 
      Height          =   1695
      Left            =   4320
      Picture         =   "Zodiac_Form.frx":25758
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image15 
      Height          =   1695
      Left            =   1560
      Picture         =   "Zodiac_Form.frx":26D9A
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image14 
      Height          =   1695
      Left            =   4200
      Picture         =   "Zodiac_Form.frx":2A4A2
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image13 
      Height          =   1695
      Left            =   1560
      Picture         =   "Zodiac_Form.frx":2C94A
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image12 
      Height          =   1695
      Left            =   4320
      Picture         =   "Zodiac_Form.frx":2F493
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image11 
      Height          =   1695
      Left            =   1440
      Picture         =   "Zodiac_Form.frx":3071A
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Image Image10 
      Height          =   1695
      Left            =   4200
      Picture         =   "Zodiac_Form.frx":32759
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image9 
      Height          =   1695
      Left            =   1440
      Picture         =   "Zodiac_Form.frx":33AF1
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Image Image8 
      Height          =   1695
      Left            =   4080
      Picture         =   "Zodiac_Form.frx":35D0F
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image7 
      Height          =   1695
      Left            =   1560
      Picture         =   "Zodiac_Form.frx":37098
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image6 
      Height          =   1695
      Left            =   4080
      Picture         =   "Zodiac_Form.frx":3A806
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image5 
      Height          =   1695
      Left            =   1560
      Picture         =   "Zodiac_Form.frx":3BDFA
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image Image4 
      Height          =   1695
      Left            =   4080
      Picture         =   "Zodiac_Form.frx":3E402
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.Image Image3 
      Height          =   1695
      Left            =   1560
      Picture         =   "Zodiac_Form.frx":3FA9B
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.Image Image2 
      Height          =   1695
      Left            =   4080
      Picture         =   "Zodiac_Form.frx":4208A
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.Image Image1 
      Height          =   1695
      Left            =   1560
      Picture         =   "Zodiac_Form.frx":447F0
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   735
      Left            =   3960
      TabIndex        =   8
      Tag             =   "645687"
      Top             =   2640
      Width           =   2175
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   735
      Left            =   1320
      TabIndex        =   7
      Top             =   2640
      Width           =   2175
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "YEAR"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   4200
      TabIndex        =   5
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "DAY"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   3000
      TabIndex        =   4
      Top             =   1320
      Width           =   735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "MONTH"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   1200
      TabIndex        =   3
      Top             =   1320
      Width           =   1455
   End
End
Attribute VB_Name = "Zodiac_Form"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Command1_Click()
Text1.SetFocus
If (Val(Text1.Text) = ("1" Or "01") And Val(Text2.Text) <= 20 And Val(Text2.Text) >= 1) Or (Val(Text1.Text) = "12" And Val(Text2.Text) >= 21 And Val(Text2.Text) <= 31) Then
    Label4.Caption = "Capricorn"
    Image1.Visible = True
ElseIf (Val(Text1.Text) = ("1" Or "01") And Val(Text2.Text) >= 20 And Val(Text2.Text) <= 31) Or (Val(Text1.Text) = ("2" Or "02") And Val(Text2.Text) <= 18 And Val(Text2.Text) >= 1) Then
    Label4.Caption = "Aquarius"
    Image3.Visible = True
ElseIf (Val(Text1.Text) = ("2" Or "02") And Val(Text2.Text) >= 19 And Val(Text2.Text) <= 28 Or Val(Text1.Text) = ("3" Or "03") And Val(Text2.Text) <= 20 And Val(Text2.Text) >= 1) Then
    Label4.Caption = "Pisces"
    Image5.Visible = True
ElseIf (Val(Text1.Text) = ("3" Or "03") And Val(Text2.Text) >= 21 And Val(Text2.Text) <= 31 Or Val(Text1.Text) = ("04" Or "4") And Val(Text2.Text) <= 20 And Val(Text2.Text) >= 1) Then
    Label4.Caption = "Aries"
    Image7.Visible = True
ElseIf (Val(Text1.Text) = ("04" Or "4") And Val(Text2.Text) >= 21 And Val(Text2.Text) <= 30 Or Val(Text1.Text) = ("05" Or "5") And Val(Text2.Text) <= 20 And Val(Text2.Text) >= 1) Then
    Label4.Caption = "Taurus"
    Image9.Visible = True
ElseIf Val(Text1.Text) = ("05" Or "5") And Val(Text2.Text) >= 21 And Val(Text2.Text) <= 31 Or Val(Text1.Text) = ("06" Or "6") And Val(Text2.Text) <= 20 And Val(Text2.Text) >= 1 Then
    Label4.Caption = "Gemini"
    Image11.Visible = True
ElseIf Val(Text1.Text) = ("06" Or "6") And Val(Text2.Text) >= 21 And Val(Text2.Text) <= 30 Or Val(Text1.Text) = ("07" Or "7") And Val(Text2.Text) <= 20 And Val(Text2.Text) >= 1 Then
    Label4.Caption = "Cancer"
    Image13.Visible = True
ElseIf Val(Text1.Text) = ("07" Or "7") And Val(Text2.Text) >= 21 And Val(Text2.Text) <= 31 Or Val(Text1.Text) = ("08" Or "8") And Val(Text2.Text) <= 20 And Val(Text2.Text) >= 1 Then
    Label4.Caption = "Leo"
    Image15.Visible = True
ElseIf Val(Text1.Text) = ("08" Or "8") And Val(Text2.Text) >= 21 And Val(Text2.Text) <= 31 Or Val(Text1.Text) = ("09" Or "9") And Val(Text2.Text) <= 22 And Val(Text2.Text) >= 1 Then
    Label4.Caption = "Virgo"
    Image17.Visible = True
ElseIf Val(Text1.Text) = ("09" Or "9") And Val(Text2.Text) >= 23 And Val(Text2.Text) <= 30 Or Val(Text1.Text) = "10" And Val(Text2.Text) <= 22 And Val(Text2.Text) >= 1 Then
    Label4.Caption = "Libra"
    Image19.Visible = True
ElseIf Val(Text1.Text) = "10" And Val(Text2.Text) >= 23 And Val(Text2.Text) <= 31 Or Val(Text1.Text) = "11" And Val(Text2.Text) <= 22 And Val(Text2.Text) >= 1 Then
    Label4.Caption = "Scorpio"
    Image21.Visible = True
ElseIf Val(Text1.Text) = "11" And Val(Text2.Text) >= 23 And Val(Text2.Text) <= 30 Or Val(Text1.Text) = "12" And Val(Text2.Text) <= 20 And Val(Text2.Text) >= 1 Then
    Label4.Caption = "Sagittarius"
    Image23.Visible = True
Else
    Zodiac_Form.Hide
    Zodiac_Message.Show
End If

If Val(Text3.Text) Mod 12 = 0 Then
    Label5.Caption = "Monkey"
    Image2.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 1 Then
    Label5.Caption = "Rooster"
    Image4.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 2 Then
    Label5.Caption = "Dog"
    Image6.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 3 Then
    Label5.Caption = "Boar"
    Image8.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 4 Then
    Label5.Caption = "Rat"
    Image10.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 5 Then
    Label5.Caption = "Ox"
    Image12.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 6 Then
    Label5.Caption = "Tiger"
    Image14.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 7 Then
    Label5.Caption = "Rabbit"
    Image16.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 8 Then
    Label5.Caption = "Dragon"
    Image18.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 9 Then
    Label5.Caption = "Snake"
    Image20.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 10 Then
    Label5.Caption = "Horse"
    Image22.Visible = True
ElseIf Val(Text3.Text) Mod 12 = 11 Then
    Label5.Caption = "Sheep"
    Image24.Visible = True
    Text1.SetFocus
ElseIf (Val(Text1.Text) = 0 Or Val(Text2.Text) = 0 Or Val(Text3.Text) = 0) Then
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Label4.Caption = ""
    Label5.Caption = ""
    Image1.Visible = False
    Image2.Visible = False
    Image3.Visible = False
    Image4.Visible = False
    Image5.Visible = False
    Image6.Visible = False
    Image7.Visible = False
    Image8.Visible = False
    Image9.Visible = False
    Image10.Visible = False
    Image11.Visible = False
    Image12.Visible = False
    Image13.Visible = False
    Image14.Visible = False
    Image15.Visible = False
    Image16.Visible = False
    Image17.Visible = False
    Image18.Visible = False
    Image19.Visible = False
    Image20.Visible = False
    Image21.Visible = False
    Image22.Visible = False
    Image23.Visible = False
    Image24.Visible = False
    Zodiac_Form.Hide
    Zodiac_Message.Show
ElseIf Val(Text1.Text) > 12 And Val(Text2.Text) > 31 Then
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Label4.Caption = ""
    Label5.Caption = ""
    Image1.Visible = False
    Image2.Visible = False
    Image3.Visible = False
    Image4.Visible = False
    Image5.Visible = False
    Image6.Visible = False
    Image7.Visible = False
    Image8.Visible = False
    Image9.Visible = False
    Image10.Visible = False
    Image11.Visible = False
    Image12.Visible = False
    Image13.Visible = False
    Image14.Visible = False
    Image15.Visible = False
    Image16.Visible = False
    Image17.Visible = False
    Image18.Visible = False
    Image19.Visible = False
    Image20.Visible = False
    Image21.Visible = False
    Image22.Visible = False
    Image23.Visible = False
    Image24.Visible = False
    Zodiac_Message.Show
    Zodiac_Form.Hide
ElseIf Val(Text1.Text) = 2 And Val(Text2.Text) > 29 Then
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Label4.Caption = ""
    Label5.Caption = ""
    Image1.Visible = False
    Image2.Visible = False
    Image3.Visible = False
    Image4.Visible = False
    Image5.Visible = False
    Image6.Visible = False
    Image7.Visible = False
    Image8.Visible = False
    Image9.Visible = False
    Image10.Visible = False
    Image11.Visible = False
    Image12.Visible = False
    Image13.Visible = False
    Image14.Visible = False
    Image15.Visible = False
    Image16.Visible = False
    Image17.Visible = False
    Image18.Visible = False
    Image19.Visible = False
    Image20.Visible = False
    Image21.Visible = False
    Image22.Visible = False
    Image23.Visible = False
    Image24.Visible = False
    Zodiac_Message.Show
    Zodiac_Form.Hide
End If
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Command1.BackColor = &HC0C000
End Sub

Private Sub Command2_Click()
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Label4.Caption = ""
    Label5.Caption = ""
    Image1.Visible = False
    Image2.Visible = False
    Image3.Visible = False
    Image4.Visible = False
    Image5.Visible = False
    Image6.Visible = False
    Image7.Visible = False
    Image8.Visible = False
    Image9.Visible = False
    Image10.Visible = False
    Image11.Visible = False
    Image12.Visible = False
    Image13.Visible = False
    Image14.Visible = False
    Image15.Visible = False
    Image16.Visible = False
    Image17.Visible = False
    Image18.Visible = False
    Image19.Visible = False
    Image20.Visible = False
    Image21.Visible = False
    Image22.Visible = False
    Image23.Visible = False
    Image24.Visible = False
    Text1.SetFocus
End Sub

Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Command2.BackColor = &HC0C000
End Sub

Private Sub Command3_Click()
    End
End Sub

Private Sub Command3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Command3.BackColor = &HC0C000
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Command1.BackColor = &HFFFF00
    Command2.BackColor = &HFFFF00
    Command3.BackColor = &HFFFF00
End Sub

Private Sub Text1_Change()
    Label4.Caption = ""
    Label5.Caption = ""
    Image1.Visible = False
    Image2.Visible = False
    Image3.Visible = False
    Image4.Visible = False
    Image5.Visible = False
    Image6.Visible = False
    Image7.Visible = False
    Image8.Visible = False
    Image9.Visible = False
    Image10.Visible = False
    Image11.Visible = False
    Image12.Visible = False
    Image13.Visible = False
    Image14.Visible = False
    Image15.Visible = False
    Image16.Visible = False
    Image17.Visible = False
    Image18.Visible = False
    Image19.Visible = False
    Image20.Visible = False
    Image21.Visible = False
    Image22.Visible = False
    Image23.Visible = False
    Image24.Visible = False
    Text1.SetFocus
End Sub

Private Sub Text2_Change()
    Label4.Caption = ""
    Label5.Caption = ""
    Image1.Visible = False
    Image2.Visible = False
    Image3.Visible = False
    Image4.Visible = False
    Image5.Visible = False
    Image6.Visible = False
    Image7.Visible = False
    Image8.Visible = False
    Image9.Visible = False
    Image10.Visible = False
    Image11.Visible = False
    Image12.Visible = False
    Image13.Visible = False
    Image14.Visible = False
    Image15.Visible = False
    Image16.Visible = False
    Image17.Visible = False
    Image18.Visible = False
    Image19.Visible = False
    Image20.Visible = False
    Image21.Visible = False
    Image22.Visible = False
    Image23.Visible = False
    Image24.Visible = False
End Sub

Private Sub Text3_Change()
    Label4.Caption = ""
    Label5.Caption = ""
    Image1.Visible = False
    Image2.Visible = False
    Image3.Visible = False
    Image4.Visible = False
    Image5.Visible = False
    Image6.Visible = False
    Image7.Visible = False
    Image8.Visible = False
    Image9.Visible = False
    Image10.Visible = False
    Image11.Visible = False
    Image12.Visible = False
    Image13.Visible = False
    Image14.Visible = False
    Image15.Visible = False
    Image16.Visible = False
    Image17.Visible = False
    Image18.Visible = False
    Image19.Visible = False
    Image20.Visible = False
    Image21.Visible = False
    Image22.Visible = False
    Image23.Visible = False
    Image24.Visible = False
End Sub