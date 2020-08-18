VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form FRMUSERS 
   BackColor       =   &H00000000&
   Caption         =   "STUDENT"
   ClientHeight    =   8490
   ClientLeft      =   285
   ClientTop       =   450
   ClientWidth     =   11880
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture3 
      BackColor       =   &H000000FF&
      Height          =   8535
      Left            =   0
      Picture         =   "FRMUSERS.frx":0000
      ScaleHeight     =   8475
      ScaleWidth      =   12045
      TabIndex        =   5
      Top             =   0
      Width           =   12105
      Begin VB.PictureBox Picture5 
         BackColor       =   &H8000000D&
         Height          =   5295
         Left            =   6480
         ScaleHeight     =   5235
         ScaleWidth      =   4995
         TabIndex        =   15
         Top             =   1320
         Width           =   5055
         Begin VB.TextBox txtSN 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   285
            Left            =   1800
            MaxLength       =   10
            TabIndex        =   8
            Top             =   720
            Width           =   2535
         End
         Begin VB.TextBox txtName 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   285
            Left            =   240
            MaxLength       =   30
            TabIndex        =   9
            Top             =   1680
            Width           =   4215
         End
         Begin VB.TextBox txtAddress 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   285
            Left            =   240
            MaxLength       =   50
            MultiLine       =   -1  'True
            TabIndex        =   11
            Top             =   2280
            Width           =   4215
         End
         Begin VB.TextBox txtSchool 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   285
            Left            =   240
            MaxLength       =   30
            TabIndex        =   12
            Top             =   2880
            Width           =   2535
         End
         Begin VB.PictureBox Picture2 
            BackColor       =   &H00C0C0C0&
            Height          =   1095
            Left            =   120
            ScaleHeight     =   1035
            ScaleWidth      =   4755
            TabIndex        =   16
            Top             =   4080
            Width           =   4815
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
               Left            =   3960
               MaskColor       =   &H0080FFFF&
               MouseIcon       =   "FRMUSERS.frx":958E
               MousePointer    =   4  'Icon
               OLEDropMode     =   1  'Manual
               Style           =   1  'Graphical
               TabIndex        =   21
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
               TabIndex        =   20
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
               TabIndex        =   19
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
               TabIndex        =   18
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
               TabIndex        =   17
               Top             =   600
               Width           =   1815
            End
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "FRMUSERS.frx":9898
            Left            =   3000
            List            =   "FRMUSERS.frx":98BD
            TabIndex        =   13
            Text            =   "Select current year"
            Top             =   2880
            Width           =   1455
         End
         Begin VB.TextBox txtCourse 
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
            ForeColor       =   &H00000000&
            Height          =   285
            Left            =   240
            MaxLength       =   7
            TabIndex        =   14
            Top             =   3480
            Width           =   2535
         End
         Begin VB.Label Label21 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackColor       =   &H00808080&
            BackStyle       =   0  'Transparent
            Caption         =   "ID Number :"
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
            Left            =   360
            TabIndex        =   28
            Top             =   720
            Width           =   1185
         End
         Begin VB.Label Label20 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackColor       =   &H00808080&
            BackStyle       =   0  'Transparent
            Caption         =   "Student Name : [Surname],[First Name] [MI]"
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
            Left            =   240
            TabIndex        =   27
            Top             =   1440
            Width           =   3915
         End
         Begin VB.Label Label19 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackColor       =   &H00808080&
            BackStyle       =   0  'Transparent
            Caption         =   "Home Address "
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
            Left            =   240
            TabIndex        =   26
            Top             =   2040
            Width           =   1335
         End
         Begin VB.Label Label18 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackColor       =   &H00808080&
            BackStyle       =   0  'Transparent
            Caption         =   "Course (for College Level)"
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
            Left            =   240
            TabIndex        =   25
            Top             =   3240
            Width           =   2295
         End
         Begin VB.Label TXTCOLLEGE 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackColor       =   &H00808080&
            BackStyle       =   0  'Transparent
            Caption         =   "Grade/Year Level"
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
            Left            =   3000
            TabIndex        =   24
            Top             =   2640
            Width           =   1515
         End
         Begin VB.Label Label6 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackColor       =   &H00808080&
            BackStyle       =   0  'Transparent
            Caption         =   "School"
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
            Left            =   240
            TabIndex        =   23
            Top             =   2640
            Width           =   585
         End
         Begin VB.Label Label11 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "STUDENT INFORMATION"
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
            TabIndex        =   22
            Top             =   0
            Width           =   5295
         End
      End
      Begin VB.TextBox txtsearch 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   1
         Top             =   2040
         Width           =   3135
      End
      Begin VB.ComboBox Combofield 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   315
         ItemData        =   "FRMUSERS.frx":992E
         Left            =   1080
         List            =   "FRMUSERS.frx":993E
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
         Left            =   4440
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   1680
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
         Left            =   4440
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   1320
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
         Left            =   4440
         MaskColor       =   &H0080FFFF&
         MouseIcon       =   "FRMUSERS.frx":997A
         MousePointer    =   4  'Icon
         OLEDropMode     =   1  'Manual
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   2040
         UseMaskColor    =   -1  'True
         Width           =   1695
      End
      Begin MSComctlLib.ListView STUDENTLIST 
         Height          =   3615
         Left            =   240
         TabIndex        =   10
         Top             =   2760
         Width           =   6015
         _ExtentX        =   10610
         _ExtentY        =   6376
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
         MouseIcon       =   "FRMUSERS.frx":9C84
         NumItems        =   5
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Student No."
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Name"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "School"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Year"
            Object.Width           =   1411
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Course"
            Object.Width           =   2540
         EndProperty
      End
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   375
         Left            =   600
         Top             =   7440
         Visible         =   0   'False
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
         Connect         =   $"FRMUSERS.frx":9F9E
         OLEDBString     =   $"FRMUSERS.frx":A030
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   "SELECT * FROM STUDENT"
         Caption         =   "Browse_Student_Table"
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
      Begin VB.Shape Shape1 
         BackColor       =   &H8000000D&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H80000005&
         BorderWidth     =   4
         Height          =   3855
         Left            =   120
         Top             =   2640
         Width           =   6255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   0  'Transparent
         Caption         =   "Record :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   2040
         Width           =   975
      End
      Begin VB.Label Label4 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   0  'Transparent
         Caption         =   "Field :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   1440
         Width           =   735
      End
   End
   Begin VB.Line Line1 
      X1              =   6480
      X2              =   6480
      Y1              =   600
      Y2              =   6360
   End
