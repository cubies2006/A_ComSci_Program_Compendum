VERSION 5.00
Begin VB.Form Binary_Conversion 
   BackColor       =   &H00000000&
   Caption         =   "Binary Conversion"
   ClientHeight    =   4515
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8250
   LinkTopic       =   "Form1"
   PaletteMode     =   2  'Custom
   ScaleHeight     =   4515
   ScaleWidth      =   8250
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdReset 
      BackColor       =   &H00C0C0C0&
      Caption         =   "&Reset"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3600
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton cmdExit 
      BackColor       =   &H00C0C0C0&
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5160
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton cmdBinary 
      BackColor       =   &H00C0C0C0&
      Caption         =   "&Binary"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2040
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1920
      Width           =   1215
   End
   Begin VB.TextBox txtDecimal 
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
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3600
      MaxLength       =   3
      TabIndex        =   0
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label lblBin1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   6720
      TabIndex        =   20
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label lblBin2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   5880
      TabIndex        =   19
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label lblBin4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   5040
      TabIndex        =   18
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label lblBin8 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   4200
      TabIndex        =   17
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label lblBin16 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   3360
      TabIndex        =   16
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label lblBin32 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   2520
      TabIndex        =   15
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label lblBin64 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   1680
      TabIndex        =   14
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label lblBin128 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   840
      TabIndex        =   13
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label lbl1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   6720
      TabIndex        =   12
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label lbl2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   5880
      TabIndex        =   11
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label lbl4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   5040
      TabIndex        =   10
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label lbl8 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   4200
      TabIndex        =   9
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label lbl16 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "16"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   3360
      TabIndex        =   8
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label lbl32 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "32"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   2520
      TabIndex        =   7
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label lbl64 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "64"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   1680
      TabIndex        =   6
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label lbl128 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "128"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   720
      TabIndex        =   5
      Top             =   2640
      Width           =   735
   End
   Begin VB.Label lblEnter 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Enter a Number: (1-255)"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF80&
      Height          =   495
      Left            =   1680
      TabIndex        =   1
      Top             =   360
      Width           =   4935
   End
End
Attribute VB_Name = "Binary_Conversion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdexit_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdExit.BackColor = &H808080
End Sub

Private Sub cmdReset_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdReset.BackColor = &H808080
End Sub

Private Sub cmdBinary_Click()
    If ((Val(txtDecimal.Text) < 0) Or (Val(txtDecimal.Text) > 255)) Then
        lblBin128.Caption = ""
        lblBin64.Caption = ""
        lblBin32.Caption = ""
        lblBin16.Caption = ""
        lblBin8.Caption = ""
        lblBin4.Caption = ""
        lblBin2.Caption = ""
        lblBin1.Caption = ""
        txtDecimal.Text = ""
        txtDecimal.SetFocus
        MsgBox ("Please enter a WHOLE number between 1-255 ONLY!")
    Else
        lblBin1.Caption = Val(txtDecimal.Text) Mod 2
        lblBin2.Caption = Val(txtDecimal.Text) \ 2 Mod 2
        lblBin4.Caption = Val(txtDecimal.Text) \ 2 \ 2 Mod 2
        lblBin8.Caption = Val(txtDecimal.Text) \ 2 \ 2 \ 2 Mod 2
        lblBin16.Caption = Val(txtDecimal.Text) \ 2 \ 2 \ 2 \ 2 Mod 2
        lblBin32.Caption = Val(txtDecimal.Text) \ 2 \ 2 \ 2 \ 2 \ 2 Mod 2
        lblBin64.Caption = Val(txtDecimal.Text) \ 2 \ 2 \ 2 \ 2 \ 2 \ 2 Mod 2
        lblBin128.Caption = Val(txtDecimal.Text) \ 2 \ 2 \ 2 \ 2 \ 2 \ 2 \ 2 Mod 2
        txtDecimal.Enabled = False
    End If
End Sub

Private Sub cmdBinary_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdBinary.BackColor = &H808080
End Sub

Private Sub cmdExit_Click()
    End
End Sub

Private Sub cmdReset_Click()
    txtDecimal.Text = ""
    lblBin128.Caption = ""
    lblBin64.Caption = ""
    lblBin32.Caption = ""
    lblBin16.Caption = ""
    lblBin8.Caption = ""
    lblBin4.Caption = ""
    lblBin2.Caption = ""
    lblBin1.Caption = ""
    txtDecimal.Enabled = True
    txtDecimal.SetFocus
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdBinary.BackColor = &HC0C0C0
    cmdReset.BackColor = &HC0C0C0
    cmdExit.BackColor = &HC0C0C0
End Sub

Private Sub Text1_Click()
    txtDecimal.Text = ""
    lblBin128.Caption = ""
    lblBin64.Caption = ""
    lblBin32.Caption = ""
    lblBin16.Caption = ""
    lblBin8.Caption = ""
    lblBin4.Caption = ""
    lblBin2.Caption = ""
    lblBin1.Caption = ""
    txtDecimal.SetFocus
End Sub

Private Sub txtDecimal_Change()
    If (IsNumeric(txtDecimal.Text) = True) Then
    Else
        txtDecimal.Text = ""
    End If
End Sub
