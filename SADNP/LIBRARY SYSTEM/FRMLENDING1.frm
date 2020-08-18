VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form FRMLENDING1 
   Caption         =   "BOOK LENDING - STUDENT"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11880
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Height          =   8535
      Left            =   0
      Picture         =   "FRMLENDING1.frx":0000
      ScaleHeight     =   8475
      ScaleWidth      =   11835
      TabIndex        =   0
      Top             =   0
      Width           =   11895
      Begin MSAdodcLib.Adodc Adodc3 
         Height          =   330
         Left            =   2760
         Top             =   7320
         Visible         =   0   'False
         Width           =   3255
         _ExtentX        =   5741
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
         Connect         =   $"FRMLENDING1.frx":9D88
         OLEDBString     =   $"FRMLENDING1.frx":9E1A
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   ""
         Caption         =   "Student_Borrow"
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
      Begin VB.TextBox txtTimeB 
         Height          =   285
         Left            =   9000
         TabIndex        =   43
         Top             =   3360
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.TextBox txtDateB 
         Height          =   285
         Left            =   7920
         TabIndex        =   42
         Top             =   3360
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.TextBox txtDue 
         Height          =   285
         Left            =   7920
         TabIndex        =   41
         Top             =   3720
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   5760
         TabIndex        =   40
         Text            =   "9:00:00 AM"
         Top             =   3360
         Visible         =   0   'False
         Width           =   1215
      End
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   330
         Left            =   4200
         Top             =   6720
         Visible         =   0   'False
         Width           =   2775
         _ExtentX        =   4895
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
         Connect         =   $"FRMLENDING1.frx":9EAC
         OLEDBString     =   $"FRMLENDING1.frx":9F3E
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
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   375
         Left            =   1320
         Top             =   6720
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
         Connect         =   $"FRMLENDING1.frx":9FD0
         OLEDBString     =   $"FRMLENDING1.frx":A062
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   ""
         Caption         =   "Visitor_Student"
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
      Begin MSComctlLib.ListView BORROWERSLIST 
         Height          =   3615
         Left            =   5520
         TabIndex        =   39
         Top             =   2760
         Width           =   6135
         _ExtentX        =   10821
         _ExtentY        =   6376
         View            =   3
         Arrange         =   1
         LabelEdit       =   1
         LabelWrap       =   0   'False
         HideSelection   =   0   'False
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
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
            Text            =   "Student Number"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Call Number"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   2
            SubItemIndex    =   2
            Text            =   "Title"
            Object.Width           =   3316
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Date Borrowed"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Time Borrowed"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Due Date"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "Due Time"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.TextBox TXTONSHELF 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000006&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   675
         Left            =   7200
         TabIndex        =   38
         Text            =   "0"
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox TXTONLOAN 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000006&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   675
         Left            =   5880
         TabIndex        =   37
         Text            =   "0"
         Top             =   1560
         Width           =   975
      End
      Begin VB.PictureBox Picture3 
         BackColor       =   &H8000000B&
         Height          =   1455
         Left            =   8640
         ScaleHeight     =   1395
         ScaleWidth      =   2355
         TabIndex        =   34
         Top             =   1080
         Width           =   2415
         Begin VB.CommandButton CMDEXIT 
            Caption         =   "&EXIT"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   1200
            TabIndex        =   18
            Top             =   720
            Width           =   1095
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
            Height          =   615
            Left            =   1200
            TabIndex        =   17
            Top             =   120
            Width           =   1095
         End
         Begin VB.CommandButton cmdRETURN 
            Caption         =   "&RETURN"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   120
            TabIndex        =   16
            Top             =   720
            Width           =   1095
         End
         Begin VB.CommandButton cmdadd 
            Caption         =   "&BORROW"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   120
            TabIndex        =   15
            Top             =   120
            Width           =   1095
         End
      End
      Begin VB.PictureBox Picture2 
         BackColor       =   &H8000000D&
         Height          =   5535
         Left            =   120
         ScaleHeight     =   5475
         ScaleWidth      =   5115
         TabIndex        =   12
         Top             =   1080
         Width           =   5175
         Begin MSMask.MaskEdBox Text1 
            Height          =   255
            Left            =   4080
            TabIndex        =   47
            Top             =   960
            Visible         =   0   'False
            Width           =   975
            _ExtentX        =   1720
            _ExtentY        =   450
            _Version        =   393216
            Format          =   "$#,##0.00;($#,##0.00)"
            PromptChar      =   "_"
         End
         Begin VB.TextBox Text3 
            Height          =   285
            Left            =   4080
            TabIndex        =   46
            Top             =   1440
            Visible         =   0   'False
            Width           =   855
         End
         Begin VB.TextBox txtSection 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   120
            TabIndex        =   45
            Top             =   5040
            Width           =   2655
         End
         Begin VB.TextBox txtHoldings 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   4200
            TabIndex        =   14
            Top             =   5040
            Width           =   855
         End
         Begin VB.TextBox txtCopyright 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   2880
            TabIndex        =   13
            Top             =   5040
            Width           =   1215
         End
         Begin VB.TextBox txtAuthor 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   2280
            TabIndex        =   11
            Top             =   4440
            Width           =   2775
         End
         Begin VB.TextBox txtSubject 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   120
            TabIndex        =   10
            Top             =   4440
            Width           =   2055
         End
         Begin VB.TextBox txtTitle 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   1920
            TabIndex        =   9
            Top             =   3840
            Width           =   3135
         End
         Begin VB.TextBox txtCallNumber 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   120
            TabIndex        =   8
            Top             =   3840
            Width           =   1695
         End
         Begin VB.TextBox txtUPC 
            Height          =   285
            Left            =   1920
            TabIndex        =   7
            Top             =   3240
            Width           =   2175
         End
         Begin VB.TextBox txtYear 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   3840
            TabIndex        =   6
            Top             =   2280
            Width           =   1215
         End
         Begin VB.TextBox txtCourse1 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   2520
            TabIndex        =   5
            Top             =   2280
            Width           =   1215
         End
         Begin VB.TextBox txtSchool 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   120
            TabIndex        =   4
            Top             =   2280
            Width           =   2295
         End
         Begin VB.TextBox txtAddress 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   120
            TabIndex        =   3
            Top             =   1680
            Width           =   3615
         End
         Begin VB.TextBox txtName 
            Appearance      =   0  'Flat
            Height          =   285
            Left            =   120
            TabIndex        =   2
            Top             =   1080
            Width           =   3615
         End
         Begin VB.TextBox txtSN 
            Height          =   285
            Left            =   1920
            TabIndex        =   1
            Top             =   480
            Width           =   2175
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Section"
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
            TabIndex        =   44
            Top             =   4800
            Width           =   630
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Holdings"
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
            Left            =   4200
            TabIndex        =   33
            Top             =   4800
            Width           =   720
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Coyright Year"
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
            Left            =   2880
            TabIndex        =   32
            Top             =   4800
            Width           =   1185
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Author"
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
            TabIndex        =   31
            Top             =   4200
            Width           =   570
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
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
            Left            =   120
            TabIndex        =   30
            Top             =   4200
            Width           =   645
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Title"
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
            TabIndex        =   29
            Top             =   3600
            Width           =   360
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
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
            TabIndex        =   28
            Top             =   3600
            Width           =   1065
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Barcode Number:"
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
            TabIndex        =   27
            Top             =   3240
            Width           =   1680
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Address"
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
            TabIndex        =   26
            Top             =   1440
            Width           =   690
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Year"
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
            Left            =   3840
            TabIndex        =   25
            Top             =   2040
            Width           =   390
         End
         Begin VB.Label Label1 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000006&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "VISITOR-STUDENT INFORMATION"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000005&
            Height          =   375
            Left            =   0
            TabIndex        =   24
            Top             =   0
            Width           =   5175
         End
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000006&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "BORROWED BOOK INFORMATION"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000005&
            Height          =   375
            Left            =   0
            TabIndex        =   23
            Top             =   2760
            Width           =   5175
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Student Number:"
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
            TabIndex        =   22
            Top             =   480
            Width           =   1635
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Student Name"
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
            TabIndex        =   21
            Top             =   840
            Width           =   1215
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
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
            Left            =   120
            TabIndex        =   20
            Top             =   2040
            Width           =   570
         End
         Begin VB.Label txtCourse 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Course"
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
            Left            =   2520
            TabIndex        =   19
            Top             =   2040
            Width           =   615
         End
      End
      Begin VB.Label Label17 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "ONSHELF"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   240
         Left            =   7200
         TabIndex        =   36
         Top             =   1200
         Width           =   1005
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "ONLOAN"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   240
         Left            =   5880
         TabIndex        =   35
         Top             =   1200
         Width           =   900
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H8000000D&
         BackStyle       =   1  'Opaque
         Height          =   1335
         Left            =   5520
         Top             =   1080
         Width           =   3015
      End
   End
