VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form FRMLIBRARIAN 
   BackColor       =   &H00C0FFFF&
   Caption         =   "LIBRARIAN"
   ClientHeight    =   7410
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11325
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form4"
   MDIChild        =   -1  'True
   ScaleHeight     =   7410
   ScaleWidth      =   11325
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture5 
      BackColor       =   &H8000000D&
      Height          =   5295
      Left            =   6600
      ScaleHeight     =   5235
      ScaleWidth      =   5115
      TabIndex        =   20
      Top             =   1200
      Width           =   5175
      Begin VB.TextBox txtPhone 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   13321
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   120
         MaxLength       =   11
         TabIndex        =   10
         Top             =   3120
         Width           =   2055
      End
      Begin VB.TextBox TXTMN 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataSource      =   "Adodc1"
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   3600
         MaxLength       =   30
         TabIndex        =   8
         Top             =   1800
         Width           =   1335
      End
      Begin VB.PictureBox Picture2 
         BackColor       =   &H00C0C0C0&
         Height          =   1095
         Left            =   120
         ScaleHeight     =   1035
         ScaleWidth      =   4875
         TabIndex        =   26
         Top             =   4080
         Width           =   4935
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
            TabIndex        =   15
            Top             =   600
            Width           =   1935
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
            TabIndex        =   12
            Top             =   120
            Width           =   1815
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
            TabIndex        =   13
            Top             =   600
            Width           =   1815
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
            TabIndex        =   14
            Top             =   120
            Width           =   1935
         End
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
            MouseIcon       =   "FRMLIBRARIAN.frx":0000
            MousePointer    =   4  'Icon
            OLEDropMode     =   1  'Manual
            Style           =   1  'Graphical
            TabIndex        =   16
            Top             =   120
            UseMaskColor    =   -1  'True
            Width           =   735
         End
      End
      Begin VB.TextBox txtfirst 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataSource      =   "Adodc1"
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1920
         MaxLength       =   30
         TabIndex        =   7
         Top             =   1800
         Width           =   1575
      End
      Begin VB.TextBox txtsurname 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataSource      =   "Adodc1"
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   120
         MaxLength       =   30
         TabIndex        =   6
         Top             =   1800
         Width           =   1695
      End
      Begin VB.TextBox txtUN 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataSource      =   "Adodc1"
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   2160
         MaxLength       =   20
         TabIndex        =   5
         Top             =   840
         Width           =   2415
      End
      Begin VB.TextBox txtposition 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataSource      =   "Adodc1"
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   2280
         MaxLength       =   20
         TabIndex        =   11
         Top             =   3120
         Width           =   2655
      End
      Begin VB.TextBox txtaddress 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataSource      =   "Adodc1"
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   120
         MultiLine       =   -1  'True
         TabIndex        =   9
         Top             =   2520
         Width           =   4815
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Contact No."
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
         TabIndex        =   29
         Top             =   2880
         Width           =   1035
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Middle Name "
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
         Left            =   3600
         TabIndex        =   28
         Top             =   1560
         Width           =   1185
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "LIBRARIAN INFORMATION"
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
         TabIndex        =   27
         Top             =   0
         Width           =   5295
      End
      Begin VB.Label Label21 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Employee Number : "
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
         TabIndex        =   25
         Top             =   840
         Width           =   1995
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "First Name "
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
         Left            =   1920
         TabIndex        =   24
         Top             =   1560
         Width           =   1005
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Surname "
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
         TabIndex        =   23
         Top             =   1560
         Width           =   855
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Address "
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
         TabIndex        =   22
         Top             =   2280
         Width           =   765
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Position "
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
         Left            =   2280
         TabIndex        =   21
         Top             =   2880
         Width           =   735
      End
   End
   Begin VB.PictureBox Picture3 
      BackColor       =   &H000000FF&
      Height          =   7455
      Left            =   0
      Picture         =   "FRMLIBRARIAN.frx":030A
      ScaleHeight     =   7395
      ScaleWidth      =   12270
      TabIndex        =   17
      Top             =   0
      Width           =   12330
      Begin VB.TextBox txtsearch 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1200
         MaxLength       =   30
         TabIndex        =   1
         Top             =   1920
         Width           =   3135
      End
      Begin VB.ComboBox Combofield 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   315
         ItemData        =   "FRMLIBRARIAN.frx":978A
         Left            =   1200
         List            =   "FRMLIBRARIAN.frx":9797
         TabIndex        =   0
         Top             =   1440
         Width           =   3135
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
         Left            =   4680
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   1560
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
         Left            =   4680
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   1200
         Width           =   1695
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
         Height          =   375
         Left            =   4680
         MaskColor       =   &H0080FFFF&
         MouseIcon       =   "FRMLIBRARIAN.frx":97C1
         MousePointer    =   4  'Icon
         OLEDropMode     =   1  'Manual
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   1920
         UseMaskColor    =   -1  'True
         Width           =   1695
      End
      Begin MSComctlLib.ListView HISTORYLIST 
         Height          =   3855
         Left            =   360
         TabIndex        =   30
         Top             =   2640
         Width           =   6015
         _ExtentX        =   10610
         _ExtentY        =   6800
         View            =   3
         Arrange         =   1
         LabelEdit       =   1
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
         MouseIcon       =   "FRMLIBRARIAN.frx":9ACB
         NumItems        =   4
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "User Number"
            Object.Width           =   2542
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "First Name"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Surname"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Position"
            Object.Width           =   4304
         EndProperty
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H8000000D&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   4
         Height          =   4095
         Left            =   240
         Top             =   2520
         Width           =   6255
      End
      Begin VB.Label Label3 
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
         Left            =   360
         TabIndex        =   19
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label4 
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
         TabIndex        =   18
         Top             =   1440
         Width           =   615
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   120
      Top             =   7800
      Width           =   5895
      _ExtentX        =   10398
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\LIBRARY SYSTEM\Library_System.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\LIBRARY SYSTEM\Library_System.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from LIBRARIAN"
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
End
Attribute VB_Name = "FRMLIBRARIAN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CTENT As Boolean
Private Sub cmdadd_Click()
  
    If cmdadd.Caption = "&ADD  RECORD" Then
        prompt$ = "Do you want to add new record?"
        reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Add Record")
        If reply = vbOK Then
            Call UNLOCKED_TEXT
            txtUN.Locked = False
            txtUN.SetFocus
            Combofield.Locked = True
            txtsearch.Locked = True
            HISTORYLIST.Enabled = False
            Call CLEAR_TEXT
            disabled_button
            cmdCancel.Enabled = True
            cmdedit.Enabled = False
            cmddelete.Enabled = False
            cmdadd.Caption = "&SAVE  RECORD"
        Else
        End If
    Else
        cmdadd.Caption = "&ADD  RECORD"
        Adodc1.RecordSource = "Select * from LIBRARIAN Where userno like '" & txtUN.Text & "'"
        Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            If txtUN.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Librarian information"
                cmdadd.Caption = "&SAVE  RECORD"
            ElseIf txtfirst.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Librarian information"
                cmdadd.Caption = "&SAVE  RECORD"
            ElseIf txtsurname.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Librarian information"
                cmdadd.Caption = "&SAVE  RECORD"
            ElseIf txtAddress.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Librarian information"
                cmdadd.Caption = "&SAVE  RECORD"
            ElseIf txtposition.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Librarian information"
                cmdadd.Caption = "&SAVE  RECORD"
            ElseIf TXTMN.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Librarian information"
                cmdadd.Caption = "&SAVE  RECORD"
            Else
                Adodc1.RecordSource = "select * from LIBRARIAN where userno like '" & txtUN.Text & "'"
                Adodc1.Refresh
                If Adodc1.Recordset.EOF Then
                    Adodc1.Recordset.AddNew
                    Adodc1.Recordset.Fields("userno") = txtUN.Text
                    Adodc1.Recordset.Fields("firstname") = txtfirst.Text
                    Adodc1.Recordset.Fields("surname") = txtsurname.Text
                    Adodc1.Recordset.Fields("address") = txtAddress.Text
                    Adodc1.Recordset.Fields("position") = txtposition.Text
                    Adodc1.Recordset.Fields("mn") = TXTMN.Text
                    Adodc1.Recordset.Fields("contact_no") = txtPhone.Text
                    Adodc1.Recordset.Update
                    Adodc1.Recordset.MoveNext
                    Adodc1.Refresh
                    Adodc1.Refresh
                    MsgBox "Record was successfully save!", vbInformation, "Pasay City Hall library system"
                Else
                    MsgBox "USER NUMBER EXIST IN LIBRARIAN'S TABLE", vbExclamation
                End If
                Adodc1.RecordSource = "select * from LIBRARIAN"
                Adodc1.Refresh
                TRANSFER_TEXT
                LISTVIEW_CONTENT
                LOCKED_TEXT
                HISTORYLIST.Enabled = True
                Combofield.Locked = False
                txtsearch.Locked = False
                enabled_button
                cmdedit.Enabled = True
                cmddelete.Enabled = True
                cmdCancel = False
            End If
        Else
        Adodc1.RecordSource = "select * from LIBRARIAN"
        Adodc1.Refresh
        MsgBox "EMPLOYEE NUMBER EXIST IN LIBRARIAN TABLE", vbExclamation, "Pasay City Hall library solution"
            TRANSFER_TEXT
            LISTVIEW_CONTENT
            LOCKED_TEXT
            HISTORYLIST.Enabled = True
            Combofield.Locked = False
            txtsearch.Locked = False
            enabled_button
            cmdedit.Enabled = True
            cmddelete.Enabled = True
            cmdCancel = False
        End If
    End If

