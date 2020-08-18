VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form FRMCATALOGUING 
   BackColor       =   &H00C0FFFF&
   Caption         =   "CATALOG "
   ClientHeight    =   6390
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10905
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6390
   ScaleWidth      =   10905
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture5 
      BackColor       =   &H8000000D&
      Height          =   5415
      Left            =   6480
      ScaleHeight     =   5355
      ScaleWidth      =   5235
      TabIndex        =   24
      Top             =   1200
      Width           =   5295
      Begin MSMask.MaskEdBox txtDesc 
         Height          =   255
         Left            =   3120
         TabIndex        =   12
         Top             =   3120
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   450
         _Version        =   393216
         Format          =   "$#,##0.00;($#,##0.00)"
         PromptChar      =   "_"
      End
      Begin VB.TextBox TXTISBN 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   3120
         TabIndex        =   10
         Top             =   2520
         Width           =   1935
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         ItemData        =   "FRMCATALOGUING.frx":0000
         Left            =   3120
         List            =   "FRMCATALOGUING.frx":0010
         TabIndex        =   15
         Text            =   "Select Location"
         Top             =   3720
         Width           =   1935
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "FRMCATALOGUING.frx":003E
         Left            =   1800
         List            =   "FRMCATALOGUING.frx":0040
         TabIndex        =   14
         Text            =   "Select no. of books"
         Top             =   3720
         Width           =   1215
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "FRMCATALOGUING.frx":0042
         Left            =   120
         List            =   "FRMCATALOGUING.frx":0044
         TabIndex        =   13
         Text            =   "Combo1"
         Top             =   3720
         Width           =   1575
      End
      Begin VB.PictureBox Picture3 
         BackColor       =   &H00C0C0C0&
         Height          =   1095
         Left            =   120
         ScaleHeight     =   1035
         ScaleWidth      =   4875
         TabIndex        =   35
         Top             =   4200
         Width           =   4935
         Begin VB.CommandButton CMDEXIT 
            Caption         =   "E&XIT"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   855
            Left            =   4080
            MaskColor       =   &H0080FFFF&
            MouseIcon       =   "FRMCATALOGUING.frx":0046
            MousePointer    =   4  'Icon
            OLEDropMode     =   1  'Manual
            Style           =   1  'Graphical
            TabIndex        =   20
            Top             =   120
            UseMaskColor    =   -1  'True
            Width           =   735
         End
         Begin VB.CommandButton cmdedit 
            Caption         =   "&EDIT RECORD"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2040
            Style           =   1  'Graphical
            TabIndex        =   18
            Top             =   120
            Width           =   1935
         End
         Begin VB.CommandButton cmddelete 
            Caption         =   "&DELETE RECORD"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            Style           =   1  'Graphical
            TabIndex        =   17
            Top             =   600
            Width           =   1815
         End
         Begin VB.CommandButton cmdadd 
            Caption         =   "&ADD  RECORD"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            Style           =   1  'Graphical
            TabIndex        =   16
            Top             =   120
            Width           =   1815
         End
         Begin VB.CommandButton cmdCancel 
            Caption         =   "&CANCEL"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2040
            Style           =   1  'Graphical
            TabIndex        =   19
            Top             =   600
            Width           =   1935
         End
      End
      Begin VB.TextBox TXTUPC 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1920
         MaxLength       =   8
         TabIndex        =   5
         Top             =   600
         Width           =   1695
      End
      Begin VB.TextBox txtCALLNUMBER 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   120
         MaxLength       =   20
         TabIndex        =   6
         Top             =   1320
         Width           =   1935
      End
      Begin VB.TextBox TXTTITLE 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   120
         MaxLength       =   50
         TabIndex        =   8
         Top             =   1920
         Width           =   4935
      End
      Begin VB.TextBox TXTAUTHOR 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   120
         MaxLength       =   30
         TabIndex        =   9
         Top             =   2520
         Width           =   2775
      End
      Begin VB.TextBox TXTPUBLISHER 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   120
         MaxLength       =   30
         TabIndex        =   11
         Top             =   3120
         Width           =   2775
      End
      Begin VB.TextBox TXTSUBJECT 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   2160
         MaxLength       =   30
         TabIndex        =   7
         Top             =   1320
         Width           =   2895
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Description (Php)"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   3120
         TabIndex        =   37
         Top             =   2880
         Width           =   1515
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "BOOK DESCRIPTIONS"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   0
         TabIndex        =   36
         Top             =   0
         Width           =   5295
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Copyright Year "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   165
         TabIndex        =   34
         Top             =   3480
         Width           =   1365
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Section "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   3165
         TabIndex        =   33
         Top             =   3480
         Width           =   705
      End
      Begin VB.Label Label21 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Barcode Number :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Left            =   120
         TabIndex        =   32
         Top             =   600
         Width           =   1755
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Call Number"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   120
         TabIndex        =   31
         Top             =   1080
         Width           =   1095
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Title "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   165
         TabIndex        =   30
         Top             =   1680
         Width           =   435
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Author "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   165
         TabIndex        =   29
         Top             =   2280
         Width           =   645
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Publisher "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   165
         TabIndex        =   28
         Top             =   2880
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Holdings "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   1845
         TabIndex        =   27
         Top             =   3480
         Width           =   795
      End
      Begin VB.Label TXTCOLLEGE 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "ISBN "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   3150
         TabIndex        =   26
         Top             =   2280
         Width           =   525
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Subject"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   2160
         TabIndex        =   25
         Top             =   1080
         Width           =   675
      End
   End
   Begin VB.PictureBox Picture2 
      BackColor       =   &H000000FF&
      Height          =   7455
      Left            =   0
      Picture         =   "FRMCATALOGUING.frx":0350
      ScaleHeight     =   7395
      ScaleWidth      =   12030
      TabIndex        =   21
      Top             =   0
      Width           =   12090
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
         Height          =   375
         Left            =   4560
         MaskColor       =   &H0080FFFF&
         MouseIcon       =   "FRMCATALOGUING.frx":A12E
         MousePointer    =   4  'Icon
         OLEDropMode     =   1  'Manual
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   1920
         UseMaskColor    =   -1  'True
         Width           =   1695
      End
      Begin VB.CommandButton cmdsearch 
         Caption         =   "&SEARCH "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4560
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   1200
         Width           =   1695
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
         Height          =   375
         Left            =   4560
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   1560
         Width           =   1695
      End
      Begin VB.ComboBox Combofield 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   315
         ItemData        =   "FRMCATALOGUING.frx":A438
         Left            =   1320
         List            =   "FRMCATALOGUING.frx":A44B
         TabIndex        =   0
         Text            =   "Combofield"
         Top             =   1440
         Width           =   3135
      End
      Begin VB.TextBox txtsearch 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1320
         MaxLength       =   30
         TabIndex        =   1
         Top             =   1920
         Width           =   3135
      End
      Begin MSComctlLib.ListView BOOKLIST 
         Height          =   3975
         Left            =   120
         TabIndex        =   38
         Top             =   2640
         Width           =   6135
         _ExtentX        =   10821
         _ExtentY        =   7011
         SortKey         =   2
         View            =   3
         Arrange         =   1
         LabelEdit       =   1
         Sorted          =   -1  'True
         LabelWrap       =   0   'False
         HideSelection   =   0   'False
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         HoverSelection  =   -1  'True
         TextBackground  =   -1  'True
         _Version        =   393217
         ForeColor       =   0
         BackColor       =   16777215
         BorderStyle     =   1
         Appearance      =   0
         MousePointer    =   99
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MouseIcon       =   "FRMCATALOGUING.frx":A484
         NumItems        =   4
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Call Number"
            Object.Width           =   3069
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   2
            SubItemIndex    =   1
            Text            =   "Title"
            Object.Width           =   2893
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Author"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Subject"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H8000000D&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   4
         Height          =   4215
         Left            =   0
         Top             =   2520
         Width           =   6375
      End
      Begin VB.Label Label1 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   0  'Transparent
         Caption         =   "Field :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   480
         TabIndex        =   23
         Top             =   1440
         Width           =   615
      End
      Begin VB.Label Label2 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   0  'Transparent
         Caption         =   "Record :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   240
         TabIndex        =   22
         Top             =   1920
         Width           =   975
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   480
      Top             =   7920
      Width           =   3615
      _ExtentX        =   6376
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\LIBRARY SYSTEM\Library_System.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\LIBRARY SYSTEM\Library_System.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "SELECT * FROM BOOKS"
      Caption         =   "BROWSE BOOK'S TABLE"
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
End
Attribute VB_Name = "FRMCATALOGUING"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CTENT As Boolean
Dim X, Y
Sub enabled_button()
cmdsearch.Enabled = True
cmdclear.Enabled = True
cmdall.Enabled = True
End Sub
Sub disabled_button()
cmdsearch.Enabled = False
cmdclear.Enabled = False
cmdall.Enabled = False
End Sub

