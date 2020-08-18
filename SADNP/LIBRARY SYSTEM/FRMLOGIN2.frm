VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form FRMLOGIN2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "LIBRARIAN LOG IN"
   ClientHeight    =   5955
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6450
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5955
   ScaleWidth      =   6450
   StartUpPosition =   1  'CenterOwner
   Begin VB.PictureBox Picture1 
      Height          =   6015
      Left            =   0
      Picture         =   "FRMLOGIN2.frx":0000
      ScaleHeight     =   5955
      ScaleWidth      =   6435
      TabIndex        =   0
      Top             =   0
      Width           =   6495
      Begin VB.CommandButton cmdChange 
         Caption         =   "Change Password"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   3120
         Picture         =   "FRMLOGIN2.frx":AB0B
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Change password"
         Top             =   4320
         Width           =   1455
      End
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   375
         Left            =   2880
         Top             =   5400
         Visible         =   0   'False
         Width           =   2655
         _ExtentX        =   4683
         _ExtentY        =   661
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
         Connect         =   $"FRMLOGIN2.frx":ABE7
         OLEDBString     =   $"FRMLOGIN2.frx":AC79
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   "select * from LibrarianLogFile"
         Caption         =   "Librarian_Log_File"
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
      Begin VB.TextBox txtPass 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         IMEMode         =   3  'DISABLE
         Left            =   3360
         PasswordChar    =   "*"
         TabIndex        =   2
         Top             =   3360
         Width           =   2415
      End
      Begin VB.TextBox txtUserno 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3360
         TabIndex        =   1
         Top             =   2760
         Width           =   2415
      End
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   375
         Left            =   0
         Top             =   5400
         Visible         =   0   'False
         Width           =   2775
         _ExtentX        =   4895
         _ExtentY        =   661
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
         Connect         =   $"FRMLOGIN2.frx":AD0B
         OLEDBString     =   $"FRMLOGIN2.frx":AD9D
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
         Height          =   975
         Left            =   4560
         Picture         =   "FRMLOGIN2.frx":AE2F
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Back "
         Top             =   4320
         Width           =   1455
      End
      Begin VB.CommandButton cmdEnter 
         Caption         =   "&Enter the Library "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   1680
         Picture         =   "FRMLOGIN2.frx":AEEA
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Click here to enter the Library System"
         Top             =   4320
         Width           =   1455
      End
      Begin VB.Shape Shape5 
         BackColor       =   &H00C00000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00C00000&
         Height          =   375
         Left            =   3240
         Top             =   3480
         Width           =   2415
      End
      Begin VB.Shape Shape4 
         BackColor       =   &H00C00000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00C00000&
         Height          =   375
         Left            =   3240
         Top             =   2880
         Width           =   2415
      End
      Begin VB.Image Image2 
         Height          =   390
         Left            =   1560
         Picture         =   "FRMLOGIN2.frx":BC94
         Top             =   3240
         Width           =   480
      End
      Begin VB.Image Image1 
         Height          =   270
         Left            =   1680
         Picture         =   "FRMLOGIN2.frx":BD71
         Top             =   2760
         Width           =   285
      End
      Begin VB.Shape Shape3 
         BackColor       =   &H8000000D&
         BackStyle       =   1  'Opaque
         Height          =   135
         Left            =   1440
         Top             =   3960
         Width           =   4695
      End
      Begin VB.Shape Shape2 
         BackColor       =   &H8000000D&
         BackStyle       =   1  'Opaque
         Height          =   135
         Left            =   1440
         Top             =   2400
         Width           =   4695
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H8000000D&
         Height          =   1695
         Left            =   1440
         Top             =   2400
         Width           =   4695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "Employee Number: "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   495
         Left            =   2040
         TabIndex        =   7
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "Password: "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   210
         Left            =   2160
         TabIndex        =   6
         Top             =   3290
         Width           =   1110
      End
   End
End
Attribute VB_Name = "FRMLOGIN2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdBack_Click()
Me.Hide
FRMSELECT.Show
End Sub