End
Attribute VB_Name = "FRMLENDING1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CTENT As Boolean, f As Integer

Sub LISTVIEW_CONTENT()
  BORROWERSLIST.ListItems.Clear
    Adodc3.RecordSource = "Select * from STUDENT_BORROW Where studno like '" & txtSN.Text & "'"
    Adodc3.Refresh
    If Adodc3.Recordset.EOF <> True Then
    
        Do While Adodc3.Recordset.EOF <> True
            Set lstitem = BORROWERSLIST.ListItems.Add(, , Adodc3.Recordset.Fields("studno"))
        
                lstitem.SubItems(1) = Adodc3.Recordset.Fields("CALLNUMBER")
                lstitem.SubItems(2) = Adodc3.Recordset.Fields("TITLE")
                lstitem.SubItems(3) = Adodc3.Recordset.Fields("dateborrowed")
                
                txtTimeB.Text = Adodc3.Recordset.Fields("TIMEborrowed")
                txtDateB.Text = Adodc3.Recordset.Fields("dateborrowed")
                lstitem.SubItems(4) = Adodc3.Recordset.Fields("TIMEborrowed")
                txtDue.Text = Adodc3.Recordset.Fields("duedate")
                lstitem.SubItems(5) = Adodc3.Recordset.Fields("duedate")
                lstitem.SubItems(6) = Adodc3.Recordset.Fields("DUETIME")
            Adodc3.Recordset.MoveNext 'goto next record
       Loop
       CTENT = True
    End If