Private Sub cmdadd_Click()
If cmdadd.Caption = "&ADD  RECORD" Then
prompt$ = "Do you want to add a record? "
reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Add Record")
    If reply = vbOK Then
    Call UNLOCKED_TEXT
    txtCallNumber.Locked = False
    txtUPC.Locked = False
    Call CLEAR_TEXT
    disabled_button
    cmdedit.Enabled = False
    cmddelete.Enabled = False
    cmdadd.Caption = "&SAVE  RECORD"
    Combofield.Locked = True
    txtsearch.Locked = True
    cmdCancel.Enabled = True
    CMDEXIT.Enabled = True
    txtUPC.SetFocus
    End If
  Else
    Adodc1.RecordSource = "Select * from books Where UPC like '" & txtUPC.Text & "'"
    Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        If txtUPC.Text = "" Then
            MsgBox "All field must have a record", vbInformation
        ElseIf txtCallNumber.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        ElseIf txtTitle.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        ElseIf txtSubject.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        ElseIf txtAuthor.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        ElseIf TXTISBN.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        ElseIf txtDesc.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        ElseIf Combo1.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        ElseIf Combo3.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        ElseIf Combo4.Text = "" Then
            MsgBox "All field must have a record", vbInformation
            cmdadd.Caption = "&SAVE RECORD"
        Else
            Adodc1.RecordSource = "select * from books where CALLNUMBER like '" & txtCallNumber.Text & "'"
            Adodc1.Refresh
                If Adodc1.Recordset.EOF Then
                    Adodc1.Recordset.AddNew
                    Adodc1.Recordset.Fields("UPC") = UCase(txtUPC.Text)
                    Adodc1.Recordset.Fields("CALLNUMBER") = UCase(txtCallNumber.Text)
                    Adodc1.Recordset.Fields("title") = UCase(txtTitle.Text)
                    Adodc1.Recordset.Fields("subject") = UCase(txtSubject.Text)
                    Adodc1.Recordset.Fields("author") = UCase(txtAuthor.Text)
                    Adodc1.Recordset.Fields("publisher") = UCase(TXTPUBLISHER.Text)
                    Adodc1.Recordset.Fields("COPYRIGHT") = UCase(Combo1.Text)
                    Adodc1.Recordset.Fields("ISBN") = UCase(TXTISBN.Text)
                    Adodc1.Recordset.Fields("description") = UCase(txtDesc.Text)
                    Adodc1.Recordset.Fields("onloan") = 0
                    Adodc1.Recordset.Fields("onshelf") = UCase(Combo3.Text)
                    Adodc1.Recordset.Fields("holdings") = UCase(Combo3.Text)
                    Adodc1.Recordset.Fields("SECTION") = UCase(Combo4.Text)
                    Adodc1.Recordset.Update
                    Adodc1.Recordset.MoveNext
                    Adodc1.Refresh
                    Adodc1.Refresh
                    MsgBox "Record was successfully save!", vbInformation, "Pasay City Hall  library solution"
                    cmdadd.Caption = "&ADD  RECORD"
                    Adodc1.RecordSource = "select * from books"
                    Adodc1.Refresh
                    TRANSFER_TEXT
                    LISTVIEW_CONTENT
                    LOCKED_TEXT
                    Combofield.Locked = False
                    txtsearch.Locked = False
                    cmdCancel.Enabled = True
                    enabled_button
                    cmdedit.Enabled = True
                    cmddelete.Enabled = True
                Else
                    MsgBox "CALL NUMBER EXIST IN BOOK'S TABLE", vbExclamation
                    txtCallNumber.Text = ""
                    txtCallNumber.SetFocus
                End If
        End If
    Else
    Adodc1.RecordSource = "select * from books"
    Adodc1.Refresh
    MsgBox "Barcode number exist in BOOK'S TABLE", vbExclamation, "Pasay City Hall  library solution"
    txtUPC.Text = ""
    txtUPC.SetFocus
    End If
  End If