End
Attribute VB_Name = "FRMUSERS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CTENT As Boolean
Private Sub cmdadd_Click()
If cmdadd.Caption = "&ADD  RECORD" Then
prompt$ = "Do you want to add record "
reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Add Record")
    If reply = vbOK Then
        Call UNLOCKED_TEXT
        txtSN.Locked = False
        Combofield.Locked = True
        txtsearch.Locked = True
        STUDENTLIST.Enabled = False
        Call CLEAR_TEXT
        cmdedit.Enabled = False
        cmddelete.Enabled = False
        cmdadd.Caption = "&SAVE  RECORD"
        cmdCancel.Enabled = True
        txtSN.SetFocus
    End If
Else
    Adodc1.RecordSource = "Select * from visitor_student Where studno like '" & txtSN.Text & "'"
    Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        If txtSN.Text = "" Then
            MsgBox "All field (except course)must have a record", vbInformation, "Library User's information"
            cmdadd.Caption = "&SAVE  RECORD"
        ElseIf txtName.Text = "" Then
            MsgBox "All field (except course) must have a record", vbInformation, "Library User's information"
            cmdadd.Caption = "&SAVE  RECORD"
        ElseIf txtAddress.Text = "" Then
            MsgBox "All field (except course) must have a record", vbInformation, "Library User's information"
            cmdadd.Caption = "&SAVE  RECORD"
        ElseIf Combo1.Text = "" Then
            MsgBox "All field (except course) must have a record", vbInformation, "Library User's information"
            cmdadd.Caption = "&SAVE  RECORD"
        ElseIf txtSchool.Text = "" Then
            MsgBox "All field (except course) must have a record", vbInformation, "Library User's information"
            cmdadd.Caption = "&SAVE  RECORD"
        Else
            Adodc1.RecordSource = "select * from visitor_student where studno like '" & txtSN.Text & "'"
            Adodc1.Refresh
                If Adodc1.Recordset.EOF Then
                    Adodc1.Recordset.AddNew
                    Adodc1.Recordset.Fields("studno") = txtSN.Text
                    Adodc1.Recordset.Fields("name") = txtName.Text
                    Adodc1.Recordset.Fields("address") = txtAddress.Text
                    Adodc1.Recordset.Fields("school") = txtSchool.Text
                    Adodc1.Recordset.Fields("course") = txtCourse.Text
                    Adodc1.Recordset.Fields("year") = Combo1.Text
                    Adodc1.Recordset.Update
                    Adodc1.Recordset.MoveNext
                    Adodc1.Refresh
                    Adodc1.Refresh
                    MsgBox "Record was successfully save.", vbInformation, "Pasay City Hall library solution"
                    cmdadd.Caption = "&ADD  RECORD"
                    Adodc1.RecordSource = "select * from visitor_student"
                    Adodc1.Refresh
                    TRANSFER_TEXT
                    LISTVIEW_CONTENT
                    LOCKED_TEXT
                    STUDENTLIST.Enabled = True
                    Combofield.Locked = False
                    txtsearch.Locked = False
                    cmdedit.Enabled = True
                    cmddelete.Enabled = True
                    cmdCancel.Enabled = True
                Else
                    MsgBox "STUDENT NUMBER EXIST IN STUDENT'S TABLE", vbExclamation
                End If
            
        End If
    Else
    Adodc1.RecordSource = "select * from visitor_student"
    Adodc1.Refresh
    MsgBox "STUDENT NUMBER EXIST IN STUDENT'S TABLE", vbExclamation, "BRENT I.S. library solution"
    txtSN.Text = ""
    txtSN.SetFocus
    End If
  End If