End Sub

Private Sub BORROWERSLIST_Click()
If CTENT = True Then
    SN = BORROWERSLIST.SelectedItem.SubItems(1)
    Adodc2.RecordSource = "Select * from books Where CALLNUMBER like '" & SN & "'"
    Adodc2.Refresh
    TRANSFER_TEXT2
Else
 MsgBox "NO RECORD TO SELECT"
End If
End Sub

Private Sub cmdEXIT_Click()
Unload Me
End Sub

Private Sub cmdadd_Click()
Dim DDATE, M, D, Y, LOAN, SHELF
'M = Format(Date, "MM")
'D = Format(Date, "DD")
'Y = Format(Date, "YYYY")

If txtName.Text = "" Then
    MsgBox "PLEASE REGISTER THE BORROWER'S STUDENT NUMBER", vbInformation
    txtSN.SetFocus
ElseIf txtCallNumber.Text = "" Then
    MsgBox "PLEASE REGISTER THE BOOK TO BE BORROWED", vbInformation
Else

    If TXTONSHELF.Text <= 0 Then
        MsgBox "Books onshelf is empty", vbInformation
    Else
        If txtSection.Text = "CIRCULATION" Or txtSection.Text = "OPEN" Or txtSection.Text = "FILIPINIANA" Then
            Adodc3.Refresh
            DDATE = Date + 1
            Adodc3.RecordSource = "SELECT * FROM STUDENT_BORROW where CALLNUMBER like'" & txtCallNumber.Text & "' and studno like'" & txtSN.Text & "'"
            If Adodc3.Recordset.EOF = True Then
                
                Adodc3.Recordset.AddNew
                Adodc3.Recordset.Fields("studno") = txtSN.Text
                Adodc3.Recordset.Fields("name") = txtName.Text
                Adodc3.Recordset.Fields("CALLNUMBER") = txtCallNumber.Text
                Adodc3.Recordset.Fields("TITLE") = txtTitle.Text
                Adodc3.Recordset.Fields("TIMEborrowed") = Time
                Adodc3.Recordset.Fields("dateborrowed") = Date
                Adodc3.Recordset.Fields("duedate") = DDATE
                Adodc3.Recordset.Fields("DUETIME") = Time
                Adodc3.Recordset.Update
                Adodc3.Refresh
                LISTVIEW_CONTENT
                Adodc2.RecordSource = "Select * from books Where UPC like '" & txtUPC.Text & "'"
                Adodc2.Refresh
                If Adodc2.Recordset.EOF Then
                Else
                    SHELF = Adodc2.Recordset.Fields("onshelf") - 1
                    LOAN = Adodc2.Recordset.Fields("onloan") + 1
                    Adodc2.Recordset.Fields("onshelf") = SHELF
                    Adodc2.Recordset.Fields("onloan") = LOAN
                    Adodc2.Recordset.Update
                    Adodc2.RecordSource = "Select * from books Where UPC like '" & txtUPC.Text & "'"
                    Adodc2.Refresh
                    TRANSFER_TEXT2
                End If
            Else
                MsgBox "Borrower's cannot borrow the same book at the same time"
            End If
        ElseIf txtSection.Text = "RESERVED" Then
            MsgBox "FOR ROOM USE ONLY"
        Else
            MsgBox "Borrower's cannot borrow the same book at the same time", vbInformation
        End If
    End If
