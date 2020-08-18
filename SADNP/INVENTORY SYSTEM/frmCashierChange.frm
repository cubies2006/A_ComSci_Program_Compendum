VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmCashierChange 
   Caption         =   "Change Cashier Password"
   ClientHeight    =   4920
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4890
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   Picture         =   "frmCashierChange.frx":0000
   ScaleHeight     =   4920
   ScaleWidth      =   4890
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txtUN 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1560
      TabIndex        =   0
      ToolTipText     =   "Type your Cashier ID here"
      Top             =   720
      Width           =   1935
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000D&
      Height          =   2175
      Left            =   720
      TabIndex        =   6
      Top             =   1320
      Width           =   3495
      Begin VB.TextBox txtOld 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   840
         TabIndex        =   1
         ToolTipText     =   "Type your Current Password here"
         Top             =   480
         Width           =   2055
      End
      Begin VB.TextBox txtNew 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   840
         TabIndex        =   2
         ToolTipText     =   "Type your New Password here:"
         Top             =   1080
         Width           =   2055
      End
      Begin VB.TextBox txtConfirm 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   840
         TabIndex        =   3
         ToolTipText     =   "Retype your New Password here:"
         Top             =   1680
         Width           =   2055
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Old Password:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   480
         TabIndex        =   10
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "New Password:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   480
         TabIndex        =   9
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Confirm Password:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   480
         TabIndex        =   8
         Top             =   1440
         Width           =   1935
      End
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   360
      Picture         =   "frmCashierChange.frx":A207
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "Save Password"
      Top             =   3720
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1800
      Picture         =   "frmCashierChange.frx":A2DE
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Cancel Password"
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton cmdBack 
      Caption         =   "&Back"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3360
      Picture         =   "frmCashierChange.frx":A358
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Back to Cashier Login"
      Top             =   3720
      Width           =   1095
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   2640
      _ExtentX        =   4657
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   $"frmCashierChange.frx":A413
      OLEDBString     =   $"frmCashierChange.frx":A4A9
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """select * from cashiersecurity"""
      Caption         =   "Cashier Security"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Cashier ID:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   720
      TabIndex        =   11
      Top             =   360
      Width           =   3495
   End
End
Attribute VB_Name = "frmCashierChange"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdBack_Click()
    frmCashierChange.Hide
    frmCashierLogin.Show
End Sub

Private Sub cmdCancel_Click()
If MsgBox("Are you sure you want to cancel these changes?", vbQuestion + vbYesNo, Me.Caption) = vbYes Then
    txtOld.Locked = True
    txtNew.Locked = True
    txtConfirm.Locked = True
    txtOld.Text = ""
    txtNew.Text = ""
    txtConfirm.Text = ""
    txtUN.Text = ""
    txtUN.Enabled = True
    txtUN.SetFocus
End If
End Sub

Private Sub cmdSave_Click()
If txtOld.Text = "" Then
    MsgBox "Please enter your Old Password.", vbInformation, "Invalid Password!"
    txtNew.SetFocus
ElseIf txtNew.Text = "" Then
    MsgBox "Please enter your New Password.", vbInformation, "Invalid Password!"
    txtNew.SetFocus
ElseIf txtConfirm.Text = "" Then
    MsgBox "Please confirm your New Password.", vbInformation, "Invalid Password!"
    txtConfirm.SetFocus
Else
    If Not (txtNew.Text = txtConfirm.Text) Then
        Call MsgBox("Please retype your password!", vbInformation, Me.Caption)
        txtNew.Text = ""
        txtConfirm.Text = ""
        txtNew.SetFocus
    Else
        'search for the previous password...
        'validate to have a new password
        Adodc1.RecordSource = "Select * from cashiersecurity Where Password like '" & txtOld.Text & "' and CashierID like '" & txtUN.Text & "'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF = False Then
            If MsgBox("Save new record?", vbQuestion + vbYesNo, Me.Caption) = vbYes Then
                Adodc1.Recordset.Fields("password") = txtConfirm.Text
                Adodc1.Recordset.Update
                Adodc1.Refresh
                Adodc1.Refresh
                txtUN.Enabled = True
                txtOld.Locked = True
                txtNew.Locked = True
                txtConfirm.Locked = True
                txtUN.Text = ""
                txtOld.Text = ""
                txtNew.Text = ""
                txtConfirm.Text = ""
                cmdCancel.Enabled = False
                cmdSave.Enabled = False
                txtUN.SetFocus
            End If
        End If
    End If
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frmCashierChange.Hide
    frmSelectedLogin.Show
End Sub

