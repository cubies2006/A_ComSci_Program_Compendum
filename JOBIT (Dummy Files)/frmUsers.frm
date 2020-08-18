VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmUsers 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Lists of Users Who Logged In"
   ClientHeight    =   3090
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc UserLog 
      Height          =   330
      Left            =   0
      Top             =   0
      Width           =   2175
      _ExtentX        =   3836
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
      Connect         =   $"frmUsers.frx":0000
      OLEDBString     =   $"frmUsers.frx":0090
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "User Log"
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
   Begin MSComctlLib.ListView UserLoginLists 
      Height          =   3375
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   5953
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   5
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "LoginNo"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Username"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Login"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Logout"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "Date"
         Object.Width           =   2540
      EndProperty
   End
End
Attribute VB_Name = "frmUsers"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    UserLog.RecordSource = "Select * from UserLogin"
    Call UserLog.Refresh
    If (UserLog.Recordset.EOF) Then
    Else
        UL_LISTVIEW_CONTENT
    End If
End Sub

Sub UL_LISTVIEW_CONTENT()
    If (UserLog.Recordset.EOF = False) Then
        Do While (UserLog.Recordset.EOF <> True)
            Set litem = UserLoginLists.ListItems.Add(, , UserLog.Recordset.Fields("LoginNo"))
            litem.SubItems(1) = UserLog.Recordset.Fields("Username")
            litem.SubItems(2) = UserLog.Recordset.Fields("Login")
            litem.SubItems(4) = UserLog.Recordset.Fields("Date")
            UserLog.Recordset.Update
            UserLog.Recordset.MoveNext
        Loop
        CENT = True
    Else
        MsgBox "The table has no data files to display!!!", vbInformation
    End If
End Sub

Sub UM_TRANSFER_TEXT()
    If (UserLog.Recordset.EOF <> True) Then
        frmLogin.txtLoginNo.Text = UserLog.Recordset.Fields("LoginNo")
        frmLogin.txtUsername.Text = UserLog.Recordset.Fields("Username")
        frmLogin.txtDate.Text = UserLog.Recordset.Fields("Date")
    Else
        MsgBox "No Record Found!!!", vbInformation, "Search Failed"
    End If
End Sub

