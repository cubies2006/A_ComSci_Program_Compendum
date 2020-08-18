VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FRMOPAC 
   BackColor       =   &H00000000&
   Caption         =   "OPAC"
   ClientHeight    =   8190
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   11880
   LinkTopic       =   "Form1"
   ScaleHeight     =   8190
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture4 
      BackColor       =   &H8000000D&
      Height          =   2175
      Left            =   240
      ScaleHeight     =   2115
      ScaleWidth      =   11475
      TabIndex        =   13
      Top             =   5520
      Width           =   11535
      Begin VB.TextBox TXTCOPYRIGHT 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   5640
         TabIndex        =   12
         Top             =   1560
         Width           =   1215
      End
      Begin VB.TextBox TXTDESC 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   10080
         TabIndex        =   11
         Top             =   1560
         Width           =   1095
      End
      Begin VB.TextBox TXTHOLDINGS 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   10080
         TabIndex        =   10
         Top             =   840
         Width           =   1095
      End
      Begin VB.TextBox TXTAVAILABLE 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   10080
         TabIndex        =   9
         Top             =   1200
         Width           =   1095
      End
      Begin VB.TextBox TXTISBN 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   5040
         TabIndex        =   8
         Top             =   1200
         Width           =   1815
      End
      Begin VB.TextBox TXTSECTION 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   5040
         TabIndex        =   7
         Top             =   840
         Width           =   1815
      End
      Begin VB.TextBox TXTTITLE 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   5040
         TabIndex        =   6
         Top             =   480
         Width           =   6180
      End
      Begin VB.TextBox TXTPUBLISHER 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1560
         TabIndex        =   5
         Top             =   1560
         Width           =   2055
      End
      Begin VB.TextBox TXTAUTHOR 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1560
         TabIndex        =   4
         Top             =   1200
         Width           =   2055
      End
      Begin VB.TextBox TXTSUBJECT 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1560
         TabIndex        =   3
         Top             =   840
         Width           =   2055
      End
      Begin VB.TextBox txtCALLNUMBER 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1560
         TabIndex        =   2
         Top             =   480
         Width           =   2055
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "COPYRIGHT YEAR:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   3840
         TabIndex        =   25
         Top             =   1560
         Width           =   1710
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESCRIPTION (Php):"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   8040
         TabIndex        =   24
         Top             =   1560
         Width           =   1965
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "AVAILABLE:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   8040
         TabIndex        =   23
         Top             =   1200
         Width           =   1125
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "HOLDINGS:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   8040
         TabIndex        =   22
         Top             =   840
         Width           =   1050
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "ISBN:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   3840
         TabIndex        =   21
         Top             =   1200
         Width           =   525
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "SECTION:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   3840
         TabIndex        =   20
         Top             =   840
         Width           =   900
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "PUBLISHER:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   19
         Top             =   1560
         Width           =   1125
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "SUBJECT:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   18
         Top             =   840
         Width           =   885
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "AUTHOR:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   17
         Top             =   1200
         Width           =   840
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "TITLE:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   3840
         TabIndex        =   16
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "CALLNUMBER:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   15
         Top             =   480
         Width           =   1305
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "BOOK DESCRIPTION"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   0
         TabIndex        =   14
         Top             =   0
         Width           =   11655
      End
   End
   Begin MSComctlLib.ListView BOOKLIST 
      Height          =   3255
      Left            =   240
      TabIndex        =   1
      Top             =   2280
      Width           =   11535
      _ExtentX        =   20346
      _ExtentY        =   5741
      SortKey         =   1
      View            =   3
      LabelEdit       =   1
      Sorted          =   -1  'True
      LabelWrap       =   0   'False
      HideSelection   =   0   'False
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      HoverSelection  =   -1  'True
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
      NumItems        =   7
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "CALL NUMBER"
         Object.Width           =   3881
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   1
         Text            =   "TITLE"
         Object.Width           =   4481
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   2
         Text            =   "AUTHOR"
         Object.Width           =   2893
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "SUBJECT"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "COPYRIGHT YEAR"
         Object.Width           =   1587
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Text            =   "PUBLISHER"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   6
         Text            =   "HOLDINGS"
         Object.Width           =   2152
      EndProperty
   End
   Begin VB.PictureBox Picture1 
      Height          =   8085
      Left            =   0
      Picture         =   "FRMOPAC.frx":0000
      ScaleHeight     =   8025
      ScaleWidth      =   12450
      TabIndex        =   0
      Top             =   0
      Width           =   12510
      Begin VB.TextBox txtsearch 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   4200
         TabIndex        =   27
         Top             =   1680
         Width           =   2775
      End
      Begin VB.ComboBox Combofield 
         Height          =   315
         ItemData        =   "FRMOPAC.frx":9F89
         Left            =   840
         List            =   "FRMOPAC.frx":9F96
         Style           =   2  'Dropdown List
         TabIndex        =   26
         Top             =   1680
         Width           =   2295
      End
      Begin VB.CommandButton cmdsearch 
         Caption         =   "&SEARCH"
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
         Left            =   7320
         Picture         =   "FRMOPAC.frx":9FB2
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   1200
         Width           =   1455
      End
      Begin VB.CommandButton cmdclear 
         Caption         =   "&NEW SEARCH"
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
         Left            =   8880
         Picture         =   "FRMOPAC.frx":A063
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   1200
         Width           =   1335
      End
      Begin VB.CommandButton cmdall 
         Caption         =   "&VIEW ALL"
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
         Left            =   10320
         Picture         =   "FRMOPAC.frx":A670
         Style           =   1  'Graphical
         TabIndex        =   31
         Top             =   1200
         Width           =   1335
      End
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   375
         Left            =   120
         Top             =   7560
         Visible         =   0   'False
         Width           =   2895
         _ExtentX        =   5106
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
         Connect         =   $"FRMOPAC.frx":AC96
         OLEDBString     =   $"FRMOPAC.frx":AD28
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   ""
         Caption         =   "Books"
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
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Field:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   240
         TabIndex        =   32
         Top             =   1680
         Width           =   540
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Record:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   3360
         TabIndex        =   28
         Top             =   1680
         Width           =   735
      End
   End
   Begin VB.Menu FILE 
      Caption         =   "FILE"
      Begin VB.Menu MNUEXIT 
         Caption         =   "EXIT"
         Shortcut        =   ^X
      End
   End
