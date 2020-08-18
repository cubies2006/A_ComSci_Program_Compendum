VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Dummy_Files 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Dummy Files - Main"
   ClientHeight    =   8490
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11880
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000000&
   HasDC           =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   Moveable        =   0   'False
   NegotiateMenus  =   0   'False
   Palette         =   "Dummy_Files.frx":0000
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   1  'CenterOwner
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtLoginAs 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   43
      Top             =   480
      Width           =   2535
   End
   Begin VB.Frame frameProgress 
      BackColor       =   &H8000000D&
      BorderStyle     =   0  'None
      Height          =   1815
      Left            =   3360
      TabIndex        =   36
      Top             =   840
      Visible         =   0   'False
      Width           =   5415
      Begin MSComctlLib.ProgressBar prgGenerate 
         Height          =   375
         Left            =   240
         Negotiate       =   -1  'True
         TabIndex        =   37
         Top             =   960
         Width           =   4935
         _ExtentX        =   8705
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
      End
      Begin VB.Label lblFileInfo 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   375
         Left            =   360
         TabIndex        =   40
         Top             =   480
         Width           =   4335
      End
      Begin VB.Label lblFname 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   360
         TabIndex        =   39
         Top             =   240
         Width           =   4335
      End
      Begin VB.Label lblprgPercent 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "0  %"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   38
         Top             =   1440
         Visible         =   0   'False
         Width           =   4935
      End
   End
   Begin VB.TextBox txtDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   375
      Left            =   9960
      MaxLength       =   8
      TabIndex        =   35
      ToolTipText     =   "Type in your desired date to be generated here"
      Top             =   480
      Width           =   1575
   End
   Begin MSAdodcLib.Adodc RecallDestination 
      Height          =   330
      Left            =   6240
      Top             =   0
      Visible         =   0   'False
      Width           =   2895
      _ExtentX        =   5106
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
      Connect         =   $"Dummy_Files.frx":4672
      OLEDBString     =   $"Dummy_Files.frx":4707
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """Select * from RecallD"""
      Caption         =   "Recall Destination"
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
   Begin MSAdodcLib.Adodc RecallSource 
      Height          =   330
      Left            =   3720
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
      Connect         =   $"Dummy_Files.frx":479C
      OLEDBString     =   $"Dummy_Files.frx":482C
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """Select * from RecallS"""
      Caption         =   "Recall Source"
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
   Begin VB.Frame FileAddEditFrame 
      BackColor       =   &H00FFC0C0&
      BorderStyle     =   0  'None
      Height          =   975
      Left            =   240
      TabIndex        =   24
      Top             =   2400
      Width           =   11535
      Begin VB.CheckBox chkNewRequired 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0C0&
         Caption         =   "yes"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   6360
         TabIndex        =   6
         Top             =   480
         Value           =   1  'Checked
         Width           =   615
      End
      Begin VB.TextBox txtNewFileName 
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
         Left            =   1200
         TabIndex        =   5
         Top             =   480
         Width           =   3615
      End
      Begin VB.TextBox txtNewDescription 
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
         Left            =   8640
         TabIndex        =   7
         Top             =   480
         Width           =   2775
      End
      Begin VB.Label lblAddEdit 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   120
         Width           =   2895
      End
      Begin VB.Label lblFilename 
         BackStyle       =   0  'Transparent
         Caption         =   "Filename:"
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
         Left            =   120
         TabIndex        =   27
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label lblRequired 
         BackStyle       =   0  'Transparent
         Caption         =   "Required:"
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
         Left            =   5280
         TabIndex        =   26
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label lblDescription 
         BackStyle       =   0  'Transparent
         Caption         =   "Description:"
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
         Left            =   7320
         TabIndex        =   25
         Top             =   480
         Width           =   1335
      End
   End
   Begin MSComctlLib.ListView ExistingFilesList 
      CausesValidation=   0   'False
      Height          =   4815
      Left            =   240
      TabIndex        =   8
      Top             =   3480
      Width           =   7815
      _ExtentX        =   13785
      _ExtentY        =   8493
      View            =   3
      Sorted          =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      TextBackground  =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483646
      BackColor       =   12648447
      BorderStyle     =   1
      Appearance      =   0
      MousePointer    =   99
      Enabled         =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   3
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Filename"
         Object.Width           =   5292
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   1
         Text            =   "Required"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   2
         Text            =   "Description"
         Object.Width           =   4939
      EndProperty
   End
   Begin MSAdodcLib.Adodc Files 
      Height          =   330
      Left            =   1920
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
      Connect         =   $"Dummy_Files.frx":48BC
      OLEDBString     =   $"Dummy_Files.frx":4949
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """Select * from FileRecords"""
      Caption         =   "Files"
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
   Begin VB.Frame FilePathFrame 
      BackColor       =   &H00FFC0C0&
      BorderStyle     =   0  'None
      Height          =   1335
      Left            =   240
      TabIndex        =   19
      Top             =   960
      Width           =   11535
      Begin VB.CommandButton cmdDestination 
         BackColor       =   &H00FFFF00&
         Caption         =   "FIND DESTINATION"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   9120
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find a destination directory path"
         Top             =   720
         Width           =   2175
      End
      Begin VB.CommandButton cmdSource 
         BackColor       =   &H00FFFF00&
         Caption         =   "FIND SOURCE"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   9120
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Find a source directory path"
         Top             =   120
         Width           =   2175
      End
      Begin VB.TextBox txtSource 
         BackColor       =   &H00C0FFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1680
         TabIndex        =   1
         Top             =   240
         Width           =   7095
      End
      Begin VB.TextBox txtDestination 
         BackColor       =   &H00C0FFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1680
         TabIndex        =   3
         Top             =   840
         Width           =   7095
      End
      Begin VB.Label lblDestination 
         BackStyle       =   0  'Transparent
         Caption         =   "Destination:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   21
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label lblSource 
         BackStyle       =   0  'Transparent
         Caption         =   "Source:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   20
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.Frame FileButtonsFrame 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      ForeColor       =   &H8000000D&
      Height          =   4815
      Left            =   8160
      TabIndex        =   22
      Top             =   3480
      Width           =   3615
      Begin VB.CommandButton cmdUserMaintenance 
         Caption         =   "&USER MAINTENANCE"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   41
         Top             =   2040
         Width           =   3375
      End
      Begin VB.CommandButton cmdReset 
         BackColor       =   &H00FFFF80&
         Caption         =   "&RESET"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   960
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   2640
         Width           =   1575
      End
      Begin VB.CommandButton cmdClear 
         BackColor       =   &H0080C0FF&
         Caption         =   "&CLEAR"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Clears the filename to be searched"
         Top             =   4320
         Width           =   1575
      End
      Begin VB.TextBox txtSearch 
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
         Left            =   120
         TabIndex        =   16
         ToolTipText     =   "Enter the filename here"
         Top             =   3840
         Width           =   3375
      End
      Begin VB.CommandButton cmdAdd 
         BackColor       =   &H000000FF&
         Caption         =   "&ADD"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Create a new file record"
         Top             =   240
         Width           =   1575
      End
      Begin VB.CommandButton cmdEdit 
         BackColor       =   &H000080FF&
         Caption         =   "&EDIT"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Update an existing file record"
         Top             =   240
         Width           =   1575
      End
      Begin VB.CommandButton cmdGenerate 
         BackColor       =   &H0000FF00&
         Caption         =   "&GENERATE"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Generates a dummy file in the destination directory you have chosen"
         Top             =   840
         Width           =   1575
      End
      Begin VB.CommandButton cmdDelete 
         BackColor       =   &H0000FFFF&
         Caption         =   "&DELETE"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1920
         MaskColor       =   &H00808080&
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Delete an existing file record along with its physical file"
         Top             =   840
         Width           =   1575
      End
      Begin VB.CommandButton cmdSearch 
         BackColor       =   &H00C0C0FF&
         Caption         =   "&SEARCH"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         MaskColor       =   &H00FF0000&
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Find a specific filename under a specified directory"
         Top             =   4320
         Width           =   1575
      End
      Begin VB.CommandButton cmdExit 
         BackColor       =   &H00FF80FF&
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
         Height          =   375
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Exit the Dummy Files program"
         Top             =   1440
         Width           =   1575
      End
      Begin VB.CommandButton cmdCancel 
         BackColor       =   &H00FF8080&
         Caption         =   "&CANCEL"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   12
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
         ToolTipText     =   "Cancel the process of adding or editing a file record"
         Top             =   1440
         Width           =   1575
      End
      Begin VB.Label lblSearchFile 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         BackStyle       =   0  'Transparent
         Caption         =   "Enter the Filename to be searched in the Table:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   495
         Left            =   120
         TabIndex        =   30
         Top             =   3240
         Width           =   3375
      End
   End
   Begin VB.FileListBox SourceFile 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1260
      Left            =   8400
      MultiSelect     =   1  'Simple
      TabIndex        =   23
      Top             =   4560
      Width           =   3015
   End
   Begin VB.FileListBox DestinationFile 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1260
      Left            =   8400
      TabIndex        =   29
      Top             =   5760
      Width           =   3015
   End
   Begin VB.DirListBox SourceDirectory 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   990
      Left            =   8520
      OLEDragMode     =   1  'Automatic
      TabIndex        =   31
      Top             =   3600
      Width           =   2775
   End
   Begin VB.DirListBox DestinationDirectory 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   990
      Left            =   8520
      TabIndex        =   32
      Top             =   6960
      Width           =   2775
   End
   Begin MSComctlLib.StatusBar DummyStatus 
      Align           =   2  'Align Bottom
      Height          =   240
      Left            =   0
      TabIndex        =   33
      Top             =   8250
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   423
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Bevel           =   2
            Object.Width           =   13758
            MinWidth        =   13758
            Text            =   "Project - DUMMY FILES"
            TextSave        =   "Project - DUMMY FILES"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   3528
            MinWidth        =   3528
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   3528
            MinWidth        =   3528
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSAdodcLib.Adodc Users 
      Height          =   330
      Left            =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   1935
      _ExtentX        =   3413
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
      Connect         =   $"Dummy_Files.frx":49D6
      OLEDBString     =   $"Dummy_Files.frx":4A63
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """Select * from UserRecords"""
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
   Begin MSAdodcLib.Adodc UserLog 
      Height          =   330
      Left            =   9120
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
      Connect         =   $"Dummy_Files.frx":4AF0
      OLEDBString     =   $"Dummy_Files.frx":4B80
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
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   11160
      Top             =   0
   End
   Begin VB.Label lblLoginAs 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Login as:"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   480
      TabIndex        =   42
      Top             =   240
      Width           =   2535
   End
   Begin VB.Label lblMonthDayYear 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Month/Day/Year"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   9960
      TabIndex        =   34
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label lblDummyFiles 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "DUMMY FILES"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   11535
   End