End If

End Sub


Private Sub cmdCancel_Click()
    prompt$ = "Are you sure you want to cancel the transaction?"
    reply = MsgBox(prompt$, vbYesNo, "Cancel")
    If reply = vbYes Then
        txtSN.Text = ""
        txtName.Text = ""
        txtAddress.Text = ""
        txtSchool.Text = ""
        txtCourse1.Text = ""
        txtYear.Text = ""
        txtUPC.Text = ""
        txtCallNumber.Text = ""
        txtHoldings.Text = ""
        txtSection.Text = ""
        txtTitle.Text = ""
        txtSubject.Text = ""
        txtAuthor.Text = ""
        txtCopyright.Text = ""
        'txtStatus.Text = ""
        'txtFines.Text = ""
        TXTONLOAN.Text = "0"
        TXTONSHELF.Text = "0"
        BORROWERSLIST.ListItems.Clear
    Else
    End If
End Sub





Private Sub cmdRETURN_Click()
Dim d1 As Date, d2 As Date, c As Date, b As Date
Dim value As Integer, z As Integer, fine As Integer, w As Integer, M As Integer


If txtName.Text = "" Then
    MsgBox "PLEASE REGISTER THE BORROWER'S STUDENT NUMBER", vbInformation
    txtSN.SetFocus
ElseIf txtCallNumber.Text = "" Then
    MsgBox "PLEASE REGISTER THE BOOK TO BE BORROWED", vbInformation
Else
    Adodc3.RecordSource = "SELECT * FROM STUDENT_BORROW where CALLNUMBER like'" & txtCallNumber.Text & "' and studno like'" & txtSN.Text & "'"
    Adodc3.Refresh
    If Adodc3.Recordset.EOF = True Then
        MsgBox "EITHER CALLNUMBER OR STUDENT NUMBER NOT FOUND IN BORROWER'S TABLE", vbInformation
    Else
        a = txtDateB.Text
        c = txtDue.Text
        b = Date
        
        d1 = Format(Text2.Text, "hh")
        d2 = Format(Time, "hh")
        If a = b Then
        
        ElseIf c = b Then
            value = d2 - d1
            MsgBox value
        Else
            value = d2 - d1
            z = b - c
            X = z * 24
            Y = X + value
            MsgBox Y
        End If
        
    End If
    Adodc3.Recordset.Delete
    Adodc3.Recordset.Update
    Adodc3.Refresh
    LISTVIEW_CONTENT
    Adodc2.RecordSource = "Select * from books Where UPC like '" & txtUPC.Text & "'"
    Adodc2.Refresh
            If Adodc2.Recordset.EOF Then
            Else
                
                Text1.Text = X
                SHELF = Adodc2.Recordset.Fields("onshelf") + 1
                LOAN = Adodc2.Recordset.Fields("onloan") - 1
                Adodc2.Recordset.Fields("onshelf") = SHELF
                Adodc2.Recordset.Fields("onloan") = LOAN
                Adodc2.Recordset.Update
                Adodc2.RecordSource = "Select * from books Where UPC like '" & txtUPC.Text & "'"
                Adodc2.Refresh
                TRANSFER_TEXT2
            End If
            Call CLEAR_TEXT2