End
Attribute VB_Name = "FRMOPAC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim CTENT As Boolean

Sub enabled_button()
cmdsearch.Enabled = True
cmdclear.Enabled = True
cmdall.Enabled = True
cmdExit.Enabled = True
CTENT = False
End Sub
Sub disaled_button()
cmdsearch.Enabled = False
cmdclear.Enabled = False
cmdall.Enabled = False
cmdExit.Enabled = False
End Sub


Private Sub BOOKLIST_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then
    If CTENT = True Then
        SN = BOOKLIST.SelectedItem
        Adodc1.RecordSource = "Select * from books Where CALLNUMBER like '" & SN & "'"
        Adodc1.Refresh
        TRANSFER_TEXT
    Else
        MsgBox "NO RECORD TO SELECT", vbIn
    End If
End If
End Sub

Private Sub cmdall_Click()
    Adodc1.RecordSource = "Select * from books"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
    End If
End Sub



Private Sub cmdClear_Click()
txtsearch.Text = ""
 Adodc1.RecordSource = "Select * from books Where UPC like '" & txtsearch.Text & "'"
Call Adodc1.Refresh
Call CLEAR_TEXT
Call LOCKED_TEXT
CTENT = False
End Sub


Private Sub cmdExit_Click()
Unload Me
End Sub



Private Sub cmdsearch_Click()

Select Case Combofield.ListIndex
Case 0
    Adodc1.RecordSource = "Select * from books Where subject like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        Call CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
    End If
Case 1
    Adodc1.RecordSource = "Select * from books Where title like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
    End If
Case 2
    Adodc1.RecordSource = "Select * from books Where author like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        Call CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
    End If

End Select

End Sub


Private Sub Form_Load()
txtsearch.Text = ""
 Adodc1.RecordSource = "Select * from books Where subject like '" & txtsearch.Text & "'"
Call Adodc1.Refresh
Call CLEAR_TEXT
Call LOCKED_TEXT
CTENT = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    prompt$ = "Are you sure you want to EXIT?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Pasay City Hall Library System")
        If reply = vbYes Then
            End
        Else
            Cancel = True
        End If
    LD = 0
