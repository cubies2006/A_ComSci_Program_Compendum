VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   2775
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3735
   LinkTopic       =   "Form2"
   ScaleHeight     =   2775
   ScaleWidth      =   3735
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "play"
      Height          =   495
      Left            =   1080
      TabIndex        =   4
      Top             =   1800
      Width           =   1455
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form2.frx":0000
      Left            =   1560
      List            =   "Form2.frx":000D
      TabIndex        =   3
      Text            =   "Type 1"
      Top             =   1200
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1560
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1560
      TabIndex        =   2
      Top             =   720
      Width           =   1575
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   960
      Top             =   2400
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
      Connect         =   $"Form2.frx":0029
      OLEDBString     =   $"Form2.frx":00C1
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
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Player name:"
      Height          =   195
      Left            =   480
      TabIndex        =   6
      Top             =   240
      Width           =   915
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Game score:"
      Height          =   195
      Left            =   480
      TabIndex        =   5
      Top             =   720
      Width           =   900
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Game type:"
      Height          =   195
      Left            =   480
      TabIndex        =   1
      Top             =   1200
      Width           =   810
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Adodc1.RecordSource = "select * from player where playername like '" & Text1.Text & "'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox ("Record not found")
    Else
        points = Val(Adodc1.Recordset.Fields("playerpoints"))
        If Text2.Text > 5000 And Text2.Text <= 10000 Then
            points = points + 5
        ElseIf Text2.Text > 10000 And Text2.Text <= 20000 Then
            points = points + 10
        ElseIf Text2.Text > 20000 Then
            points = points + 25
        End If
        If Combo1.Text = "Type 1" And points >= 10 Then
            MsgBox ("Can play")
        ElseIf Combo1.Text = "Type 2" And points >= 100 Then
            MsgBox ("Can play")
        ElseIf Combo1.Text = "Type 3" And points >= 500 Then
            MsgBox ("Can play")
        Else
            MsgBox ("Cannot play")
        End If
    End If
End Sub