End
Attribute VB_Name = "Dummy_Files"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CENT, duplicate, matchadd, matchgenerate As Boolean
Dim a(150), i, j, k, l, m, n, o, p As Integer
Dim iadd, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10 As Integer
Dim ctr1, ctr2, ctr3, ctr4, ctr5, ctr6 As Integer
Dim filenamestorage, deletefilename, fileindex As String
Dim neofilename, existfile, destinationpath, dayinput As String
Dim sourcenamepart, destinationnamepart, destinationdir As String
Dim monthinput, generate, ungenerate, prgPercent As Integer
Dim sourcematch, destinationmatch As Integer
Dim d(150), e(150), g1(150), g2(150), g3(150), g4(150) As String

Private Sub chkNewRequired_Click()
If (chkNewRequired.Value = 1) Then
    chkNewRequired.Caption = "yes"
ElseIf (chkNewRequired.Value = 0) Then
    chkNewRequired.Caption = "no"
End If
End Sub

Private Sub cmdAdd_Click()
    If (cmdAdd.Caption = "&ADD") Then
        replyadd = MsgBox("Do you want to add a file record?", vbQuestion + vbYesNo, "Dummy Files - Add a File Record")
        If (replyadd = vbYes) Then
            FileAddEditFrame.Enabled = True
            Call CLEAR_TEXT
            Call UNLOCKED_TEXT
            txtNewFileName.SetFocus
            chkNewRequired.Value = 1
            chkNewRequired.Caption = "yes"
            cmdCancel.Enabled = True
            cmdDelete.Enabled = False
            cmdEdit.Enabled = False
            cmdExit.Enabled = False
            cmdGenerate.Enabled = False
            cmdClear.Enabled = False
            cmdSearch.Enabled = False
            cmdUserMaintenance.Enabled = False
            txtSearch.Enabled = False
            ExistingFilesList.Enabled = False
            lblAddEdit.Caption = "Enter your data here: "
            cmdAdd.Caption = "&SAVE"
        End If
    Else
        If (ExistingFilesList.ListItems.Count = 0) Then
            duplicate = False
        ElseIf (ExistingFilesList.ListItems.Count <> 0) Then
            For i2 = 1 To ExistingFilesList.ListItems.Count
                If (LCase(txtNewFileName.Text) = LCase(ExistingFilesList.ListItems(i2))) Then
                    duplicate = True
                    i2 = ExistingFilesList.ListItems.Count
                Else
                    duplicate = False
                End If
            Next i2
        End If
        For i3 = 1 To SourceFile.ListCount
            If (LCase(txtNewFileName.Text) = LCase(SourceFile.List(i3))) Then
                j = i3
                matchadd = True
                i3 = SourceFile.ListCount
            Else
                matchadd = False
            End If
        Next i3
        If (duplicate = False) And (LCase(txtNewFileName.Text) = LCase(SourceFile.List(j))) Then
            filenamestorage = txtNewFileName.Text
            Files.RecordSource = "Select * from FileRecords Where Filename like '" & txtNewFileName.Text & "%'"
            Files.Refresh
            If (Files.Recordset.EOF) Then
                If txtNewFileName.Text = "" Then
                    MsgBox "All field must have a data", vbInformation, "Dummy Files - Add a File Record"
                    cmdAdd.Caption = "&SAVE"
                ElseIf txtNewDescription.Text = "" Then
                    MsgBox "All field must have a data", vbInformation, "Dummy Files - Add a File Record"
                    cmdAdd.Caption = "&SAVE"
                Else
                    Files.RecordSource = "Select * from FileRecords Where Filename like '" & txtNewFileName.Text & "%'"
                    Files.Refresh
                    If (Files.Recordset.EOF) Then
                        Files.Recordset.AddNew
                        Files.Recordset.Fields("Filename") = LCase(txtNewFileName.Text)
                        If (chkNewRequired.Value = 1) Then
                            Files.Recordset.Fields("Required") = "yes"
                        ElseIf (chkNewRequired.Value = 0) Then
                            Files.Recordset.Fields("Required") = "no"
                        End If
                        Files.Recordset.Fields("Description") = txtNewDescription.Text
                        Files.Recordset.Update
                        Files.Refresh
                        ExistingFilesList.Refresh
                        LOCKED_TEXT
                        TRANSFER_TEXT
                        LISTVIEW_CONTENT
                        lblAddEdit.Caption = ""
                        For iadd = 1 To ExistingFilesList.ListItems.Count
                            If (txtNewFileName.Text = ExistingFilesList.ListItems(iadd)) Then
                                ExistingFilesList.DropHighlight = ExistingFilesList.ListItems(iadd)
                                ExistingFilesList.ListItems(iadd).EnsureVisible
                            End If
                        Next iadd
                        MsgBox "The file record '" & txtNewFileName.Text & "' was successfully saved!!!", vbInformation, "Dummy Files - Successful File Record Save"
                        FileAddEditFrame.Enabled = False
                        cmdCancel.Enabled = False
                        cmdDelete.Enabled = True
                        cmdEdit.Enabled = True
                        cmdExit.Enabled = True
                        cmdGenerate.Enabled = True
                        cmdClear.Enabled = True
                        cmdUserMaintenance.Enabled = True
                        cmdSearch.Enabled = True
                        txtSearch.Enabled = True
                        ExistingFilesList.Enabled = True
                        cmdAdd.Caption = "&ADD"
                    End If
                End If
            End If
        ElseIf (duplicate = True) Then
            MsgBox "The filename '" & txtNewFileName.Text & "' cannot be added since it already exists in the table!!!", vbCritical, "File Already Exists"
        ElseIf (matchadd = False) Then
            MsgBox "The filename '" & txtNewFileName.Text & "' does not exist in the '" & txtSource.Text & "' directory!!!", vbCritical, "Wrong Filename"
        End If
        SourceFile.Refresh
    End If
