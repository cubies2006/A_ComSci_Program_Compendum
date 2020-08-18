VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmEmployeeLogin 
   BackColor       =   &H80000008&
   Caption         =   "Employee Login"
   ClientHeight    =   5505
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6555
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   NegotiateMenus  =   0   'False
   Picture         =   "frmEmployeeLogin.frx":0000
   ScaleHeight     =   5505
   ScaleWidth      =   6555
   StartUpPosition =   1  'CenterOwner
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   2640
      Top             =   0
      Visible         =   0   'False
      Width           =   2535
      _ExtentX        =   4471
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
      Connect         =   $"frmEmployeeLogin.frx":A207
      OLEDBString     =   $"frmEmployeeLogin.frx":A29D
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Employee Login"
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
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   5160
      Top             =   0
   End
   Begin VB.TextBox txtTime 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
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
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   16
      TabStop         =   0   'False
      Top             =   3600
      Width           =   1410
   End
   Begin VB.CommandButton cmdBack 
      Caption         =   "&Back"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   3480
      Picture         =   "frmEmployeeLogin.frx":A333
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Go back to the Select Login"
      Top             =   4080
      Width           =   1215
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   2655
      _ExtentX        =   4683
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
      Connect         =   $"frmEmployeeLogin.frx":A3EE
      OLEDBString     =   $"frmEmployeeLogin.frx":A484
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """Select * from employeesecurity"""
      Caption         =   "Employee Security"
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
   Begin VB.TextBox txtLogInNumber 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2880
      Locked          =   -1  'True
      TabIndex        =   12
      TabStop         =   0   'False
      Top             =   1020
      Width           =   2325
   End
   Begin VB.TextBox txtDate 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
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
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   11
      TabStop         =   0   'False
      Top             =   3600
      Width           =   1890
   End
   Begin VB.CommandButton cmdChange 
      Caption         =   "&Change Password"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2160
      Picture         =   "frmEmployeeLogin.frx":A51A
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Change your password"
      Top             =   4080
      Width           =   1335
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
      Height          =   1095
      Left            =   4680
      Picture         =   "frmEmployeeLogin.frx":A5F6
      Style           =   1  'Graphical
      TabIndex        =   9
      ToolTipText     =   "Exit the Inventory System"
      Top             =   4080
      Width           =   1215
   End
   Begin VB.CommandButton cmdEnter 
      Caption         =   "&Go to Inventory"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   720
      Picture         =   "frmEmployeeLogin.frx":A705
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "Enter to the Employee Inventory System"
      Top             =   4080
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000D&
      Height          =   2055
      Left            =   720
      TabIndex        =   0
      Top             =   1440
      Width           =   5175
      Begin VB.TextBox txtName 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2520
         TabIndex        =   4
         ToolTipText     =   "Type your employee name here"
         Top             =   960
         Width           =   2295
      End
      Begin VB.TextBox txtPass 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         IMEMode         =   3  'DISABLE
         Left            =   2520
         PasswordChar    =   "*"
         TabIndex        =   5
         ToolTipText     =   "Type your password here"
         Top             =   1440
         Width           =   2295
      End
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
         Height          =   375
         Left            =   2520
         TabIndex        =   3
         ToolTipText     =   "Type your employee # here"
         Top             =   480
         Width           =   2295
      End
      Begin VB.Image Image3 
         Height          =   300
         Left            =   360
         Picture         =   "frmEmployeeLogin.frx":ABE1
         Top             =   960
         Width           =   225
      End
      Begin VB.Label Label4 
         BackColor       =   &H80000007&
         BackStyle       =   0  'Transparent
         Caption         =   "Employee Name:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   840
         TabIndex        =   17
         Top             =   960
         Width           =   1695
      End
      Begin VB.Image Image2 
         Height          =   390
         Left            =   240
         Picture         =   "frmEmployeeLogin.frx":CEAC
         Top             =   1320
         Width           =   480
      End
      Begin VB.Image Image1 
         Height          =   270
         Left            =   360
         Picture         =   "frmEmployeeLogin.frx":CF89
         Top             =   480
         Width           =   285
      End
      Begin VB.Label Label2 
         BackColor       =   &H80000007&
         BackStyle       =   0  'Transparent
         Caption         =   "Password:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   840
         TabIndex        =   2
         Top             =   1440
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H80000007&
         BackStyle       =   0  'Transparent
         Caption         =   "Employee #:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   840
         TabIndex        =   1
         Top             =   480
         Width           =   1575
      End
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Log In Number:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   195
      Index           =   2
      Left            =   1200
      TabIndex        =   15
      Top             =   1080
      Width           =   1500
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Date:"
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
      Height          =   210
      Index           =   4
      Left            =   720
      TabIndex        =   14
      Top             =   3720
      Width           =   540
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Time:"
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
      Height          =   210
      Index           =   5
      Left            =   3720
      TabIndex        =   13
      Top             =   3720
      Width           =   555
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      Caption         =   "Please enter your employee # and security code:"
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
      Height          =   735
      Left            =   1320
      TabIndex        =   10
      Top             =   240
      Width           =   3735
   End