End Sub
Private Sub cmdall_Click()
    Adodc1.RecordSource = "Select * from visitor_student"
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
        STUDENTLIST.Enabled = True
        STUDENTLIST.Refresh
        STUDENTLIST.ListItems.Clear
        Combofield.Locked = False
        txtsearch.Locked = False
        enabled_button
        cmdadd.Enabled = True
        cmdadd.Caption = "&ADD  RECORD"
        cmdedit.Caption = "&EDIT RECORD"
        cmdedit.Enabled = True
        cmdCancel.Enabled = False
        cmddelete.Enabled = True
    Else
    End If
End Sub

Private Sub cmdClear_Click()
    txtsearch.Text = ""
    Adodc1.RecordSource = "Select * from visitor_student Where name like '" & txtsearch.Text & "'"
    Call Adodc1.Refresh
    Call CLEAR_TEXT
    Call LOCKED_TEXT
    cmdCancel.Enabled = False
    CTENT = False
End Sub
Private Sub cmdDelete_Click()
    If txtSN.Text = "" Then
        MsgBox "No record to delete!", vbInformation, "Books Information"
    Else
        prompt$ = "Are you sure you want to delete this record? "
        reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Delete Record")
        If reply = vbOK Then
            If txtSN.Text = "" Then
                MsgBox "No record to modify!", vbInformation
            Else
                Adodc1.RecordSource = "Select * from visitor_student Where studno like '" & txtSN.Text & "'"
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
    If txtSN.Text = "" Then
        MsgBox "No record to modify!", vbInformation
    Else
        If cmdedit.Caption = "&EDIT RECORD" Then
            MsgBox "Are you sure you want to edit this record?", vbYesNo + vbQuestion, "Edit Record"
            If vbYes Then
                Call UNLOCKED_TEXT
                STUDENTLIST.Enabled = False
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
            If txtSN.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf txtName.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf txtAddress.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf txtSchool.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            ElseIf Combo1.Text = "" Then
                MsgBox "All field must have a record", vbInformation, "Library User's information"
                cmdedit.Caption = "&UPDATE RECORD"
            Else
                Adodc1.RecordSource = "Select * from visitor_student Where studno like '" & txtSN.Text & "'"
                Call Adodc1.Refresh
                Adodc1.Recordset.Fields("studno") = txtSN.Text
                Adodc1.Recordset.Fields("name") = txtName.Text
                Adodc1.Recordset.Fields("address") = txtAddress.Text
                Adodc1.Recordset.Fields("school") = txtSchool.Text
                Adodc1.Recordset.Fields("year") = Combo1.Text
                Adodc1.Recordset.Fields("course") = txtCourse.Text
                Adodc1.Recordset.Update
                Adodc1.Recordset.MoveNext
                Adodc1.Refresh
                Adodc1.Refresh
                MsgBox "Record was successfully save", vbInformation, "Pasay City Hall library solution"
                Adodc1.RecordSource = "select * from visitor_student"
                Adodc1.Refresh
                TRANSFER_TEXT
                LISTVIEW_CONTENT
                LOCKED_TEXT
            STUDENTLIST.Enabled = True
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
    Adodc1.RecordSource = "Select * from visitor_student Where studno like '" & txtsearch.Text & "%'"
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
    Adodc1.RecordSource = "Select * from visitor_student Where name like '" & txtsearch.Text & "%'"
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
    Adodc1.RecordSource = "Select * from visitor_student Where school like '" & txtsearch.Text & "%'"
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
    Adodc1.RecordSource = "Select * from visitor_student Where year like '" & txtsearch.Text & "%'"
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
 Adodc1.RecordSource = "Select * from visitor_student Where studno like '" & txtsearch.Text & "'"
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
txtSN.Text = ""
txtName.Text = ""
txtAddress.Text = ""
txtSchool.Text = ""
Combo1.Text = ""
txtCourse.Text = ""
STUDENTLIST.ListItems.Clear
Combofield.Text = ""
txtsearch.Text = ""
End Sub