End Sub
Private Sub cmdall_Click()
    Adodc1.RecordSource = "Select * from LIBRARIAN"
    cmdCancel.Enabled = True
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
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
        HISTORYLIST.Enabled = True
        HISTORYLIST.Refresh
        HISTORYLIST.ListItems.Clear
        Combofield.Locked = False
        txtsearch.Locked = False
        enabled_button
        cmdadd.Enabled = True
        cmdadd.Caption = "&ADD  RECORD"
        cmdedit.Caption = "&EDIT RECORD"
        cmdCancel.Enabled = False
        cmddelete.Enabled = True
    Else
    End If
End Sub


Private Sub cmdClear_Click()
    txtsearch.Text = ""
    Adodc1.RecordSource = "Select * from LIBRARIAN Where surname like '" & txtsearch.Text & "'"
    Call Adodc1.Refresh
    Call CLEAR_TEXT
    Call LOCKED_TEXT
    cmdCancel.Enabled = False
    CTENT = False
End Sub
Private Sub cmdDelete_Click()
    If txtUN.Text = "" Then
        MsgBox "No record to delete!", vbInformation, "Books Information"
    Else
        prompt$ = "Are you sure you want to delete this record? "
        reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Delete Record")
        If reply = vbOK Then
            If txtUN.Text = "" Then
                MsgBox "No record to modify!", vbInformation
            Else
                Adodc1.RecordSource = "Select * from LIBRARIAN Where userno like '" & txtUN.Text & "'"
                Adodc1.Refresh
                Adodc1.Recordset.Delete
                Adodc1.Recordset.Update
                MsgBox "RECORD WAS SUCCESSFULLY DELETED!", vbInformation
                Adodc1.Refresh
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
    If txtUN.Text = "" Then
        MsgBox "No record to modify!", vbInformation
    Else
        If cmdedit.Caption = "&EDIT RECORD" Then
            MsgBox "Are you sure you want to edit this record?", vbYesNo + vbQuestion, "Edit Record"
            If vbYes Then
                Call UNLOCKED_TEXT
                HISTORYLIST.Enabled = False
                Combofield.Locked = True
                txtsearch.Locked = True
                disabled_button
                cmdadd.Enabled = False
                cmddelete.Enabled = False
                cmdedit.Caption = "&UPDATE RECORD"
                cmdCancel.Enabled = True
            End If
        Else
            cmdedit.Caption = "&EDIT RECORD"
            If txtUN.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf txtfirst.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf txtsurname.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf txtAddress.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf txtposition.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf TXTMN.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            Else
                Adodc1.RecordSource = "Select * from LIBRARIAN Where userno like '" & txtUN.Text & "'"
                Call Adodc1.Refresh
                Adodc1.Recordset.Fields("userno") = txtUN.Text
                Adodc1.Recordset.Fields("firstname") = txtfirst.Text
                Adodc1.Recordset.Fields("surname") = txtsurname.Text
                Adodc1.Recordset.Fields("address") = txtAddress.Text
                Adodc1.Recordset.Fields("position") = txtposition.Text
                Adodc1.Recordset.Fields("mn") = TXTMN.Text
                Adodc1.Recordset.Fields("contact_no") = txtPhone.Text
                Adodc1.Recordset.Update
                Adodc1.Recordset.MoveNext
                Adodc1.Refresh
                Adodc1.Refresh
                MsgBox "Record was successfully save", vbInformation, "Pasay City Hall library solution"
                Adodc1.RecordSource = "select * from LIBRARIAN"
                Adodc1.Refresh
                TRANSFER_TEXT
                LISTVIEW_CONTENT
                LOCKED_TEXT
            HISTORYLIST.Enabled = True
            Combofield.Locked = False
            txtsearch.Locked = False
            enabled_button
            cmdadd.Enabled = True
            cmddelete.Enabled = True
            cmdCancel.Enabled = True
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
    Adodc1.RecordSource = "Select * from LIBRARIAN Where userno like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
        Combofield.Text = ""
        txtsearch.Text = ""
    End If