End Sub

Private Sub cmdCancel_Click()
    replycancel = MsgBox("Are you sure you want to cancel the process?", vbQuestion + vbYesNo, "Dummy Files - Cancel a File Process")
    If (replycancel = vbYes) Then
        CTENT = False
        Call CLEAR_TEXT
        Call LOCKED_TEXT
        ExistingFilesList.Enabled = True
        cmdAdd.Caption = "&ADD"
        cmdEdit.Caption = "&EDIT"
        cmdAdd.Enabled = True
        cmdCancel.Enabled = False
        cmdDelete.Enabled = True
        cmdEdit.Enabled = True
        cmdExit.Enabled = True
        cmdGenerate.Enabled = True
        cmdClear.Enabled = True
        cmdSearch.Enabled = True
        txtSearch.Enabled = True
        lblAddEdit.Caption = ""
    End If
End Sub

Private Sub cmdClear_Click()
    txtSearch.Text = ""
End Sub

Private Sub cmdDelete_Click()
    If (txtNewFileName.Text = "") Then
        MsgBox "No file record to be deleted!!!", vbCritical, "Dummy Files - No File Record Delete"
    Else
        replydelete = MsgBox("Are you sure you want to delete the file record '" & ExistingFilesList.SelectedItem & "'?", vbQuestion + vbYesNo, "Dummy Files - Delete a File Record")
        If (replydelete = vbYes) Then
            ctr1 = Len(txtSource.Text)
            For k = 0 To ctr1
                d(k) = Mid(txtSource.Text & ExistingFilesList.SelectedItem.ListSubItems(1), ctr1, 1)
            Next k
            For i4 = 1 To ExistingFilesList.ListItems.Count
                If (d(ctr1) <> "\") Then
                    deletefilename = txtSource.Text & "\" & ExistingFilesList.ListItems(ExistingFilesList.SelectedItem.Index)
                    If (txtSource.Text & "\" & ExistingFilesList.SelectedItem = deletefilename) Then
                        Files.RecordSource = "Select * from FileRecords Where Filename like '" & ExistingFilesList.SelectedItem.Index & "%'"
                        i4 = ExistingFilesList.ListItems.Count
                        ExistingFilesList.ListItems.Remove (ExistingFilesList.SelectedItem.Index)
                        Files.Recordset.Delete
                        Files.Recordset.Update
                        Files.Refresh
                        CLEAR_TEXT
                    End If
                ElseIf (d(ctr1) = "\") Then
                    deletefilename = txtSource.Text & ExistingFilesList.ListItems(ExistingFilesList.SelectedItem.Index)
                    If (txtSource.Text & ExistingFilesList.SelectedItem = deletefilename) Then
                        Files.RecordSource = "Select * from FileRecords Where Filename like '" & ExistingFilesList.SelectedItem.Index & "%'"
                        i4 = ExistingFilesList.ListItems.Count
                        ExistingFilesList.ListItems.Remove (ExistingFilesList.SelectedItem.Index)
                        Files.Recordset.Delete
                        Files.Recordset.Update
                        Files.Refresh
                        ExistingFilesList.Refresh
                        CLEAR_TEXT
                    End If
                End If
            Next i4
            MsgBox "File record was successfully deleted!!!", vbInformation, "Dummy Files - Successful File Record Delete"
            If (ExistingFilesList.ListItems.Count = 0) Then
                cmdGenerate.Enabled = False
            End If
            Kill deletefilename
            SourceFile.Refresh
        End If
    End If
End Sub

Private Sub cmdDestination_Click()
    frmFindDestination.Show
End Sub

Private Sub cmdEdit_Click()
    If (txtNewFileName.Text = "") Then
        MsgBox "No file record to be updated!!!", vbCritical, "Dummy Files - No File Record Update"
    Else
        If cmdEdit.Caption = "&EDIT" Then
            replyrename = MsgBox("Do you want to update the file record '" & ExistingFilesList.SelectedItem & "'?", vbQuestion + vbYesNo, "Dummy Files - Update a File Record")
            If (replyrename = vbYes) Then
                FileAddEditFrame.Enabled = True
                Call UNLOCKED_TEXT
                txtNewFileName.Enabled = False
                cmdAdd.Enabled = False
                cmdCancel.Enabled = True
                cmdDelete.Enabled = False
                cmdExit.Enabled = False
                cmdGenerate.Enabled = False
                cmdClear.Enabled = False
                cmdSearch.Enabled = False
                cmdUserMaintenance.Enabled = False
                txtSearch.Enabled = False
                ExistingFilesList.Enabled = False
                lblAddEdit.Caption = "Update your data here: "
                cmdEdit.Caption = "&UPDATE"
            End If
        Else
            If txtNewFileName.Text = "" Then
                MsgBox "All field must have a data!", vbInformation, "Dummy Files - Rename a File Record"
                cmdEdit.Caption = "&UPDATE"
            ElseIf txtNewDescription.Text = "" Then
                MsgBox "All field must have a data!", vbInformation, "Dummy Files - Rename a File Record"
                cmdEdit.Caption = "&UPDATE"
            Else
                Files.RecordSource = "Select * from FileRecords Where Filename like '" & txtNewFileName.Text & "%'"
                Call Files.Refresh
                Files.Recordset.Fields("Filename") = LCase(txtNewFileName.Text)
                If (chkNewRequired.Value = 1) Then
                    Files.Recordset.Fields("Required") = "yes"
                ElseIf (chkNewRequired.Value = 0) Then
                    Files.Recordset.Fields("Required") = "no"
                End If
                Files.Recordset.Fields("Description") = txtNewDescription.Text
                ctr2 = Len(txtSource.Text)
                For k = 0 To ctr2
                    e(k) = Mid(txtSource.Text, ctr2, 1)
                Next k
                If (e(ctr2 - 1) <> "\") Then
                    Name txtSource.Text & "\" & ExistingFilesList.SelectedItem As txtSource.Text & "\" & txtNewFileName.Text
                ElseIf (e(ctr2 - 1) = "\") Then
                    Name txtSource.Text & ExistingFilesList.SelectedItem As txtSource.Text & txtNewFileName.Text
                End If
                FileAddEditFrame.Enabled = False
                fileindex = ExistingFilesList.SelectedItem
                ExistingFilesList.ListItems.Remove (ExistingFilesList.SelectedItem.Index)
                Files.Recordset.Update
                Files.RecordSource = "Select * from FileRecords"
                Files.Refresh
                ExistingFilesList.ListItems.Clear
                LOCKED_TEXT
                TRANSFER_TEXT
                LISTVIEW_CONTENT
                MsgBox "The file record '" & fileindex & "' was successfully updated!!!", vbInformation, "Dummy Files - Successful File Record Update"
                cmdAdd.Enabled = True
                cmdCancel.Enabled = False
                cmdDelete.Enabled = True
                cmdExit.Enabled = True
                cmdGenerate.Enabled = True
                cmdClear.Enabled = False
                cmdUserMaintenance.Enabled = True
                cmdSearch.Enabled = True
                txtSearch.Enabled = True
                fileindex = ""
                ExistingFilesList.Enabled = True
                lblAddEdit.Caption = ""
                txtNewFileName.Enabled = True
                cmdEdit.Caption = "&EDIT"
            End If
        End If
    End If
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdGenerate_Click()
    ungenerate = 0
    For i5 = 1 To ExistingFilesList.ListItems.Count
        If (LCase(ExistingFilesList.ListItems.Item(i5).SubItems(1)) = "no") Then
            ungenerate = ungenerate + 1
        End If
    Next i5
    generate = 0
    For i6 = 1 To ExistingFilesList.ListItems.Count
        If (LCase(ExistingFilesList.ListItems.Item(i6).SubItems(1)) = "yes") Then
            If (prgGenerate.Value <> prgGenerate.Max) Then
                generate = generate + 1
                frameProgress.Visible = True
                lblFname.Visible = True
                lblFileInfo.Visible = True
                lblprgPercent.Visible = True
                prgGenerate.Visible = True
                prgPercent = generate / (ExistingFilesList.ListItems.Count - ungenerate) * 100
                lblprgPercent.Caption = Str(prgPercent) & " %"
                prgGenerate.Value = prgPercent
                prgPercent = 0
                lblFname.Caption = "Filename: " & ExistingFilesList.ListItems.Item(i6)
                lblFileInfo.Caption = "From " & txtSource.Text & " to " & txtDestination.Text
                ctr3 = Len(txtDestination.Text)
                For l = 0 To ctr3
                    g1(l) = Mid(txtDestination.Text, ctr3, 1)
                Next l
                If (g1(ctr3) = "\") Then
                    destinationpath = txtDestination.Text & ExistingFilesList.ListItems(i6)
                ElseIf (g1(ctr3) <> "\") Then
                    destinationpath = txtDestination.Text & "\" & ExistingFilesList.ListItems(i6)
                End If
                ctr4 = Len(destinationpath)
                For m = 0 To ctr4
                    g2(m + 1) = Mid(destinationpath, m + 1, 1)
                    If (g2(m + 1) = ".") Then
                        If (monthinput = 1) Then
                            destinationnamepart = destinationnamepart & "A" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 2) Then
                            destinationnamepart = destinationnamepart & "B" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 3) Then
                            destinationnamepart = destinationnamepart & "C" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 4) Then
                            destinationnamepart = destinationnamepart & "D" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 5) Then
                            destinationnamepart = destinationnamepart & "E" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 6) Then
                            destinationnamepart = destinationnamepart & "F" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 7) Then
                            destinationnamepart = destinationnamepart & "G" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 8) Then
                            destinationnamepart = destinationnamepart & "H" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 9) Then
                            destinationnamepart = destinationnamepart & "I" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 10) Then
                            destinationnamepart = destinationnamepart & "J" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 11) Then
                            destinationnamepart = destinationnamepart & "K" & dayinput & g2(m + 1)
                        ElseIf (monthinput = 12) Then
                            destinationnamepart = destinationnamepart & "L" & dayinput & g2(m + 1)
                        End If
                    Else
                        destinationnamepart = destinationnamepart & g2(m + 1)
                    End If
                Next m
                ctr5 = Len(txtSource.Text)
                For n = 0 To ctr5
                    g3(n) = Mid(txtSource.Text, ctr5, 1)
                Next n
                If (g3(ctr5) = "\") Then
                    sourcenamepart = txtSource.Text & ExistingFilesList.ListItems(i6)
                ElseIf (g3(ctr5) <> "\") Then
                    sourcenamepart = txtSource.Text & "\" & ExistingFilesList.ListItems(i6)
                End If
                ctr6 = Len(txtDestination.Text)
                For o = 0 To ctr6
                    g4(o) = Mid(txtSource.Text, ctr6, 1)
                Next o
                If (g4(ctr6) = "\") Then
                    destinationdir = txtDestination.Text
                ElseIf (g4(ctr6) <> "\") Then
                    destinationdir = txtDestination.Text & "\"
                End If
                For i7 = 0 To DestinationFile.ListCount
                    If (LCase(destinationnamepart) = LCase(destinationdir & DestinationFile.List(i7))) Then
                        replyoverwrite = MsgBox("Are you sure you want to overwrite the file '" & LCase(destinationdir & DestinationFile.List(i7)) & "'?", vbQuestion + vbYesNo, "Dummy Files - Overwrite an Existing File Record")
                        If (replyoverwrite = vbYes) Then
                            FileCopy LCase(sourcenamepart), LCase(destinationdir & DestinationFile.List(i7))
                            matchgenerate = True
                        End If
                    Else
                        matchgenerate = False
                        FileCopy LCase(sourcenamepart), LCase(destinationnamepart)
                    End If
                Next i7
                SourceFile.Refresh
                DestinationFile.Refresh
                destinationnamepart = ""
            End If
        End If
    Next i6
    If (prgGenerate.Value = prgGenerate.Max) Then
        frameProgress.Visible = False
        lblFname.Visible = False
        lblFileInfo.Visible = False
        lblprgPercent.Visible = False
        prgGenerate.Value = False
        prgGenerate.Value = 0
        MsgBox "File generation complete!!!", vbInformation, "Dummy Files - Successful Generation of File Records"
    End If
    If (ungenerate = ExistingFilesList.ListItems.Count) Then
        MsgBox "There is no file record to be generated!!!", vbCritical, "Dummy Files - Unsuccessful Generation of File Records"
    End If
    For i = 1 To frmUserMaintenance.ExistingUsersList.ListItems.Count
        If (LCase(frmUserMaintenance.ExistingUsersList.ListItems(i)) = LCase(frmLogin.txtUsername.Text) And frmUserMaintenance.ExistingUsersList.ListItems(i).SubItems(1) = "Administrator") Then
            cmdUserMaintenance.Enabled = True
        ElseIf (LCase(frmUserMaintenance.ExistingUsersList.ListItems(i)) = LCase(frmLogin.txtUsername.Text) And frmUserMaintenance.ExistingUsersList.ListItems(i).SubItems(1) = "Officer") Then
            cmdUserMaintenance.Enabled = False
        ElseIf (LCase(frmUserMaintenance.ExistingUsersList.ListItems(i)) = LCase(frmLogin.txtUsername.Text) And frmUserMaintenance.ExistingUsersList.ListItems(i).SubItems(1) = "Processor") Then
            txtSource.Enabled = False
            txtDestination.Enabled = False
            cmdSource.Enabled = False
            cmdDestination.Enabled = False
            cmdReset.Enabled = False
            cmdUserMaintenance.Enabled = False
        End If
    Next i
    SourceFile.Refresh
    DestinationFile.Refresh
    ExistingFilesList.Refresh
End Sub

Private Sub cmdReset_Click()
    replyreset = MsgBox("Are you sure you want to reset the Dummy Files Program? (By clicking Yes, everything will be eliminated including the file records in the table. Otherwise, nothing will happen.)", vbInformation + vbYesNo, "Dummy Files - Confirm Reset")
    If (replyreset = vbYes) Then
        txtSearch.Text = ""
        txtSource.Text = ""
        txtDestination.Text = ""
        txtSource.Enabled = True
        txtDestination.Enabled = True
        cmdAdd.Caption = "&ADD"
        cmdEdit.Caption = "&EDIT"
        cmdAdd.Enabled = False
        cmdCancel.Enabled = False
        cmdDelete.Enabled = False
        cmdEdit.Enabled = False
        cmdGenerate.Enabled = False
        cmdSource.Enabled = True
        cmdDestination.Enabled = True
        SourceFile.Enabled = True
        DestinationFile.Enabled = True
        i8 = ExistingFilesList.ListItems.Count
        For indexfilename = i8 To 1 Step -1
            Files.RecordSource = "Select * from FileRecords Where Filename like '" & ExistingFilesList.ListItems(indexfilename) & "%'"
            ExistingFilesList.Enabled = True
            ExistingFilesList.ListItems.Remove (indexfilename)
            ExistingFilesList.Refresh
            Files.Refresh
            Files.Recordset.Delete
            Files.Recordset.Update
        Next indexfilename
        cmdReset.Enabled = False
        ExistingFilesList.Enabled = False
        RecallSource.RecordSource = "Select * from RecallS where SourceNo like 1"
        RecallSource.Recordset.Fields("SourcePath") = ""
        RecallSource.Recordset.Update
        RecallDestination.RecordSource = "Select * from RecallD where DestinationNo like 1"
        RecallDestination.Recordset.Fields("DestinationPath") = ""
        RecallDestination.Recordset.Update
        CLEAR_TEXT
        LOCKED_TEXT
    End If
End Sub

Private Sub cmdSearch_Click()
    If (txtSearch.Text = "") Then
        MsgBox "Please provide a specific filename of the record that you want to search!", vbCritical, "Dummy Files - Unspecified File Record Search"
        txtSearch.Text = ""
    Else
        ExistingFilesList.Enabled = True
        Files.RecordSource = "Select * from FileRecords Where Filename like '" & txtSearch.Text & "%'"
        Call Files.Refresh
        If (Files.Recordset.EOF) Then
            MsgBox "The file record '" & txtSearch.Text & "' is not found in the table!", vbCritical, "Dummy Files - Unsuccessful File Record Search"
        Else
            For i9 = 1 To ExistingFilesList.ListItems.Count
                If (LCase(txtSearch.Text) = LCase(ExistingFilesList.ListItems(i9))) Then
                    TRANSFER_TEXT
                    ExistingFilesList.ListItems(i9).Selected = True
                    ExistingFilesList.DropHighlight = ExistingFilesList.SelectedItem
                    ExistingFilesList.ListItems(i9).EnsureVisible
                    MsgBox "The file record '" & txtSearch.Text & "' is found in row " & i9 & " of the table!", vbInformation, "Dummy Files - Successful File Record Search"
                End If
            Next i9
        End If
    End If
End Sub

Private Sub cmdSource_Click()
    frmFindSource.Show
End Sub

Private Sub cmdUserMaintenance_Click()
    frmUserMaintenance.Show
    Dummy_Files.Hide
End Sub

Private Sub DestinationDirectory_Change()
    DestinationFile = DestinationDirectory.Path
End Sub

Private Sub ExistingFilesList_Click()
If (CENT = True) Then
    SN = ExistingFilesList.SelectedItem
    Files.RecordSource = "Select * from FileRecords Where Filename like '" & SN & "%'"
    Call Files.Refresh
    TRANSFER_TEXT
    cmdDelete.Enabled = True
    cmdEdit.Enabled = True
    ExistingFilesList.DropHighlight = ExistingFilesList.SelectedItem
End If
End Sub

Private Sub Form_Load()
    txtLoginAs.Text = frmLogin.txtUsername.Text
    Call LOCKED_TEXT
    Call CLEAR_TEXT
    RecallSource.RecordSource = "Select * from RecallS where SourceNo like 1"
    Call RecallSource.Refresh
    If (RecallSource.Recordset.EOF) Then
    Else
        If (RecallSource.Recordset.Fields("SourcePath") <> "") Then
            txtSource.Text = RecallSource.Recordset.Fields("SourcePath")
        Else
            txtSource.Text = ""
        End If
    End If
    RecallDestination.RecordSource = "Select * from RecallD where DestinationNo like 1"
    Call RecallDestination.Refresh
    If (RecallDestination.Recordset.EOF) Then
    Else
        If (RecallDestination.Recordset.Fields("DestinationPath") <> "") Then
            txtDestination.Text = RecallDestination.Recordset.Fields("DestinationPath")
        Else
            txtDestination.Text = ""
        End If
    End If
    If (txtSource.Text = "") And (txtDestination.Text = "") Then
        cmdReset.Enabled = False
    End If
    Files.RecordSource = "Select * from FileRecords"
    Call Files.Refresh
    If (Files.Recordset.EOF) Then
    Else
        LISTVIEW_CONTENT
    End If
    UserLog.RecordSource = "Select * from UserLogin"
    Call UserLog.Refresh
    cmdCancel.Enabled = False
    cmdClear.Enabled = False
    ExistingFilesList.Enabled = False
    FileAddEditFrame.Enabled = False
    If (txtSource.Text <> "") Then
        SourceDirectory.Path = txtSource.Text
        SourceFile.Refresh
    End If
    If (txtDestination.Text <> "") Then
        DestinationDirectory.Path = txtDestination.Text
        DestinationFile.Refresh
    End If
    txtDate.Text = Format(Date, "mm/dd/yy")
    monthinput = Val(Mid(txtDate.Text, 1, 2))
    dayinput = Mid(txtDate.Text, 4, 2)
    For i = 1 To frmUserMaintenance.ExistingUsersList.ListItems.Count
        If (LCase(frmUserMaintenance.ExistingUsersList.ListItems(i)) = LCase(frmLogin.txtUsername.Text) And frmUserMaintenance.ExistingUsersList.ListItems(i).SubItems(1) = "Officer") Then
            cmdUserMaintenance.Enabled = False
        ElseIf (LCase(frmUserMaintenance.ExistingUsersList.ListItems(i)) = LCase(frmLogin.txtUsername.Text) And frmUserMaintenance.ExistingUsersList.ListItems(i).SubItems(1) = "Processor") Then
            cmdUserMaintenance.Enabled = False
            txtSource.Enabled = False
            txtDestination.Enabled = False
            cmdSource.Enabled = False
            cmdDestination.Enabled = False
            cmdGenerate.Enabled = True
            cmdReset.Enabled = False
        End If
    Next i
End Sub

Private Sub Form_Unload(Cancel As Integer)
    replyexit = MsgBox("Are you sure you want to exit the Dummy Files Program?", vbQuestion + vbYesNo, "Dummy Files - Exit")
    If (replyexit = vbYes) Then
        UserLog.RecordSource = "Select * from UserLogin where LoginNo like '" & frmLogin.txtLoginNo.Text & "'"
        UserLog.Recordset.MoveLast
        UserLog.Recordset.Fields("Logout") = Time
        UserLog.Recordset.Update
        End
    Else
        Cancel = True
    End If
End Sub

Private Sub SourceDirectory_Change()
    SourceFile = SourceDirectory.Path
End Sub

Private Sub Timer1_Timer()
    DummyStatus.Panels(2).Text = "Time: " & Format(Time, "hh:mm:ss AM/PM")
    DummyStatus.Panels(3).Text = "Date: " & Date
End Sub

Private Sub txtDate_KeyPress(KeyAscii As Integer)
    If (KeyAscii = 13) Then
        replydate = MsgBox("Are you sure you want '" & txtDate.Text & "' as your date?", vbQuestion + vbYesNo, "Dummy Files - Confirm Date")
        If (replydate = vbYes) Then
            monthinput = Val(Mid(txtDate.Text, 1, 2))
            dayinput = Val(Mid(txtDate.Text, 4, 2))
            If ((monthinput = 0) And (dayinput = 0)) Then
                MsgBox "You didn't input a correct month and day", vbCritical, "Dummy Files - Invalid Date"
                monthinput = Month(Date)
                dayinput = Day(Date)
                txtDate.Text = Format(Date, "mm/dd/yy")
            Else
                If ((monthinput < 1) Or (monthinput > 12)) Then
                    MsgBox "Invalid month!!!", vbCritical, "Dummy Files - Invalid Month"
                    txtDate.Text = Format(Date, "mm/dd/yy")
                End If
                If ((dayinput < 1) Or (dayinput > 31)) Then
                    MsgBox "Invalid day!!!", vbCritical, "Dummy Files - Invalid Day"
                    txtDate.Text = Format(Date, "mm/dd/yy")
                End If
            End If
        End If
    End If
End Sub

Private Sub txtDestination_Change()
If (txtDestination.Text = "") Then
    RecallDestination.Recordset.Fields("DestinationNo") = "1"
    RecallDestination.Recordset("DestinationPath") = txtDestination.Text
    RecallDestination.Recordset.Update
    RecallDestination.Refresh
End If
End Sub

Private Sub txtDestination_KeyPress(KeyAscii As Integer)
    If (KeyAscii = 13) Then
        If (txtDestination.Text = "") Then
            MsgBox "Please provide a specific destination path you want!!!", vbCritical, "Dummy Files - Unspecified Find Destination Path"
        Else
            replydestinationdir = MsgBox("Are you sure you want the source '" & txtDestination.Text & "' as your destination path?", vbQuestion + vbYesNo, "Dummy Files - Confirm Destination Path")
            If (replydestinationdir = vbYes) Then
                destinationmatch = 0
                On Error GoTo destinationerror
                    ChDir (txtDestination.Text)
                If (LCase(txtDestination.Text) = LCase(CurDir)) Then
                    cmdDestination.Enabled = False
                    cmdReset.Enabled = True
                    DestinationDirectory = txtDestination.Text
                    DestinationFile.Refresh
                    destinationmatch = 1
                    cmdAdd.Enabled = True
                    cmdDelete.Enabled = True
                    cmdEdit.Enabled = True
                    ExistingFilesList.Enabled = True
                    If (ExistingFilesList.ListItems.Count <> 0) Then
                        txtNewFileName.Text = ExistingFilesList.ListItems(1)
                        If (ExistingFilesList.ListItems(1).SubItems(1) = "yes") Then
                            chkNewRequired.Value = 1
                        ElseIf (ExistingFilesList.ListItems(1).SubItems(1) = "no") Then
                            chkNewRequired.Value = 0
                        End If
                        txtNewDescription.Text = ExistingFilesList.ListItems(1).SubItems(2)
                    End If
                    txtDestination.Enabled = False
                    RecallDestination.RecordSource = "Select * from RecallD Where DestinationNo like 1"
                    If (RecallDestination.Recordset.RecordCount = 0) Then
                        RecallDestination.Recordset.AddNew
                    End If
                    RecallDestination.Recordset.Fields("DestinationNo") = "1"
                    RecallDestination.Recordset("DestinationPath") = txtDestination.Text
                    RecallDestination.Recordset.Update
                    RecallDestination.Refresh
                    MsgBox "Destination path is found!!!", vbInformation, "Dummy Files - Successful Find Destination Path"
                End If
                If (ExistingFilesList.ListItems.Count = 0) Then
                    cmdGenerate.Enabled = False
                Else
                    cmdGenerate.Enabled = True
                End If
destinationerror:
                If (destinationmatch = 0) Then
                    MsgBox "Destination path is not found!!! Please a type a new Destination path.", vbCritical, "Dummy Files - Unsuccessful Find Destination Path"
                    txtDestination.Text = ""
                    txtDestination.SetFocus
                End If
            End If
        End If
    End If
End Sub

Private Sub txtSearch_Change()
If (txtSearch.Text = "") Then
    cmdClear.Enabled = False
Else
    cmdClear.Enabled = True
End If
End Sub

Private Sub txtSource_Change()
If (txtSource.Text = "") Then
    RecallSource.Recordset.Fields("SourceNo") = "1"
    RecallSource.Recordset("SourcePath") = txtSource.Text
    RecallSource.Recordset.Update
    RecallSource.Refresh
End If
End Sub

Private Sub txtSource_KeyPress(KeyAscii As Integer)
    If (KeyAscii = 13) Then
        If (txtSource.Text = "") Then
            MsgBox "Please provide a specific source path you want!!!", vbCritical, "Dummy Files - Unspecified Find Source Path"
        Else
            replysourcedir = MsgBox("Are you sure you want the folder '" & txtSource.Text & "' as your source path?", vbQuestion + vbYesNo, "Dummy Files - Confirm Source Path")
            If (replysourcedir = vbYes) Then
                sourcematch = 0
                On Error GoTo sourceerror
                    ChDir (txtSource.Text)
                If (LCase(txtSource.Text) = LCase(CurDir)) Then
                    cmdSource.Enabled = False
                    cmdReset.Enabled = True
                    sourcematch = 1
                    If (Dummy_Files.txtSource.Text <> "") And (txtDestination.Text <> "") Then
                        cmdAdd.Enabled = True
                        cmdDelete.Enabled = True
                        cmdEdit.Enabled = True
                        ExistingFilesList.Enabled = True
                        If (ExistingFilesList.ListItems.Count <> 0) Then
                            txtNewFileName.Text = ExistingFilesList.ListItems(1)
                            If (ExistingFilesList.ListItems(1).SubItems(1) = "yes") Then
                                chkNewRequired.Value = 1
                            ElseIf (ExistingFilesList.ListItems(1).SubItems(1) = "no") Then
                                chkNewRequired.Value = 0
                            End If
                            txtNewDescription.Text = ExistingFilesList.ListItems(1).SubItems(2)
                        End If
                    End If
                    SourceDirectory = txtSource.Text
                    SourceFile.Refresh
                    i10 = ExistingFilesList.ListItems.Count
                    For indexfilename = i10 To 1 Step -1
                        For indexsourcefile = 0 To SourceFile.ListCount - 1
                            If (LCase(ExistingFilesList.ListItems.Item(indexfilename)) = LCase(SourceFile.List(indexsourcefile))) Then
                                existfile = 1
                                indexsourcefile = SourceFile.ListCount
                            Else
                                existfile = 0
                                fileindex = indexsourcefile
                            End If
                        Next indexsourcefile
                        If (existfile = 0) Then
                            Files.RecordSource = "Select * from FileRecords Where Filename like '" & ExistingFilesList.ListItems(indexfilename) & "%'"
                            ExistingFilesList.Enabled = True
                            ExistingFilesList.ListItems.Remove (indexfilename)
                            Files.Refresh
                            Files.Recordset.Delete
                            Files.Recordset.Update
                        End If
                        i10 = i10 - 1
                    Next indexfilename
                    txtSource.Enabled = False
                    RecallSource.RecordSource = "Select * from RecallS Where SourceNo like 1"
                    If (RecallSource.Recordset.RecordCount = 0) Then
                        RecallSource.Recordset.AddNew
                    End If
                    RecallSource.Recordset.Fields("SourceNo") = "1"
                    RecallSource.Recordset("SourcePath") = txtSource.Text
                    RecallSource.Recordset.Update
                    RecallSource.Refresh
                    MsgBox "Source path is found!!!", vbInformation, "Dummy Files - Successful Find Source Path"
                End If
                If (ExistingFilesList.ListItems.Count = 0) Then
                    cmdGenerate.Enabled = False
                Else
                    cmdGenerate.Enabled = True
                End If
sourceerror:
                If (sourcematch = 0) Then
                    MsgBox "Source path is not found!!! Please a type a new Source path.", vbCritical, "Dummy Files - Unsuccessful Find Source Path"
                    txtSource.Text = ""
                    txtSource.SetFocus
                End If
            End If
        End If
    End If
End Sub

Sub CLEAR_TEXT()
    txtNewFileName.Text = ""
    txtNewDescription.Text = ""
End Sub

Sub LISTVIEW_CONTENT()
    If (Files.Recordset.EOF = False) Then
        Do While (Files.Recordset.EOF <> True)
            Set fitem = ExistingFilesList.ListItems.Add(, , Files.Recordset.Fields("Filename"))
            fitem.SubItems(1) = Files.Recordset.Fields("Required")
            fitem.SubItems(2) = Files.Recordset.Fields("Description")
            Files.Recordset.Update
            Files.Recordset.MoveNext
        Loop
        CENT = True
    Else
        MsgBox "The table has no data files to display!!!", vbInformation
    End If
End Sub

Sub LOCKED_TEXT()
    txtNewFileName.Enabled = False
    chkNewRequired.Enabled = False
    txtNewDescription.Enabled = False
End Sub

Sub TRANSFER_TEXT()
    If (Files.Recordset.EOF <> True) Then
        txtNewFileName.Text = Files.Recordset.Fields("Filename")
        chkNewRequired.Caption = Files.Recordset.Fields("Required")
        If (chkNewRequired.Caption = "yes") Then
            chkNewRequired.Value = 1
        ElseIf (chkNewRequired.Caption = "no") Then
            chkNewRequired.Value = 0
        End If
        txtNewDescription.Text = Files.Recordset.Fields("Description")
    Else
        MsgBox "No Record Found!!!", vbInformation, "Search Failed"
    End If
End Sub

Sub UNLOCKED_TEXT()
    txtNewFileName.Enabled = True
    chkNewRequired.Enabled = True
    txtNewDescription.Enabled = True
End Sub

