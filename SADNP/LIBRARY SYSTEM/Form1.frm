VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000009&
   Caption         =   "Receipt"
   ClientHeight    =   4395
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3405
   LinkTopic       =   "Form1"
   ScaleHeight     =   4395
   ScaleWidth      =   3405
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text6 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   1080
      TabIndex        =   11
      Top             =   3120
      Width           =   1095
   End
   Begin VB.TextBox Text5 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   960
      TabIndex        =   9
      Top             =   2040
      Width           =   2055
   End
   Begin VB.TextBox Text4 
      BorderStyle     =   0  'None
      Height          =   405
      Left            =   840
      MultiLine       =   -1  'True
      TabIndex        =   7
      Top             =   2520
      Width           =   2535
   End
   Begin VB.TextBox Text2 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   960
      TabIndex        =   5
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   2040
      TabIndex        =   4
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Signature"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   1800
      TabIndex        =   12
      Top             =   4080
      Width           =   795
   End
   Begin VB.Line Line1 
      X1              =   1200
      X2              =   3120
      Y1              =   3960
      Y2              =   3960
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Due Date:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   120
      TabIndex        =   10
      Top             =   3120
      Width           =   765
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Call No.:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   0
      TabIndex        =   8
      Top             =   2040
      Width           =   645
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Title :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   120
      TabIndex        =   6
      Top             =   2520
      Width           =   450
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "ID No.:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   120
      TabIndex        =   3
      Top             =   1440
      Width           =   795
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Date :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   1440
      TabIndex        =   2
      Top             =   960
      Width           =   450
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Library Receipt"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1080
      TabIndex        =   1
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "PASAY PUBLIC LIBRARY"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   600
      TabIndex        =   0
      Top             =   120
      Width           =   2340
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Text1.Text = Date
    Text2.Text = FRMLENDING1.txtSN.Text
    Text4.Text = FRMLENDING1.txtTitle.Text
    Text5.Text = FRMLENDING1.txtCallNumber.Text
    Text6.Text = FRMLENDING1.txtDue.Text
End Sub