End
Attribute VB_Name = "frmEmployeeLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(100) As Integer

Private Sub cmdBack_Click()
    frmEmployeeLogin.Hide
    frmSelectedLogin.Show
End Sub

Private Sub cmdChange_Click()
prompt$ = "Do you want to change your password?"
reply = MsgBox(prompt$, vbQuestion + vbYesNo, "Change Password?")
If reply = vbYes Then
    Me.Hide
    frmEmployeeChange.Show
End If
End Sub

Private Sub cmdEnter_Click()
    'search employee ID, employee name and password...
    'validate to enter the employee's inventory
    Adodc1.RecordSource = "Select * from employeesecurity Where Password like '" & txtPass.Text & "' and EmpNo like '" & txtUN.Text & "'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "Please Check Your Employee Number, Employee Name and Password", vbCritical, "ACCESS DENIED"
        txtUN.SetFocus
    Else
        Adodc2.RecordSource = "Select * from employeelogin"
        Call Adodc2.Refresh
        Adodc2.Recordset.AddNew
        Adodc2.Recordset.Fields("LoginNo") = txtLogInNumber.Text
        Adodc2.Recordset.Fields("EmpID") = txtUN.Text
        Adodc2.Recordset.Fields("EmpName") = txtName.Text
        Adodc2.Recordset.Fields("LoginTime") = txtTime.Text
        Adodc2.Recordset.Fields("Date") = txtDate.Text
        Adodc2.Recordset.Update
        Adodc2.Recordset.MoveNext
        Me.Hide
        frmLoading.Show
    End If
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub Form_Activate()
    txtUN.SetFocus
End Sub

Private Sub Form_Load()
    txtDate.Text = Format(Date, "mmmm dd, yyyy")
    txtTime.Text = Format(Time, "hh:mm:ss AM/PM")
    For i = 1 To frmViewEmployeeLogin.EmployeeLoginList.ListItems.Count
        a(i) = Val(frmViewEmployeeLogin.EmployeeLoginList.ListItems.Item(i))
    Next
    a(i - 1) = a(i - 1) + 1
    txtLogInNumber.Text = Str(a(i - 1))
End Sub

Private Sub Form_Unload(Cancel As Integer)
    prompt$ = "Are you sure you don't want to enter the C. S. Enriquez Mechanical Work Shop Inventory System?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Inventory System")
        If reply = vbYes Then
            End
        Else
            Cancel = True
        End If
End Sub

Private Sub txtUN_Change()
If IsNumeric(txtUN.Text) Then
Else
    ' MsgBox "Please enter a numeric employee number."
    txtUN.Text = ""
End If
End Sub

Private Sub Timer1_Timer()
    txtDate.Text = Format(Date, "mmmm dd, yyyy")
    txtTime.Text = Format(Time, "hh:mm:ss AM/PM")
End Sub



