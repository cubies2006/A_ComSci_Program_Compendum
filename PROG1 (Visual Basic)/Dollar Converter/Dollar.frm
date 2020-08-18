VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Dollar Converter"
   ClientHeight    =   7875
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10110
   FillColor       =   &H00FFFFFF&
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   FontTransparent =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   99  'Custom
   ScaleHeight     =   7875
   ScaleWidth      =   10110
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFC0C0&
      Caption         =   "E&XIT"
      BeginProperty Font 
         Name            =   "Garamond"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   8040
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "exit"
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "&RESET"
      BeginProperty Font 
         Name            =   "Garamond"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "reset"
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFFC0&
      Caption         =   "&CONVERT"
      BeginProperty Font 
         Name            =   "Garamond"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5160
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "convert"
      Top             =   840
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   960
      MaxLength       =   13
      MousePointer    =   99  'Custom
      TabIndex        =   1
      Top             =   840
      Width           =   4095
   End
   Begin VB.Image Image30 
      Height          =   270
      Left            =   5160
      Picture         =   "dollar.frx":0000
      Top             =   6120
      Width           =   435
   End
   Begin VB.Image Image29 
      Height          =   270
      Left            =   5160
      Picture         =   "dollar.frx":0375
      Top             =   6480
      Width           =   435
   End
   Begin VB.Image Image28 
      Height          =   270
      Left            =   5160
      Picture         =   "dollar.frx":06FF
      Top             =   6840
      Width           =   435
   End
   Begin VB.Image Image27 
      Height          =   270
      Left            =   5160
      Picture         =   "dollar.frx":0A1A
      Top             =   7200
      Width           =   435
   End
   Begin VB.Image Image26 
      Height          =   255
      Left            =   5160
      Picture         =   "dollar.frx":0D84
      Top             =   3960
      Width           =   435
   End
   Begin VB.Image Image25 
      Height          =   255
      Left            =   5160
      Picture         =   "dollar.frx":1090
      Top             =   4680
      Width           =   435
   End
   Begin VB.Image Image24 
      Height          =   255
      Left            =   5160
      Picture         =   "dollar.frx":13D8
      Top             =   5040
      Width           =   435
   End
   Begin VB.Image Image23 
      Height          =   255
      Left            =   5160
      Picture         =   "dollar.frx":172F
      Top             =   5400
      Width           =   435
   End
   Begin VB.Image Image22 
      Height          =   255
      Left            =   5160
      Picture         =   "dollar.frx":1A22
      Top             =   5760
      Width           =   435
   End
   Begin VB.Image Image21 
      Height          =   255
      Left            =   5160
      Picture         =   "dollar.frx":1D63
      Top             =   3600
      Width           =   435
   End
   Begin VB.Image Image20 
      Height          =   255
      Left            =   5160
      Picture         =   "dollar.frx":20DE
      Top             =   4320
      Width           =   435
   End
   Begin VB.Image Image19 
      Height          =   270
      Left            =   5160
      Picture         =   "dollar.frx":2438
      Top             =   3240
      Width           =   435
   End
   Begin VB.Image Image18 
      Height          =   270
      Left            =   5160
      Picture         =   "dollar.frx":27F9
      Top             =   2880
      Width           =   435
   End
   Begin VB.Image Image17 
      Height          =   255
      Left            =   5160
      Picture         =   "dollar.frx":2B75
      Top             =   2520
      Width           =   435
   End
   Begin VB.Image Image16 
      Height          =   270
      Left            =   5160
      Picture         =   "dollar.frx":2EE6
      Top             =   2160
      Width           =   435
   End
   Begin VB.Image Image15 
      Height          =   270
      Left            =   240
      Picture         =   "dollar.frx":324B
      Top             =   6120
      Width           =   435
   End
   Begin VB.Image Image14 
      Height          =   255
      Left            =   240
      Picture         =   "dollar.frx":35FB
      Top             =   6480
      Width           =   435
   End
   Begin VB.Image Image13 
      Height          =   255
      Left            =   240
      Picture         =   "dollar.frx":3931
      Top             =   6840
      Width           =   435
   End
   Begin VB.Image Image12 
      Height          =   255
      Left            =   240
      Picture         =   "dollar.frx":3C6B
      Top             =   7200
      Width           =   435
   End
   Begin VB.Image Image11 
      Height          =   255
      Left            =   240
      Picture         =   "dollar.frx":3FD2
      Top             =   3960
      Width           =   420
   End
   Begin VB.Image Image10 
      Height          =   270
      Left            =   240
      Picture         =   "dollar.frx":43A8
      Top             =   4680
      Width           =   435
   End
   Begin VB.Image Image9 
      Height          =   270
      Left            =   240
      Picture         =   "dollar.frx":4758
      Top             =   5040
      Width           =   435
   End
   Begin VB.Image Image8 
      Height          =   270
      Left            =   240
      Picture         =   "dollar.frx":4A4A
      Top             =   5400
      Width           =   435
   End
   Begin VB.Image Image7 
      Height          =   255
      Left            =   240
      Picture         =   "dollar.frx":4DEE
      Top             =   5760
      Width           =   435
   End
   Begin VB.Image Image6 
      Height          =   285
      Left            =   240
      Picture         =   "dollar.frx":514F
      Top             =   3600
      Width           =   435
   End
   Begin VB.Image Image5 
      Height          =   270
      Left            =   240
      Picture         =   "dollar.frx":5512
      Top             =   4320
      Width           =   420
   End
   Begin VB.Image Image4 
      Height          =   255
      Left            =   240
      Picture         =   "dollar.frx":58C4
      Top             =   3240
      Width           =   435
   End
   Begin VB.Image Image3 
      Height          =   270
      Left            =   240
      Picture         =   "dollar.frx":5C00
      Top             =   2880
      Width           =   435
   End
   Begin VB.Image Image1 
      Height          =   240
      Left            =   240
      Picture         =   "dollar.frx":5F0F
      Top             =   2520
      Width           =   435
   End
   Begin VB.Image Image2 
      Height          =   270
      Left            =   240
      Picture         =   "dollar.frx":6298
      Top             =   2160
      Width           =   435
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      DrawMode        =   16  'Merge Pen
      X1              =   1200
      X2              =   8880
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   960
      X2              =   9120
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Label Label40 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   65
      Top             =   6480
      Width           =   1815
   End
   Begin VB.Label Label18 
      BackColor       =   &H00808080&
      Caption         =   "28) Singaporean Dollar (SGD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   64
      Top             =   6480
      Width           =   2295
   End
   Begin VB.Label Label62 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   63
      Top             =   7200
      Width           =   1815
   End
   Begin VB.Label Label61 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   62
      Top             =   5760
      Width           =   1815
   End
   Begin VB.Label Label60 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   61
      Top             =   3960
      Width           =   1815
   End
   Begin VB.Label Label59 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   60
      Top             =   6840
      Width           =   1815
   End
   Begin VB.Label Label58 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   59
      Top             =   3960
      Width           =   1815
   End
   Begin VB.Label Label57 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   58
      Top             =   5400
      Width           =   1815
   End
   Begin VB.Label Label56 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   57
      Top             =   5400
      Width           =   1815
   End
   Begin VB.Label Label55 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   56
      Top             =   2880
      Width           =   1815
   End
   Begin VB.Label Label54 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   55
      Top             =   3240
      Width           =   1815
   End
   Begin VB.Label Label53 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   54
      Top             =   2880
      Width           =   1815
   End
   Begin VB.Label Label51 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   53
      Top             =   6120
      Width           =   1815
   End
   Begin VB.Label Label52 
      BackColor       =   &H00808080&
      Caption         =   "12) Dominican Peso (DOP)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   52
      Top             =   6120
      Width           =   2295
   End
   Begin VB.Label Label50 
      BackColor       =   &H00808080&
      Caption         =   "3) Bangladesh Taka (BDT)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   51
      Top             =   2880
      Width           =   2295
   End
   Begin VB.Label Label49 
      BackColor       =   &H00808080&
      Caption         =   "4) Botswana Pula (BWP)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   50
      Top             =   3240
      Width           =   2295
   End
   Begin VB.Label Label48 
      BackColor       =   &H00808080&
      Caption         =   "18) Liberian Dollar (LRD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   49
      Top             =   2880
      Width           =   2295
   End
   Begin VB.Label Label47 
      BackColor       =   &H00808080&
      Caption         =   "10) Cuban Peso (CUP)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   48
      Top             =   5400
      Width           =   2295
   End
   Begin VB.Label Label46 
      BackColor       =   &H00808080&
      Caption         =   "21) Myanmar Kyat (MMK)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   47
      Top             =   3960
      Width           =   2295
   End
   Begin VB.Label Label45 
      BackColor       =   &H00808080&
      Caption         =   "25) Qatar Rial (QAR)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   46
      Top             =   5400
      Width           =   2295
   End
   Begin VB.Label Label44 
      BackColor       =   &H00808080&
      Caption         =   "29) Taiwan Dollar (TWD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   45
      Top             =   6840
      Width           =   2295
   End
   Begin VB.Label Label43 
      BackColor       =   &H00808080&
      Caption         =   "6) British Pound (GBP)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   44
      Top             =   3960
      Width           =   2295
   End
   Begin VB.Label Label42 
      BackColor       =   &H00808080&
      Caption         =   "26) Russian Rouble (RUB)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   43
      Top             =   5760
      Width           =   2295
   End
   Begin VB.Label Label41 
      BackColor       =   &H00808080&
      Caption         =   "30) Thai Baht (THB)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   42
      Top             =   7200
      Width           =   2295
   End
   Begin VB.Label Label16 
      BackColor       =   &H00808080&
      Caption         =   "20) Mexican Peso (MXN)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   19
      Top             =   3600
      Width           =   2295
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H80000009&
      BorderWidth     =   3
      FillColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   600
      Shape           =   4  'Rounded Rectangle
      Top             =   600
      Width           =   8895
   End
   Begin VB.Label Label39 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   41
      Top             =   6120
      Width           =   1815
   End
   Begin VB.Label Label38 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   40
      Top             =   5040
      Width           =   1815
   End
   Begin VB.Label Label37 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   39
      Top             =   4680
      Width           =   1815
   End
   Begin VB.Label Label36 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   38
      Top             =   4320
      Width           =   1815
   End
   Begin VB.Label Label35 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   37
      Top             =   3600
      Width           =   1815
   End
   Begin VB.Label Label34 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   36
      Top             =   3240
      Width           =   1815
   End
   Begin VB.Label Label33 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   35
      Top             =   2520
      Width           =   1815
   End
   Begin VB.Label Label32 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8040
      TabIndex        =   34
      Top             =   2160
      Width           =   1815
   End
   Begin VB.Label Label31 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   33
      Top             =   6840
      Width           =   1815
   End
   Begin VB.Label Label30 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   32
      Top             =   7200
      Width           =   1815
   End
   Begin VB.Label Label29 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   31
      Top             =   6480
      Width           =   1815
   End
   Begin VB.Label Label28 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   30
      Top             =   5760
      Width           =   1815
   End
   Begin VB.Label Label27 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   29
      Top             =   5040
      Width           =   1815
   End
   Begin VB.Label Label26 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   28
      Top             =   4680
      Width           =   1815
   End
   Begin VB.Label Label25 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   27
      Top             =   4320
      Width           =   1815
   End
   Begin VB.Label Label24 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   26
      Top             =   3600
      Width           =   1815
   End
   Begin VB.Label Label23 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana Ref"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   25
      Top             =   2520
      Width           =   1815
   End
   Begin VB.Label Label22 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   24
      Top             =   2160
      Width           =   1815
   End
   Begin VB.Label Label21 
      BackColor       =   &H00808080&
      Caption         =   "23) Pakistani Rupee (PKR)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   23
      Top             =   4680
      Width           =   2295
   End
   Begin VB.Label Label20 
      BackColor       =   &H00808080&
      Caption         =   "24) Philippine Peso (PHP)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   22
      Top             =   5040
      Width           =   2295
   End
   Begin VB.Label Label19 
      BackColor       =   &H00808080&
      Caption         =   "27) S. Arabian Riyal (SAR)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   21
      Top             =   6120
      Width           =   2295
   End
   Begin VB.Label Label17 
      BackColor       =   &H00808080&
      Caption         =   "22) N. Zealand Dollar (NZD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   20
      Top             =   4320
      Width           =   2295
   End
   Begin VB.Label Label15 
      BackColor       =   &H00808080&
      Caption         =   "19) Malaysian Ringgit (MYR)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   18
      Top             =   3240
      Width           =   2295
   End
   Begin VB.Label Label14 
      BackColor       =   &H00808080&
      Caption         =   "17) Kuwaiti Dinar (KWD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   17
      Top             =   2520
      Width           =   2295
   End
   Begin VB.Label Label13 
      BackColor       =   &H00808080&
      Caption         =   "16) Iraqi Dinar (IQD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   16
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Label Label12 
      BackColor       =   &H00808080&
      Caption         =   "14) Hong Kong Dollar (HKD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   15
      Top             =   6840
      Width           =   2295
   End
   Begin VB.Label Label11 
      BackColor       =   &H00808080&
      Caption         =   "15) Indian Rupee (INR)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   14
      Top             =   7200
      Width           =   2295
   End
   Begin VB.Label Label10 
      BackColor       =   &H00808080&
      Caption         =   "13) Egyptian Pound (EGP)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   13
      Top             =   6480
      Width           =   2295
   End
   Begin VB.Label Label9 
      BackColor       =   &H00808080&
      Caption         =   "11) Danish Krone (DKK)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   12
      Top             =   5760
      Width           =   2295
   End
   Begin VB.Label Label8 
      BackColor       =   &H00808080&
      Caption         =   "9) Chinese Yuan (CNY)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   11
      Top             =   5040
      Width           =   2295
   End
   Begin VB.Label Label7 
      BackColor       =   &H00808080&
      Caption         =   "8) Canadian Dollar (CAD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   10
      Top             =   4680
      Width           =   2295
   End
   Begin VB.Label Label6 
      BackColor       =   &H00808080&
      Caption         =   "7) Brunei Dollar (BND)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   9
      Top             =   4320
      Width           =   2295
   End
   Begin VB.Label Label5 
      BackColor       =   &H00808080&
      Caption         =   "5) Brazilian Real  (BRL)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   8
      Top             =   3600
      Width           =   2295
   End
   Begin VB.Label Label4 
      BackColor       =   &H00808080&
      Caption         =   "2) Australian Dollar (AUD)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   7
      Top             =   2520
      Width           =   2295
   End
   Begin VB.Label Label3 
      BackColor       =   &H00808080&
      Caption         =   "1) Argentine Peso (ARS)"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   6
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "$"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   2
      Top             =   840
      Width           =   255
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Enter your money:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Command1_Click()
Label22.Caption = Val(Text1.Text) * 2.86
Label23.Caption = Val(Text1.Text) * 1.393
Label24.Caption = Val(Text1.Text) * 2.91
Label25.Caption = Val(Text1.Text) * 1.72
Label26.Caption = Val(Text1.Text) * 1.317
Label27.Caption = Val(Text1.Text) * 8.28
Label28.Caption = Val(Text1.Text) * 6.31
Label29.Caption = Val(Text1.Text) * 6.13
Label30.Caption = Val(Text1.Text) * 46
Label31.Caption = Val(Text1.Text) * 7.77
Label32.Caption = Val(Text1.Text) * 0.31
Label33.Caption = Val(Text1.Text) * 0.29
Label34.Caption = Val(Text1.Text) * 3.8
Label35.Caption = Val(Text1.Text) * 11.28
Label36.Caption = Val(Text1.Text) * 1.57
Label37.Caption = Val(Text1.Text) * 57.24
Label38.Caption = Val(Text1.Text) * 55.5
Label39.Caption = Val(Text1.Text) * 3.75
Label40.Caption = Val(Text1.Text) * 1.72
Label62.Caption = Val(Text1.Text) * 39.87
Label61.Caption = Val(Text1.Text) * 29.73
Label60.Caption = Val(Text1.Text) * 0.5893
Label59.Caption = Val(Text1.Text) * 34.06
Label57.Caption = Val(Text1.Text) * 3.64
Label58.Caption = Val(Text1.Text) * 6.42
Label56.Caption = Val(Text1.Text) * 1
Label55.Caption = Val(Text1.Text) * 50
Label54.Caption = Val(Text1.Text) * 4.47
Label53.Caption = Val(Text1.Text) * 58.2
Label51.Caption = Val(Text1.Text) * 39.6
End Sub
Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HFFFF00
End Sub
Private Sub Command2_Click()
Text1.SetFocus
Text1.Text = " "
Label22.Caption = " "
Label23.Caption = " "
Label24.Caption = " "
Label25.Caption = " "
Label26.Caption = " "
Label27.Caption = " "
Label28.Caption = " "
Label29.Caption = " "
Label30.Caption = " "
Label31.Caption = " "
Label32.Caption = " "
Label33.Caption = " "
Label34.Caption = " "
Label35.Caption = " "
Label36.Caption = " "
Label37.Caption = " "
Label38.Caption = " "
Label39.Caption = " "
Label40.Caption = " "
Label62.Caption = " "
Label61.Caption = " "
Label60.Caption = " "
Label59.Caption = " "
Label57.Caption = " "
Label58.Caption = " "
Label56.Caption = " "
Label55.Caption = " "
Label54.Caption = " "
Label53.Caption = " "
Label51.Caption = " "
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

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = &HFFFFC0
Command2.BackColor = &HC0FFC0
Command3.BackColor = &HFFC0C0
Label3.BackColor = &H808080
Label41.BackColor = &H808080
Label42.BackColor = &H808080
Label43.BackColor = &H808080
Label44.BackColor = &H808080
Label45.BackColor = &H808080
Label46.BackColor = &H808080
Label47.BackColor = &H808080
Label48.BackColor = &H808080
Label49.BackColor = &H808080
Label50.BackColor = &H808080
Label52.BackColor = &H808080
Label4.BackColor = &H808080
Label5.BackColor = &H808080
Label6.BackColor = &H808080
Label7.BackColor = &H808080
Label8.BackColor = &H808080
Label9.BackColor = &H808080
Label10.BackColor = &H808080
Label11.BackColor = &H808080
Label12.BackColor = &H808080
Label13.BackColor = &H808080
Label14.BackColor = &H808080
Label15.BackColor = &H808080
Label16.BackColor = &H808080
Label17.BackColor = &H808080
Label18.BackColor = &H808080
Label19.BackColor = &H808080
Label20.BackColor = &H808080
Label21.BackColor = &H808080
Label22.BackColor = &HC0C0C0
Label24.BackColor = &HC0C0C0
Label26.BackColor = &HC0C0C0
Label28.BackColor = &HC0C0C0
Label31.BackColor = &HC0C0C0
Label32.BackColor = &HC0C0C0
Label34.BackColor = &HC0C0C0
Label36.BackColor = &HC0C0C0
Label38.BackColor = &HC0C0C0
Label40.BackColor = &HC0C0C0
Label23.BackColor = &HC0C0C0
Label25.BackColor = &HC0C0C0
Label27.BackColor = &HC0C0C0
Label29.BackColor = &HC0C0C0
Label30.BackColor = &HC0C0C0
Label33.BackColor = &HC0C0C0
Label35.BackColor = &HC0C0C0
Label37.BackColor = &HC0C0C0
Label39.BackColor = &HC0C0C0
Label51.BackColor = &HC0C0C0
Label53.BackColor = &HC0C0C0
Label62.BackColor = &HC0C0C0
Label54.BackColor = &HC0C0C0
Label55.BackColor = &HC0C0C0
Label56.BackColor = &HC0C0C0
Label57.BackColor = &HC0C0C0
Label59.BackColor = &HC0C0C0
Label58.BackColor = &HC0C0C0
Label60.BackColor = &HC0C0C0
Label61.BackColor = &HC0C0C0
End Sub

Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label10.BackColor = vbWhite
Label29.BackColor = &HE0E0E0
End Sub
Private Sub Label11_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label11.BackColor = vbWhite
Label30.BackColor = &HE0E0E0
End Sub
Private Sub Label12_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label12.BackColor = vbWhite
Label31.BackColor = &HE0E0E0
End Sub
Private Sub Label13_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label13.BackColor = vbWhite
Label32.BackColor = &HE0E0E0
End Sub
Private Sub Label14_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label14.BackColor = vbWhite
Label33.BackColor = &HE0E0E0
End Sub
Private Sub Label15_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label15.BackColor = vbWhite
Label34.BackColor = &HE0E0E0
End Sub
Private Sub Label16_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label16.BackColor = vbWhite
Label35.BackColor = &HE0E0E0
End Sub
Private Sub Label17_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label17.BackColor = vbWhite
Label36.BackColor = &HE0E0E0
End Sub
Private Sub Label18_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label18.BackColor = vbWhite
Label40.BackColor = &HE0E0E0
End Sub
Private Sub Label19_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label19.BackColor = vbWhite
Label39.BackColor = &HE0E0E0
End Sub
Private Sub Label20_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label20.BackColor = vbWhite
Label38.BackColor = &HE0E0E0
End Sub
Private Sub Label21_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label21.BackColor = vbWhite
Label37.BackColor = &HE0E0E0
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label3.BackColor = vbWhite
Label22.BackColor = &HE0E0E0
End Sub
Private Sub Label4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label4.BackColor = vbWhite
Label23.BackColor = &HE0E0E0
End Sub
Private Sub Label41_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label41.BackColor = vbWhite
Label62.BackColor = &HE0E0E0
End Sub
Private Sub Label42_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label42.BackColor = vbWhite
Label61.BackColor = &HE0E0E0
End Sub
Private Sub Label43_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label43.BackColor = vbWhite
Label60.BackColor = &HE0E0E0
End Sub
Private Sub Label44_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label44.BackColor = vbWhite
Label59.BackColor = &HE0E0E0
End Sub
Private Sub Label52_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label52.BackColor = vbWhite
Label51.BackColor = &HE0E0E0
End Sub
Private Sub Label50_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label50.BackColor = vbWhite
Label53.BackColor = &HE0E0E0
End Sub
Private Sub Label49_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label49.BackColor = vbWhite
Label54.BackColor = &HE0E0E0
End Sub
Private Sub Label45_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label45.BackColor = vbWhite
Label57.BackColor = &HE0E0E0
End Sub
Private Sub Label46_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label46.BackColor = vbWhite
Label58.BackColor = &HE0E0E0
End Sub
Private Sub Label47_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label47.BackColor = vbWhite
Label56.BackColor = &HE0E0E0
End Sub
Private Sub Label48_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label48.BackColor = vbWhite
Label55.BackColor = &HE0E0E0
End Sub
Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label5.BackColor = vbWhite
Label24.BackColor = &HE0E0E0
End Sub
Private Sub Label6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label6.BackColor = vbWhite
Label25.BackColor = &HE0E0E0
End Sub

Private Sub Label7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label7.BackColor = vbWhite
Label26.BackColor = &HE0E0E0
End Sub
Private Sub Label8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label8.BackColor = vbWhite
Label27.BackColor = &HE0E0E0
End Sub
Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label9.BackColor = vbWhite
Label28.BackColor = &HE0E0E0
End Sub