End Sub

Private Sub cmdall_Click()
    Adodc1.RecordSource = "Select * from books"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbExclamation
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
        cmdCancel.Enabled = True
    End If
End Sub

Private Sub cmdCancel_Click()
    prompt$ = "Are you sure you want to cancel the transaction?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Cancel")
    If reply = vbYes Then
        CTENT = False
        Call CLEAR_TEXT
        Call LOCKED_TEXT
        BOOKLIST.Enabled = True
        BOOKLIST.Refresh
        BOOKLIST.ListItems.Clear
        enabled_button
        cmdadd.Enabled = True
        cmddelete.Enabled = True
        cmdedit.Enabled = True
        Combofield.Locked = False
        txtsearch.Locked = False
        cmdadd.Caption = "&ADD  RECORD"
        cmdedit.Caption = "&EDIT RECORD"
        cmdCancel.Enabled = False
    Else
    End If
End Sub
Private Sub cmdClear_Click()
txtsearch.Text = ""
 Adodc1.RecordSource = "Select * from books Where UPC like '" & txtsearch.Text & "'"
Call Adodc1.Refresh
Call CLEAR_TEXT
Call LOCKED_TEXT
cmdCancel.Enabled = False
CTENT = False
End Sub

Private Sub cmdDelete_Click()
If txtCallNumber.Text = "" Then
    MsgBox "No record to delete!", vbExclamation, "Books Information"