End If

End Sub


Private Sub Form_Activate()
txtSN.SetFocus
End Sub

Private Sub Form_Load()
txtName.Locked = True
txtAddress.Locked = True
txtSchool.Locked = True
txtCourse1.Locked = True
txtYear.Locked = True
txtCallNumber.Locked = True
txtTitle.Locked = True
txtSubject.Locked = True
txtAuthor.Locked = True
txtSection.Locked = True
txtHoldings.Locked = True
txtCopyright.Locked = True
End Sub


Private Sub Form_Unload(Cancel As Integer)
    Unload Me
    LD = 0
    CTENT = False
End Sub




Private Sub txtFines_Change()
    Y = fines
    X = DateDiff("h", "9:30am", Time)
    txttimereturned = X
End Sub

Private Sub txtSN_Click()
txtSN.SetFocus
End Sub

Private Sub txtSN_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    Adodc1.RecordSource = "Select * from visitor_student Where studno like '" & txtSN.Text & "'"
    Call Adodc1.Refresh
    If Adodc1.Recordset.EOF = True Then
        MsgBox "No record found!"
        CLEAR_TEXT
    Else
        TRANSFER_TEXT
        LISTVIEW_CONTENT
        txtUPC.SetFocus
    End If
End If
End Sub
Sub CLEAR_TEXT()
txtName.Text = ""
txtAddress.Text = ""
txtSchool.Text = ""
txtCourse1.Text = ""
txtYear.Text = ""
End Sub
Sub TRANSFER_TEXT()
If Adodc1.Recordset.EOF <> True Then
    txtSN.Text = Adodc1.Recordset.Fields("studno")
    txtName.Text = Adodc1.Recordset.Fields("name")
    txtAddress.Text = Adodc1.Recordset.Fields("address")
    txtSchool.Text = Adodc1.Recordset.Fields("school")
    txtCourse1.Text = Adodc1.Recordset.Fields("course")
    txtYear.Text = Adodc1.Recordset.Fields("year")
Else
    MsgBox "No record found!", vbInformation
End If

End Sub



Private Sub txtUPC_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    Adodc2.RecordSource = "Select * from books Where UPC like '" & txtUPC.Text & "'"
    Call Adodc2.Refresh
    If Adodc2.Recordset.EOF Then
        MsgBox "No record found!", vbInformation
        CLEAR_TEXT2
    Else
        TRANSFER_TEXT2
        cmdadd.SetFocus
    End If
End If
End Sub

Sub CLEAR_TEXT2()
txtUPC.Text = ""
txtCallNumber.Text = ""
txtTitle.Text = ""
txtSubject.Text = ""
txtAuthor.Text = ""
txtCopyright.Text = ""
txtHoldings.Text = ""
txtSection.Text = ""
End Sub


Sub TRANSFER_TEXT2()
If Adodc2.Recordset.EOF <> True Then
    txtUPC.Text = Adodc2.Recordset.Fields("UPC")
    txtCallNumber.Text = Adodc2.Recordset.Fields("CALLNUMBER")
    txtTitle.Text = Adodc2.Recordset.Fields("title")
    txtSubject.Text = Adodc2.Recordset.Fields("subject")
    txtAuthor.Text = Adodc2.Recordset.Fields("author")
    txtCopyright.Text = Adodc2.Recordset.Fields("COPYRIGHT")
    txtHoldings.Text = Adodc2.Recordset.Fields("holdings")
    txtSection.Text = Adodc2.Recordset.Fields("SECTION")
    TXTONSHELF.Text = Adodc2.Recordset.Fields("onshelf")
    TXTONLOAN.Text = Adodc2.Recordset.Fields("onloan")
Else
    MsgBox "No record found!", vbInformation
End If

End Sub
