VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form FRMCHANGE 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Change Password"
   ClientHeight    =   4335
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4335
   ScaleWidth      =   4080
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txtConfirm 
      Appearance      =   0  'Flat
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   840
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   2760
      Width           =   2415
   End
   Begin VB.PictureBox Picture1 
      Height          =   4935
      Left            =   0
      Picture         =   "FRMCHANGE.frx":0000
      ScaleHeight     =   4875
      ScaleWidth      =   4035
      TabIndex        =   0
      Top             =   -240
      Width           =   4095
      Begin VB.TextBox txtNew 
         Appearance      =   0  'Flat
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   840
         PasswordChar    =   "*"
         TabIndex        =   3
         Top             =   2400
         Width           =   2415
      End
      Begin VB.CommandButton cmdBack 
         Caption         =   "Back"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   3720
         Width           =   1215
      End
      Begin VB.TextBox txtUN 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         IMEMode         =   3  'DISABLE
         Left            =   720
         TabIndex        =   1
         Top             =   840
         Width           =   2775
      End
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   330
         Left            =   120
         Top             =   4320
         Visible         =   0   'False
         Width           =   2415
         _ExtentX        =   4260
         _ExtentY        =   582
         ConnectMode     =   0
         CursorLocation  =   3
         IsolationLevel  =   -1
         ConnectionTimeout=   15
         CommandTimeout  =   30
         CursorType      =   3
         LockType        =   3
         CommandType     =   1
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
         Connect         =   $"FRMCHANGE.frx":2286
         OLEDBString     =   $"FRMCHANGE.frx":2318
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   "select * from LIBRARIAN"
         Caption         =   "Librarian"
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
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1320
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   3720
         Width           =   1215
      End
      Begin VB.CommandButton cmdSave 
         Caption         =   "&Save"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   3720
         Width           =   1215
      End
      Begin VB.TextBox txtOld 
         Appearance      =   0  'Flat
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   840
         PasswordChar    =   "*"
         TabIndex        =   2
         Top             =   1800
         Width           =   2415
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "New Password:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   195
         Left            =   600
         TabIndex        =   12
         Top             =   2160
         Width           =   1455
      End
      Begin VB.Shape Shape7 
         BackColor       =   &H8000000D&
         BackStyle       =   1  'Opaque
         BorderStyle     =   0  'Transparent
         Height          =   1935
         Left            =   360
         Top             =   1560
         Width           =   135
      End
      Begin VB.Shape Shape6 
         BackColor       =   &H8000000D&
         BackStyle       =   1  'Opaque
         BorderStyle     =   0  'Transparent
         Height          =   135
         Left            =   360
         Top             =   3360
         Width           =   3255
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H00800000&
         BorderStyle     =   6  'Inside Solid
         Height          =   1935
         Left            =   480
         Top             =   1440
         Width           =   3255
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H00800000&
         BorderStyle     =   6  'Inside Solid
         Height          =   1935
         Left            =   360
         Top             =   1560
         Width           =   3255
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00C00000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00C00000&
         Height          =   375
         Left            =   600
         Top             =   960
         Width           =   2775
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Employee Number:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   210
         Left            =   360
         TabIndex        =   11
         Top             =   480
         Width           =   1875
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Confirm Password:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   195
         Left            =   600
         TabIndex        =   10
         Top             =   2760
         Width           =   1815
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Old Password:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   195
         Left            =   600
         TabIndex        =   8
         Top             =   1560
         Width           =   1365
      End
   End
   Begin VB.Label Label2 
      Caption         =   "Old Password:"
      Height          =   255
      Left            =   600
      TabIndex        =   9
      Top             =   1320
      Width           =   1095
   End
End
Attribute VB_Name = "FRMCHANGE"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdBack_Click()
Me.Hide
FRMLOGIN2.Show
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
        Call MsgBox("Password does not match pls. retype", vbInformation, Me.Caption)
        txtNew.Text = ""
        txtConfirm.Text = ""
        txtNew.SetFocus
    Else
        'search for the previous password...
        'validate to have a new password
        Adodc1.RecordSource = "Select * from LIBRARIAN Where password like '" & txtOld.Text & "' and userno like '" & txtUN.Text & "'"
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
        Else
           MsgBox "Invalid old Password, try again!", vbOKOnly + vbExclamation, "Invalid Old Password!"
           txtOld.Text = ""
           txtOld.SetFocus
        End If
    End If
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
Me.Hide
FRMSELECT.Show
End Sub
Private Sub Form_Activate()
txtOld.Locked = True
txtNew.Locked = True
txtConfirm.Locked = True
txtUN.SetFocus
cmdSave.Enabled = False
End Sub



Private Sub txtUN_Change()
If IsNumeric(txtUN.Text) = True Then
Else
    '  MsgBox "Please enter a numeric employee number."
    txtUN.Text = ""
End If
End Sub

Private Sub txtUN_Click()
txtUN.Text = ""
txtUN.SetFocus
End Sub

Private Sub txtUN_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    If txtUN.Text = "" Then
        MsgBox "Please Check Your Employee Number.", vbExclamation, "ACCESS DENIED"
    Else
        Adodc1.RecordSource = "Select * from LIBRARIAN Where userno like '" & txtUN.Text & "%'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "No record found!"
            txtUN.Text = ""
            txtUN.SetFocus
        Else
            ans = MsgBox("Do you want to change your password?", vbYesNo + vbQuestion, "Change Password?")
            If ans = vbYes Then
                cmdSave.Enabled = True
                txtUN.Enabled = False
                txtOld.Locked = False
                txtNew.Locked = False
                txtConfirm.Locked = False
                txtOld.SetFocus
            End If
        End If
    End If
End If
End Sub