Else
    prompt$ = "Are you sure you want to delete this record? "
    reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Delete Record")
    If reply = vbOK Then
            Adodc1.RecordSource = "Select * from books Where UPC like '" & txtUPC.Text & "'"
            Adodc1.Refresh
            If Adodc1.Recordset.Fields("onloan") = 0 Then
                Adodc1.Recordset.Delete
                Adodc1.Recordset.Update
                MsgBox "RECORD WAS SUCCESSFULLY DELETED!", vbInformation
                Adodc1.Refresh
            Else
                MsgBox "You cannot delete this book because it has a quantity onloan", vbInformation
            End If
        
        If Adodc1.Recordset.EOF Then
            CLEAR_TEXT
            cmdCancel.Enabled = False
            CTENT = False
        Else
            Adodc1.Recordset.MoveFirst
            TRANSFER_TEXT
            LISTVIEW_CONTENT
        End If
    End If
End If

End Sub

Private Sub cmdedit_Click()
If txtUPC.Text = "" Then
    MsgBox "No record to modify!", vbInformation
    Else

    If cmdedit.Caption = "&EDIT RECORD" Then
        MsgBox "You can now modify this record. Just click CANCEL if you want to cancel modifying.", vbInformation
        Call UNLOCKED_TEXT
        disabled_button
        BOOKLIST.Enabled = False
        cmdadd.Enabled = False
        cmdCancel.Enabled = True
        cmddelete.Enabled = False
        CMDEXIT.Enabled = True
        Combofield.Locked = True
        txtsearch.Locked = True
        cmdedit.Caption = "&UPDATE RECORD"
    Else
        cmdedit.Caption = "&EDIT RECORD"
        If txtUPC.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf txtCallNumber.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf txtTitle.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf txtSubject.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf txtAuthor.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf TXTISBN.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf txtDesc.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf Combo1.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf Combo3.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        ElseIf Combo4.Text = "" Then
            MsgBox "All field must have a record!", vbInformation
            cmdedit.Caption = "&UPDATE RECORD"
        Else
            Adodc1.RecordSource = "Select * from books Where UPC like '" & txtUPC.Text & "'"
            Call Adodc1.Refresh
            Adodc1.Recordset.Fields("UPC") = UCase(txtUPC.Text)
            Adodc1.Recordset.Fields("CALLNUMBER") = UCase(txtCallNumber.Text)
            Adodc1.Recordset.Fields("title") = UCase(txtTitle.Text)
            Adodc1.Recordset.Fields("subject") = UCase(txtSubject.Text)
            Adodc1.Recordset.Fields("author") = UCase(txtAuthor.Text)
            Adodc1.Recordset.Fields("publisher") = UCase(TXTPUBLISHER.Text)
            Adodc1.Recordset.Fields("COPYRIGHT") = UCase(Combo1.Text)
            Adodc1.Recordset.Fields("ISBN") = UCase(TXTISBN.Text)
            Adodc1.Recordset.Fields("description") = UCase(txtDesc.Text)
            Adodc1.Recordset.Fields("holdings") = UCase(Combo3.Text)
            Adodc1.Recordset.Fields("SECTION") = UCase(Combo4.Text)
            Adodc1.Recordset.Update
            Adodc1.Recordset.MoveNext
            Adodc1.Refresh
            Adodc1.Refresh
            MsgBox "Record was successfully save!", vbInformation, "Pasay City Hall  library solution"
            Adodc1.RecordSource = "select * from books"
            Adodc1.Refresh
            TRANSFER_TEXT
            LISTVIEW_CONTENT
            LOCKED_TEXT
            BOOKLIST.Enabled = True
            enabled_button
            Combofield.Locked = False
            txtsearch.Locked = False
            cmdadd.Enabled = True
        End If
    End If
End If
End Sub


Private Sub cmdEXIT_Click()
Unload Me
End Sub