Private Sub cmdChange_Click()
prompt$ = "Do you want to change your password?"
reply = MsgBox(prompt$, vbQuestion + vbYesNo, "Change Password?")
If reply = vbYes Then
    Me.Hide
    FRMCHANGE.Show
End If
End Sub

Private Sub cmdEnter_Click()
If txtUserno.Text = "" Then
    MsgBox "Please enter your Employee Number.", vbInformation, "Invalid Employee No!"
ElseIf txtPass.Text = "" Then
    MsgBox "Please enter your Password.", vbInformation, "Invalid Password!"
Else
    'search username and password...
    'validate to enter the main menu
    Adodc1.RecordSource = "Select * from Librarian Where password like '" & txtPass.Text & "' and userno like '" & txtUserno.Text & "'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "Please Check Your Employee Number and Password", vbExclamation, "ACCESS DENIED"
        txtUserno.Text = ""
        txtPass.Text = ""
        txtUserno.SetFocus
    Else
        Call Adodc2.Refresh
        Adodc2.Recordset.AddNew
        Adodc2.Recordset.Fields("userno") = txtUserno.Text
        Adodc2.Recordset.Fields("position") = Adodc1.Recordset.Fields("position")
        Adodc2.Recordset.Fields("surname") = Adodc1.Recordset.Fields("surname")
        Adodc2.Recordset.Fields("firstname") = Adodc1.Recordset.Fields("firstname")
        Adodc2.Recordset.Fields("mn") = Adodc1.Recordset.Fields("mn")
        Adodc2.Recordset.Fields("loginDate") = Date
        Adodc2.Recordset.Fields("loginTime") = Time
        Adodc2.Recordset.Update
        Adodc2.Refresh
        Adodc2.Refresh
        Me.Hide
        MDILIBRARY.Show
    End If
End If
End Sub

Private Sub Form_Activate()
txtUserno.Text = ""
txtPass.Text = ""
txtUserno.SetFocus
End Sub


Private Sub Form_Unload(Cancel As Integer)
    prompt$ = "Are you sure you don't want to enter the Pasay City Hall Library System?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Pasay City Hall Library System")
        If reply = vbYes Then
            End
        Else
            Cancel = True
            FRMLOGIN2.txtUserno.Text = ""
            FRMLOGIN2.txtPass.Text = ""
        End If
End Sub


Private Sub txtPass_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    cmdEnter.SetFocus
    If txtUserno.Text = "" Then
        MsgBox "Please enter your Employee Number.", vbInformation, "Invalid Employee No!"
    ElseIf txtPass.Text = "" Then
        MsgBox "Please enter your Password.", vbInformation, "Invalid Password!"
    Else
        Adodc1.RecordSource = "Select * from LIBRARIAN Where password like '" & txtPass.Text & "' and userno like '" & txtUserno.Text & "'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            MsgBox "Please Check Your Employee Number and Password", vbExclamation, "ACCESS DENIED"
            txtUserno.Text = ""
            txtPass.Text = ""
            txtUserno.SetFocus
        Else
            Call Adodc2.Refresh
            Adodc2.Recordset.AddNew
            Adodc2.Recordset.Fields("userno") = txtUserno.Text
            Adodc2.Recordset.Fields("position") = Adodc1.Recordset.Fields("position")
            Adodc2.Recordset.Fields("surname") = Adodc1.Recordset.Fields("surname")
            Adodc2.Recordset.Fields("firstname") = Adodc1.Recordset.Fields("firstname")
            Adodc2.Recordset.Fields("mn") = Adodc1.Recordset.Fields("mn")
            Adodc2.Recordset.Fields("loginDate") = Date
            Adodc2.Recordset.Fields("loginTime") = Time
            Adodc2.Recordset.Update
            Adodc2.Refresh
            Adodc2.Refresh
            Me.Hide
            MDILIBRARY.Show
        End If
    End If
End If
End Sub

Private Sub txtUserno_Change()
If IsNumeric(txtUserno.Text) Then
Else
    ' MsgBox "Please enter a numeric student number."
    txtUserno.Text = ""
End If
End Sub
