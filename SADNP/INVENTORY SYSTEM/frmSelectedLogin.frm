VERSION 5.00
Begin VB.Form frmSelectedLogin 
   Caption         =   "Select Login"
   ClientHeight    =   4410
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4590
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   Picture         =   "frmSelectedLogin.frx":0000
   ScaleHeight     =   4410
   ScaleWidth      =   4590
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdNext 
      Caption         =   "&Next"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   480
      Picture         =   "frmSelectedLogin.frx":A207
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Next"
      Top             =   3120
      Width           =   1750
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2400
      Picture         =   "frmSelectedLogin.frx":A2BD
      Style           =   1  'Graphical
      TabIndex        =   2
      ToolTipText     =   "Close the Inventory System"
      Top             =   3120
      Width           =   1750
   End
   Begin VB.OptionButton optUser 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000D&
      Caption         =   "Cashier"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   540
      Left            =   1560
      MouseIcon       =   "frmSelectedLogin.frx":A3CC
      MousePointer    =   99  'Custom
      TabIndex        =   1
      ToolTipText     =   "Cashier Login"
      Top             =   1920
      Width           =   1785
   End
   Begin VB.OptionButton optEmployee 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000D&
      Caption         =   "Employee"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   540
      Left            =   1560
      MouseIcon       =   "frmSelectedLogin.frx":A6D6
      MousePointer    =   99  'Custom
      TabIndex        =   0
      ToolTipText     =   "Employee Login"
      Top             =   1440
      Width           =   1740
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000D&
      Height          =   1815
      Left            =   960
      TabIndex        =   4
      Top             =   960
      Width           =   2775
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Select your category:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   600
      TabIndex        =   5
      Top             =   360
      Width           =   3495
   End
End
Attribute VB_Name = "frmSelectedLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdNext_Click()
If optEmployee.Value = True Then
    frmEmployeeLogin.Show
    Me.Hide
ElseIf optUser.Value = True Then
    frmCashierLogin.Show
    Me.Hide
Else
    MsgBox "You didn't click an Option!!!", vbOKOnly + vbExclamation, "NO SELECTION"
End If
End Sub

Private Sub Form_Activate()
    optEmployee.Value = False
    optUser.Value = False
End Sub

Private Sub Form_Load()
    optEmployee.Value = False
    optUser.Value = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    prompt$ = "Are you sure you don't want to enter the C. S. Enriquez Mechanical Work Shop Inventory System?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "C. S. Enriquez Mechanical Work Shop Inventory System")
        If reply = vbYes Then
            End
        Else
            Cancel = True
            optEmployee.Value = False
            optUser.Value = False
        End If
End Sub