End Sub
Sub CLEAR_TEXT()
'TXTUPC.Text = ""
txtCALLNUMBER.Text = ""
TXTTITLE.Text = ""
TXTSUBJECT.Text = ""
TXTAUTHOR.Text = ""
TXTPUBLISHER.Text = ""
TXTCOPYRIGHT.Text = ""
TXTDESC.Text = ""
TXTISBN.Text = ""
TXTHOLDINGS.Text = ""
TXTSECTION.Text = ""
TXTAVAILABLE.Text = ""
BOOKLIST.ListItems.Clear
End Sub

Sub LOCKED_TEXT()
'TXTUPC.Locked = True
txtCALLNUMBER.Locked = True
TXTTITLE.Locked = True
TXTSUBJECT.Locked = True
TXTAUTHOR.Locked = True
TXTPUBLISHER.Locked = True
TXTCOPYRIGHT.Locked = True
TXTDESC.Locked = True
TXTISBN.Locked = True
TXTHOLDINGS.Locked = True
TXTSECTION.Locked = True
TXTAVAILABLE.Locked = True
End Sub

Sub UNLOCKED_TEXT()
TXTTITLE.Locked = False
TXTSUBJECT.Locked = False
TXTAUTHOR.Locked = False
TXTPUBLISHER.Locked = False
TXTCOPYRIGHT.Locked = False
TXTDESC.Locked = False
TXTISBN.Locked = False
TXTSECTION.Locked = False
TXTAVAILABLE.Locked = False
End Sub

Sub TRANSFER_TEXT()
If Adodc1.Recordset.EOF <> True Then
    'TXTUPC.Text = Adodc1.Recordset.Fields("UPC")
    txtCALLNUMBER.Text = Adodc1.Recordset.Fields("CALLNUMBER")
    TXTTITLE.Text = Adodc1.Recordset.Fields("title")
    TXTSUBJECT.Text = Adodc1.Recordset.Fields("subject")
    TXTAUTHOR.Text = Adodc1.Recordset.Fields("author")
    TXTPUBLISHER.Text = Adodc1.Recordset.Fields("publisher")
    TXTISBN.Text = Adodc1.Recordset.Fields("ISBN")
    TXTCOPYRIGHT.Text = Adodc1.Recordset.Fields("COPYRIGHT")
    TXTDESC.Text = Adodc1.Recordset.Fields("description")
    TXTHOLDINGS.Text = Adodc1.Recordset.Fields("holdings")
    TXTSECTION.Text = Adodc1.Recordset.Fields("SECTION")
    TXTAVAILABLE.Text = Adodc1.Recordset.Fields("onshelf")
Else
    MsgBox "No record found!", vbInformation
End If

End Sub

Sub LISTVIEW_CONTENT()
  BOOKLIST.ListItems.Clear
    If Adodc1.Recordset.EOF = False Then
    
        Do While Adodc1.Recordset.EOF <> True
            Set lstitem = BOOKLIST.ListItems.Add(, , Adodc1.Recordset.Fields("CALLNUMBER"))
                lstitem.SubItems(1) = Adodc1.Recordset.Fields("title")
                lstitem.SubItems(2) = Adodc1.Recordset.Fields("author")
                lstitem.SubItems(3) = Adodc1.Recordset.Fields("subject")
                lstitem.SubItems(4) = Adodc1.Recordset.Fields("COPYRIGHT")
                lstitem.SubItems(5) = Adodc1.Recordset.Fields("publisher")
                lstitem.SubItems(6) = Adodc1.Recordset.Fields("holdings")
                              
            Adodc1.Recordset.MoveNext 'goto next record
       Loop
       CTENT = True
    Else
    MsgBox "LookUp Table has no Data to display", vbInformation
    End If
    
End Sub

Private Sub BOOKLIST_Click()
If CTENT = True Then
    SN = BOOKLIST.SelectedItem
    Adodc1.RecordSource = "Select * from books Where CALLNUMBER like '" & SN & "'"
    Adodc1.Refresh
    TRANSFER_TEXT
Else
 MsgBox "NO RECORD TO SELECT"
End If

End Sub

Private Sub mnuExit_Click()
Unload Me
End Sub