Case 1
    Adodc1.RecordSource = "Select * from LIBRARIAN Where firstname like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
        Combofield.Text = ""
        txtsearch.Text = ""
    End If
Case 2
    Adodc1.RecordSource = "Select * from LIBRARIAN Where surname like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        Call CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
        Combofield.Text = ""
        txtsearch.Text = ""
    End If
Case 3
    Adodc1.RecordSource = "Select * from LIBRARIAN Where position like '" & txtsearch.Text & "%'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        Call CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
        Combofield.Text = ""
        txtsearch.Text = ""
    End If
End Select

End If
End Sub



Private Sub Form_Load()
txtsearch.Text = ""
 Adodc1.RecordSource = "Select * from LIBRARIAN Where userno like '" & txtsearch.Text & "'"
Call Adodc1.Refresh
Call CLEAR_TEXT
Call LOCKED_TEXT
CTENT = False
cmdCancel.Enabled = False
End Sub



Private Sub Form_Unload(Cancel As Integer)
    Unload Me
    LD = 0
End Sub
Sub CLEAR_TEXT()
txtUN.Text = ""
txtfirst.Text = ""
txtsurname.Text = ""
txtAddress.Text = ""
txtposition.Text = ""
TXTMN.Text = ""
txtPhone.Text = ""
HISTORYLIST.ListItems.Clear
Combofield.Text = ""
txtsearch.Text = ""
End Sub
Sub LOCKED_TEXT()
txtUN.Locked = True
txtfirst.Locked = True
txtsurname.Locked = True
txtAddress.Locked = True
txtposition.Locked = True
TXTMN.Locked = True
txtPhone.Locked = True

