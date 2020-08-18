VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4650
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4950
   LinkTopic       =   "Form1"
   ScaleHeight     =   4650
   ScaleWidth      =   4950
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command5 
      Caption         =   "next"
      Height          =   255
      Left            =   3480
      TabIndex        =   5
      Top             =   720
      Width           =   1095
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   2055
      Left            =   240
      TabIndex        =   11
      Top             =   2280
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   3625
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   3
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Player name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Player date"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Player points"
         Object.Width           =   2540
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   3120
      Top             =   1200
      Visible         =   0   'False
      Width           =   1695
      _ExtentX        =   2990
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
      Connect         =   $"Form1.frx":0000
      OLEDBString     =   $"Form1.frx":0098
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
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
   Begin VB.CommandButton Command4 
      Caption         =   "delete"
      Height          =   255
      Left            =   3480
      TabIndex        =   8
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "edit"
      Height          =   255
      Left            =   1920
      TabIndex        =   7
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "add"
      Height          =   255
      Left            =   360
      TabIndex        =   6
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "search"
      Height          =   255
      Left            =   3480
      TabIndex        =   4
      Top             =   240
      Width           =   1095
   End
   Begin VB.TextBox Text3 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1440
      TabIndex        =   3
      Top             =   1200
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1440
      TabIndex        =   2
      Top             =   720
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1440
      TabIndex        =   1
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Player points:"
      Height          =   195
      Left            =   360
      TabIndex        =   10
      Top             =   1200
      Width           =   945
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Player date:"
      Height          =   195
      Left            =   360
      TabIndex        =   9
      Top             =   720
      Width           =   840
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Player name:"
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   915
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Adodc1.RecordSource = "select * from player where playername like '" & Text1.Text & "'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        Text2.Text = ""
        Text3.Text = ""
        MsgBox ("Record not found")
    Else
        Text2.Text = Adodc1.Recordset.Fields("playerdate")
        Text3.Text = Adodc1.Recordset.Fields("playerpoints")
        MsgBox ("Record found")
    End If
End Sub

Private Sub Command2_Click()
    If Command2.Caption = "add" Then
        Text2.Enabled = True
        Text3.Enabled = True
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Command2.Caption = "save"
        Command1.Enabled = False
        Command3.Enabled = False
        Command4.Enabled = False
    Else
        Adodc1.RecordSource = "select * from player where playername like '" & Text1.Text & "'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            Adodc1.Recordset.AddNew
            Adodc1.Recordset.Fields("playername") = Text1.Text
            Adodc1.Recordset.Fields("playerdate") = Text2.Text
            Adodc1.Recordset.Fields("playerpoints") = Text3.Text
            Adodc1.Recordset.Update
            Adodc1.Recordset.MoveNext
            Adodc1.Refresh
            MsgBox ("Record save")
            Text2.Enabled = False
            Text3.Enabled = False
            Text1.Text = ""
            Text2.Text = ""
            Text3.Text = ""
            Form_Load
            Command2.Caption = "add"
            Command1.Enabled = True
            Command3.Enabled = True
            Command4.Enabled = True
        Else
            MsgBox ("Record already exists")
        End If
    End If
End Sub

Private Sub Command3_Click()
    If Command3.Caption = "edit" Then
        Text1.Enabled = False
        Text2.Enabled = True
        Text3.Enabled = True
        Command3.Caption = "update"
        Command1.Enabled = False
        Command2.Enabled = False
        Command4.Enabled = False
    Else
        Adodc1.RecordSource = "select * from player where playername like '" & Text1.Text & "'"
        Call Adodc1.Refresh
        Adodc1.Recordset.Fields("playerdate") = Text2.Text
        Adodc1.Recordset.Fields("playerpoints") = Text3.Text
        Adodc1.Recordset.Update
        Adodc1.Refresh
        MsgBox ("Record update")
        Text1.Enabled = True
        Text2.Enabled = False
        Text3.Enabled = False
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Form_Load
        Command3.Caption = "edit"
        Command1.Enabled = True
        Command2.Enabled = True
        Command4.Enabled = True
    End If
End Sub

Private Sub Command4_Click()
    If MsgBox("Are you sure you want to delete this record?", vbOKCancel) = vbOK Then
        Adodc1.RecordSource = "select * from player where playername like '" & Text1.Text & "'"
        Call Adodc1.Refresh
        Adodc1.Recordset.Delete
        Adodc1.Refresh
        MsgBox ("Record deleted")
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Form_Load
    End If
End Sub

Private Sub Command5_Click()
    Form2.Show
End Sub

Private Sub Form_Load()
    Adodc1.RecordSource = "select * from player"
    Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
    Else
        ListView1.ListItems.Clear
        Do While Adodc1.Recordset.EOF <> True
            Set items = ListView1.ListItems.Add(, , Adodc1.Recordset.Fields("playername"))
            items.SubItems(1) = Adodc1.Recordset.Fields("playerdate")
            items.SubItems(2) = Adodc1.Recordset.Fields("playerpoints")
            Adodc1.Recordset.MoveNext
        Loop
    End If
End Sub

Private Sub ListView1_Click()
    List = ListView1.SelectedItem
    Adodc1.RecordSource = "select * from player where playername like '" & List & "'"
    Call Adodc1.Refresh
    Text1.Text = Adodc1.Recordset.Fields("playername")
    Text2.Text = Adodc1.Recordset.Fields("playerdate")
    Text3.Text = Adodc1.Recordset.Fields("playerpoints")
End Sub