Private Sub cmdsearch_Click()
If txtsearch.Text = "" Or Combofield.Text = "" Then
MsgBox "Please provide a specific field of record that you want to search!", vbCritical
txtsearch.Text = ""
Combofield.Text = ""
Else
Select Case Combofield.ListIndex
Case 0
    Adodc1.RecordSource = "Select * from books Where CALLNUMBER like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
    End If
Case 1
    Adodc1.RecordSource = "Select * from books Where UPC like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
    End If

Case 2
    Adodc1.RecordSource = "Select * from books Where title like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
    End If
    
Case 3
    Adodc1.RecordSource = "Select * from books Where subject like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        Call CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
    End If

Case 4
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
End If
End Sub

Private Sub Combo1_Change()
Dim X
X = 0
For i = Y To "3000"
If Combo1.Text = i Then
X = 1
End If
Next

If IsNumeric(Combo1.Text) Then
Else
    ' MsgBox "Please enter a numeric value for COPYRIGHT YEAR.", vbInformation
    Combo1.Text = ""
End If

End Sub

Private Sub Combo3_Change()
Dim X
X = 0
For i = Y To "99"
    If Combo3.Text = i Then
        X = 1
    End If
Next

If IsNumeric(Combo3.Text) Then
Else
    ' MsgBox "Please enter a numeric value."
    Combo3.Text = ""
End If
End Sub



Private Sub Form_Load()
txtsearch.Text = ""
 Adodc1.RecordSource = "Select * from books Where subject like '" & txtsearch.Text & "'"
Call Adodc1.Refresh
Call CLEAR_TEXT
Call LOCKED_TEXT
CTENT = False
cmdCancel.Enabled = False


For Y = 500 To "2000"
Combo1.AddItem (Y + "1100")
Next

For X = 0 To "99"
Combo3.AddItem (X + "1")
Next

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload Me
    LD = 0
End Sub
Sub CLEAR_TEXT()
txtUPC.Text = ""
txtCallNumber.Text = ""
txtTitle.Text = ""
txtSubject.Text = ""
txtAuthor.Text = ""
TXTPUBLISHER.Text = ""
TXTISBN.Text = ""
txtDesc.Text = ""
Combo1.Text = ""
Combo3.Text = ""
Combo4.Text = ""
BOOKLIST.ListItems.Clear
Combofield.Text = ""
txtsearch.Text = ""
End Sub

Sub LOCKED_TEXT()
txtUPC.Locked = True
txtCallNumber.Locked = True
txtTitle.Locked = True
txtSubject.Locked = True
txtAuthor.Locked = True
TXTPUBLISHER.Locked = True
TXTISBN.Locked = True
txtDesc.Enabled = False
Combo1.Locked = True
Combo3.Locked = True
Combo4.Locked = True
End Sub

Sub UNLOCKED_TEXT()
txtTitle.Locked = False
txtSubject.Locked = False
txtAuthor.Locked = False
TXTPUBLISHER.Locked = False
TXTISBN.Locked = False
txtDesc.Enabled = True
Combo1.Locked = False
Combo4.Locked = False
Combo3.Locked = False
End Sub

Sub TRANSFER_TEXT()
If Adodc1.Recordset.EOF <> True Then
    txtUPC.Text = Adodc1.Recordset.Fields("UPC")
    txtCallNumber.Text = Adodc1.Recordset.Fields("CALLNUMBER")
    txtTitle.Text = Adodc1.Recordset.Fields("title")
    txtSubject.Text = Adodc1.Recordset.Fields("subject")
    txtAuthor.Text = Adodc1.Recordset.Fields("author")
    TXTPUBLISHER.Text = Adodc1.Recordset.Fields("publisher")
    TXTISBN.Text = Adodc1.Recordset.Fields("ISBN")
    txtDesc.Text = Adodc1.Recordset.Fields("description")
    Combo1.Text = Adodc1.Recordset.Fields("COPYRIGHT")
    Combo3.Text = Adodc1.Recordset.Fields("holdings")
    Combo4.Text = Adodc1.Recordset.Fields("SECTION")
Else
    MsgBox "NO RECORD FOUND!", vbInformation
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
            Adodc1.Recordset.MoveNext 'goto next record
            cmdCancel.Enabled = True
            cmdedit.Enabled = True
            cmddelete.Enabled = True
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
 MsgBox "NO RECORD TO SELECT!", vbCritical
End If

End Sub




Private Sub txtsearch_Click()
txtsearch.Text = ""
txtsearch.SetFocus
End Sub

Private Sub txtUPC_Change()
If IsNumeric(txtUPC.Text) Then
Else
    ' MsgBox "Please enter a numeric value for Bar code number.", vbInformation
    txtUPC.Text = ""
End If
End Sub