End Sub
Sub UNLOCKED_TEXT()
txtfirst.Locked = False
txtsurname.Locked = False
txtAddress.Locked = False
txtposition.Locked = False
txtPhone.Locked = False
TXTMN.Locked = False
End Sub
Sub TRANSFER_TEXT()
If Adodc1.Recordset.EOF <> True Then
    txtUN.Text = Adodc1.Recordset.Fields("userno")
    txtfirst.Text = Adodc1.Recordset.Fields("firstname")
    txtsurname.Text = Adodc1.Recordset.Fields("surname")
    TXTMN.Text = Adodc1.Recordset.Fields("mn")
    txtposition.Text = Adodc1.Recordset.Fields("position")
    txtAddress.Text = Adodc1.Recordset.Fields("address")
    txtPhone.Text = Adodc1.Recordset.Fields("contact_no")
Else
    MsgBox "NO RECORD FOUND"
End If
End Sub

Sub LISTVIEW_CONTENT()
  HISTORYLIST.ListItems.Clear
    If Adodc1.Recordset.EOF = False Then
        Do While Adodc1.Recordset.EOF <> True
            Set lstitem = HISTORYLIST.ListItems.Add(, , Adodc1.Recordset.Fields("userno"))
                lstitem.SubItems(1) = Adodc1.Recordset.Fields("firstname")
                lstitem.SubItems(2) = Adodc1.Recordset.Fields("surname")
                lstitem.SubItems(3) = Adodc1.Recordset.Fields("position")
            Adodc1.Recordset.MoveNext 'goto next record
            cmdCancel.Enabled = True
       Loop
       CTENT = True
    Else
    MsgBox "LookUp Table has no Data to display", vbInformation
    End If
    
End Sub
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
Private Sub HISTORYLIST_Click()
If CTENT = True Then
    UN = HISTORYLIST.SelectedItem
    Adodc1.RecordSource = "Select * from LIBRARIAN Where userno like '" & UN & "'"
    Adodc1.Refresh
    TRANSFER_TEXT
Else
    MsgBox "NO RECORD TO SELECT!", vbCritical
End If
End Sub

Private Sub txtPhone_Change()
    If IsNumeric(txtPhone.Text) Then
    Else
       ' MsgBox "Please enter a numeric student number."
        txtPhone.Text = ""
    End If
End Sub

Private Sub txtsearch_Click()
txtsearch.Text = ""
txtsearch.SetFocus
End Sub

Private Sub txtUN_Change()
    If IsNumeric(txtUN.Text) Then
    Else
        ' MsgBox "Please enter a numeric student number."
        txtUN.Text = ""
    End If
End Sub