Sub LOCKED_TEXT()
txtSN.Locked = True
txtName.Locked = True
txtAddress.Locked = True
txtSchool.Locked = True
Combo1.Locked = True
txtCourse.Locked = True
End Sub

Sub UNLOCKED_TEXT()
txtName.Locked = False
txtAddress.Locked = False
txtSchool.Locked = False
Combo1.Locked = False
txtCourse.Locked = False
End Sub

Sub TRANSFER_TEXT()
If Adodc1.Recordset.EOF <> True Then
    txtSN.Text = Adodc1.Recordset.Fields("studno")
    txtName.Text = Adodc1.Recordset.Fields("name")
    txtAddress.Text = Adodc1.Recordset.Fields("address")
    txtSchool.Text = Adodc1.Recordset.Fields("school")
    Combo1.Text = Adodc1.Recordset.Fields("year")
    txtCourse.Text = Adodc1.Recordset.Fields("course")
Else
    MsgBox "NO RECORD FOUND"
End If
End Sub

Sub LISTVIEW_CONTENT()
  STUDENTLIST.ListItems.Clear
    If Adodc1.Recordset.EOF = False Then
        Do While Adodc1.Recordset.EOF <> True
            Set lstitem = STUDENTLIST.ListItems.Add(, , Adodc1.Recordset.Fields("studno"))
                lstitem.SubItems(1) = Adodc1.Recordset.Fields("name")
                lstitem.SubItems(2) = Adodc1.Recordset.Fields("school")
                lstitem.SubItems(3) = Adodc1.Recordset.Fields("year")
                lstitem.SubItems(4) = Adodc1.Recordset.Fields("course")
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
Private Sub STUDENTLIST_Click()
If CTENT = True Then
    SN = STUDENTLIST.SelectedItem
    Adodc1.RecordSource = "Select * from visitor_student Where studno like '" & SN & "'"
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

Private Sub txtSN_Change()
If IsNumeric(txtSN.Text) Then
Else
    ' MsgBox "Please enter a numeric value for student number.", vbInformation
    txtSN.Text = ""
End If
End Sub

