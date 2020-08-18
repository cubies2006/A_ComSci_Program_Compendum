VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmLogin 
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Dummy Files - User Login"
   ClientHeight    =   4635
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6810
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   4635
   ScaleWidth      =   6810
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame FrameLoginEnterExit 
      BorderStyle     =   0  'None
      Height          =   855
      Left            =   1680
      TabIndex        =   14
      Top             =   3000
      Width           =   3375
      Begin VB.CommandButton cmdExit 
         BackColor       =   &H00FFC0FF&
         Caption         =   "E&XIT"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   1800
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   240
         Width           =   1335
      End
      Begin VB.CommandButton cmdEnter 
         BackColor       =   &H00FFFF80&
         Caption         =   "&ENTER"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   3840
      Top             =   0
   End
   Begin VB.TextBox txtDate 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFFF&
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "MMMM dd, yyyy"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   3
      EndProperty
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   4080
      Width           =   1935
   End
   Begin VB.TextBox txtTime 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFFF&
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "h:mm:ss AMPM"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   4
      EndProperty
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   4080
      Width           =   1935
   End
   Begin MSAdodcLib.Adodc UserLog 
      Height          =   330
      Left            =   1800
      Top             =   0
      Visible         =   0   'False
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   582
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
      Connect         =   $"frmLogin.frx":0000
      OLEDBString     =   $"frmLogin.frx":0090
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """Select * from UserLogin"""
      Caption         =   "UserLog"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Users 
      Height          =   330
      Left            =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   582
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
      Connect         =   $"frmLogin.frx":0120
      OLEDBString     =   $"frmLogin.frx":01AD
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Users"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFC0C0&
      BorderStyle     =   0  'None
      Height          =   1935
      Left            =   480
      TabIndex        =   10
      Top             =   960
      Width           =   5775
      Begin VB.TextBox txtUsername 
         BackColor       =   &H00C0FFFF&
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
         Left            =   2280
         TabIndex        =   2
         Top             =   840
         Width           =   2775
      End
      Begin VB.TextBox txtPassword 
         BackColor       =   &H00C0FFFF&
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
         IMEMode         =   3  'DISABLE
         Left            =   2280
         MaxLength       =   16
         PasswordChar    =   "*"
         TabIndex        =   3
         Top             =   1440
         Width           =   2775
      End
      Begin VB.TextBox txtLoginNo 
         BackColor       =   &H00C0FFFF&
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
         Left            =   2280
         Locked          =   -1  'True
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   240
         Width           =   2775
      End
      Begin VB.Label lblPassword 
         BackStyle       =   0  'Transparent
         Caption         =   "Password:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   480
         TabIndex        =   13
         Top             =   1440
         Width           =   1575
      End
      Begin VB.Label lblUsername 
         BackStyle       =   0  'Transparent
         Caption         =   "Username:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   480
         TabIndex        =   12
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label lblLoginNo 
         BackStyle       =   0  'Transparent
         Caption         =   "Login No:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   480
         TabIndex        =   11
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Please enter your username and password:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   480
      TabIndex        =   9
      Top             =   360
      Width           =   5535
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Time:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   5
      Left            =   3600
      TabIndex        =   8
      Top             =   4080
      Width           =   690
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Date:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   4
      Left            =   480
      TabIndex        =   7
      Top             =   4080
      Width           =   675
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(9999), i, j, login As Integer
Public crypto, crypt

Private Sub cmdEnter_Click()
    Call ENCRYPTION
    login = 0
    txtPassword.Text = crypto
    On Error GoTo errorencryption
    Users.RecordSource = "Select * from UserRecords Where Username like '" & LCase(txtUsername.Text) & "' and password like '" & LCase(txtPassword.Text) & "'"
    Call Users.Refresh
    crypto = vbNullString
    If Users.Recordset.EOF Then
        MsgBox "Please Check Your Username and Password", vbCritical, "Dummy Files - ACCESS DENIED"
        txtPassword.Text = ""
        txtUsername.SetFocus
        crypto = ""
    Else
        UserLog.RecordSource = "Select * from UserLogin"
        Call UserLog.Refresh
        UserLog.Recordset.AddNew
        UserLog.Recordset.Fields("LoginNo") = txtLoginNo.Text
        UserLog.Recordset.Fields("Username") = LCase(txtUsername.Text)
        UserLog.Recordset.Fields("Login") = Time
        UserLog.Recordset.Fields("Date") = txtDate.Text
        UserLog.Recordset.Update
        UserLog.Refresh
        frmUsers.UserLoginLists.Refresh
        login = 1
        frmLogin.Hide
        Dummy_Files.Show
    End If
errorencryption:
    txtPassword.Text = ""
    crypto = ""
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub Form_Activate()
    txtUsername.SetFocus
End Sub

Private Sub Form_Load()
    txtDate.Text = Format(Date, "mmmm dd, yy")
    txtTime.Text = Format(Time, "hh:mm:ss AM/PM")
    For j = 1 To frmUsers.UserLoginLists.ListItems.Count
        a(j) = Val(frmUsers.UserLoginLists.ListItems.Item(j))
    Next
    a(j - 1) = a(j - 1) + 1
    txtLoginNo.Text = Str(a(j - 1))
End Sub

Private Sub Form_Unload(Cancel As Integer)
    replyexit = MsgBox("Are you sure you don't want to enter the Dummy Files Program?", vbYesNo + vbQuestion, "Dummy Files - Login Exit")
    If replyexit = vbYes Then
        End
    Else
        Cancel = True
    End If
End Sub

Private Sub Timer1_Timer()
    txtDate.Text = Format(Date, "mmmm dd, yyyy")
    txtTime.Text = Format(Time, "hh:mm:ss AM/PM")
End Sub

Private Sub ENCRYPTION()
    For crypt = 1 To Len(txtPassword.Text) Step 1
        crypto = crypto & IIf(crypt <> 1, Chr(Asc(Mid(txtPassword.Text, crypt, 1)) + crypt), Chr(Asc(Left(txtPassword.Text, crypt)) + Len(txtPassword.Text)))
    Next
End Sub
