VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "C. S. Enriquez Mechanical Work Shop Inventory System"
   ClientHeight    =   8475
   ClientLeft      =   150
   ClientTop       =   135
   ClientWidth     =   11910
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   Moveable        =   0   'False
   NegotiateMenus  =   0   'False
   Picture         =   "frmMain.frx":0000
   ScaleHeight     =   8475
   ScaleWidth      =   11910
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   WindowState     =   2  'Maximized
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   2040
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
      Connect         =   $"frmMain.frx":EC25
      OLEDBString     =   $"frmMain.frx":ECBB
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
   Begin VB.CommandButton cmdClose 
      Caption         =   "&LOG OUT"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5160
      Picture         =   "frmMain.frx":ED51
      Style           =   1  'Graphical
      TabIndex        =   0
      ToolTipText     =   "Exit the Employee Inventory System"
      Top             =   7320
      Width           =   1455
   End
   Begin MSComctlLib.StatusBar st1 
      Align           =   2  'Align Bottom
      Height          =   240
      Left            =   0
      TabIndex        =   1
      Top             =   8235
      Width           =   11910
      _ExtentX        =   21008
      _ExtentY        =   423
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   5
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   2
            Object.Width           =   10319
            MinWidth        =   10319
            Text            =   "C. S. Enriquez Mechanical Work Shop Inventory System (Employee)"
            TextSave        =   "C. S. Enriquez Mechanical Work Shop Inventory System (Employee)"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   2822
            MinWidth        =   2822
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   2822
            MinWidth        =   2822
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   2822
            MinWidth        =   2822
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   2
            Object.Width           =   2646
            MinWidth        =   2646
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   0
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
      Connect         =   $"frmMain.frx":10113
      OLEDBString     =   $"frmMain.frx":101A9
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """select * from contacts"""
      Caption         =   "Contacts"
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
   Begin VB.Frame Frame1 
      BackColor       =   &H80000008&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   11895
      Begin MSAdodcLib.Adodc Adodc3 
         Height          =   330
         Left            =   4680
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
         Connect         =   $"frmMain.frx":1023F
         OLEDBString     =   $"frmMain.frx":102D5
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   """select * from products"""
         Caption         =   "Products"
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
      Begin VB.TextBox txtEmpLogin 
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   9600
         Locked          =   -1  'True
         TabIndex        =   5
         Top             =   840
         Width           =   2055
      End
      Begin VB.Timer Timer1 
         Interval        =   1000
         Left            =   6600
         Top             =   0
      End
      Begin VB.Image Image1 
         Height          =   1035
         Left            =   3240
         Picture         =   "frmMain.frx":1036B
         Stretch         =   -1  'True
         Top             =   120
         Width           =   1365
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H80000008&
         Caption         =   "Inventory System"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   345
         Left            =   4800
         TabIndex        =   4
         Top             =   480
         Width           =   3255
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Logged in as:"
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
         Height          =   255
         Left            =   8040
         TabIndex        =   3
         Top             =   840
         Width           =   1455
      End
   End
   Begin TabDlg.SSTab Pat 
      Height          =   5895
      Left            =   0
      TabIndex        =   6
      Top             =   1200
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   10398
      _Version        =   393216
      Style           =   1
      Tabs            =   5
      TabsPerRow      =   5
      TabHeight       =   520
      BackColor       =   -2147483635
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Bookman Old Style"
         Size            =   9
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "General"
      TabPicture(0)   =   "frmMain.frx":10D68
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame5"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Contacts"
      TabPicture(1)   =   "frmMain.frx":10D84
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "lblField1"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "lblRecord1"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "Frame3"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "cmdCView"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "cmdCAdd"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "cmdCDelete"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "cmdCEdit"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "cmdCSearch"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "txtCSearch"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "combofield1"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "cmdCNew"
      Tab(1).Control(10).Enabled=   0   'False
      Tab(1).Control(11)=   "cmdCCancel"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).ControlCount=   12
      TabCaption(2)   =   "Products"
      TabPicture(2)   =   "frmMain.frx":1323C
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "lblRecord2"
      Tab(2).Control(1)=   "lblField2"
      Tab(2).Control(2)=   "cmdPAdd"
      Tab(2).Control(3)=   "cmdPView"
      Tab(2).Control(4)=   "Frame4"
      Tab(2).Control(5)=   "cmdPDelete"
      Tab(2).Control(6)=   "cmdPEdit"
      Tab(2).Control(7)=   "cmdPSearch"
      Tab(2).Control(8)=   "txtPSearch"
      Tab(2).Control(9)=   "combofield2"
      Tab(2).Control(10)=   "cmdPNew"
      Tab(2).Control(11)=   "cmdPCancel"
      Tab(2).ControlCount=   12
      TabCaption(3)   =   "Reports"
      TabPicture(3)   =   "frmMain.frx":15665
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Picture5"
      Tab(3).ControlCount=   1
      TabCaption(4)   =   "About Us"
      TabPicture(4)   =   "frmMain.frx":179FE
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Picture1"
      Tab(4).ControlCount=   1
      Begin VB.Frame Frame5 
         BackColor       =   &H80000003&
         Height          =   4695
         Left            =   480
         TabIndex        =   66
         Top             =   720
         Width           =   10815
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            BackColor       =   &H80000003&
            Caption         =   "Welcome to the C. S. Enriquez Mechanical Work Shop Inventory System"
            BeginProperty Font 
               Name            =   "Book Antiqua"
               Size            =   27.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   2325
            Left            =   1080
            TabIndex        =   67
            Top             =   1200
            Width           =   8985
            WordWrap        =   -1  'True
         End
      End
      Begin VB.TextBox textbox 
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   9360
         Locked          =   -1  'True
         TabIndex        =   65
         Top             =   -600
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.PictureBox Picture1 
         Height          =   4215
         Left            =   -74520
         Picture         =   "frmMain.frx":19EE8
         ScaleHeight     =   4155
         ScaleWidth      =   10875
         TabIndex        =   64
         Top             =   960
         Width           =   10935
      End
      Begin VB.CommandButton cmdPCancel 
         Caption         =   "&CANCEL"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   63
         ToolTipText     =   "Cancel the process of adding or editing a product record"
         Top             =   3540
         Width           =   1575
      End
      Begin VB.CommandButton cmdCCancel 
         Caption         =   "&CANCEL"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   62
         ToolTipText     =   "Cancel the process of adding or editing a contact record"
         Top             =   3540
         Width           =   1575
      End
      Begin VB.CommandButton cmdPNew 
         Caption         =   "&NEW SEARCH"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   61
         ToolTipText     =   "Find new product"
         Top             =   3060
         Width           =   1575
      End
      Begin VB.CommandButton cmdCNew 
         Caption         =   "&NEW SEARCH"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   60
         ToolTipText     =   "Find new contact"
         Top             =   3060
         Width           =   1575
      End
      Begin VB.ComboBox combofield1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         ItemData        =   "frmMain.frx":2DE5F
         Left            =   -65040
         List            =   "frmMain.frx":2DE75
         TabIndex        =   59
         ToolTipText     =   "Browse a specific field here"
         Top             =   4080
         Width           =   1815
      End
      Begin VB.ComboBox combofield2 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         ItemData        =   "frmMain.frx":2DEAA
         Left            =   -65040
         List            =   "frmMain.frx":2DEC3
         TabIndex        =   58
         ToolTipText     =   "Browse a specific field here"
         Top             =   4140
         Width           =   1815
      End
      Begin VB.TextBox txtPSearch 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   -65040
         TabIndex        =   57
         ToolTipText     =   "Type the data you want to find here"
         Top             =   4500
         Width           =   1815
      End
      Begin VB.TextBox txtCSearch 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   -65040
         TabIndex        =   56
         ToolTipText     =   "Type the data you want to find here"
         Top             =   4440
         Width           =   1815
      End
      Begin VB.CommandButton cmdPSearch 
         Caption         =   "SEA&RCH"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   55
         ToolTipText     =   "Find a product"
         Top             =   2580
         Width           =   1575
      End
      Begin VB.CommandButton cmdCSearch 
         Caption         =   "SEA&RCH"
         Default         =   -1  'True
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   54
         ToolTipText     =   "Find a contact"
         Top             =   2580
         Width           =   1575
      End
      Begin VB.PictureBox Picture5 
         BackColor       =   &H80000003&
         Height          =   4455
         Left            =   -74400
         ScaleHeight     =   4395
         ScaleWidth      =   10635
         TabIndex        =   45
         Top             =   840
         Width           =   10695
         Begin VB.PictureBox Picture4 
            BackColor       =   &H80000012&
            Height          =   3975
            Left            =   3840
            ScaleHeight     =   3915
            ScaleWidth      =   3315
            TabIndex        =   46
            Top             =   480
            Width           =   3375
            Begin VB.CommandButton cmdContacts 
               Caption         =   "Contacts"
               BeginProperty Font 
                  Name            =   "Garamond"
                  Size            =   18
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   615
               Left            =   240
               TabIndex        =   52
               ToolTipText     =   "Report about Contact Persons"
               Top             =   240
               Width           =   2775
            End
            Begin VB.CommandButton CmdProducts 
               Caption         =   "Products"
               BeginProperty Font 
                  Name            =   "Garamond"
                  Size            =   18
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   615
               Left            =   240
               TabIndex        =   51
               ToolTipText     =   "Report about Products"
               Top             =   840
               Width           =   2775
            End
            Begin VB.CommandButton cmdEmployeeLogin 
               Caption         =   "Employee Login"
               BeginProperty Font 
                  Name            =   "Garamond"
                  Size            =   18
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   615
               Left            =   240
               TabIndex        =   50
               ToolTipText     =   "Report about Employee who Logged In"
               Top             =   1440
               Width           =   2775
            End
            Begin VB.CommandButton cmdUserLogin 
               Caption         =   "Cashiers Login"
               BeginProperty Font 
                  Name            =   "Garamond"
                  Size            =   18
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   615
               Left            =   240
               TabIndex        =   49
               ToolTipText     =   "Report about Cashiers who Logged In"
               Top             =   2040
               Width           =   2775
            End
            Begin VB.CommandButton cmdSales 
               Caption         =   "Sales"
               BeginProperty Font 
                  Name            =   "Garamond"
                  Size            =   18
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   240
               TabIndex        =   48
               ToolTipText     =   "Report about the Current Sales"
               Top             =   2640
               Width           =   2775
            End
            Begin VB.CommandButton cmdTransactions 
               Caption         =   "Transactions"
               BeginProperty Font 
                  Name            =   "Garamond"
                  Size            =   18
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   240
               TabIndex        =   47
               ToolTipText     =   "Report about User Transactions"
               Top             =   3120
               Width           =   2775
            End
         End
         Begin VB.Label Label12 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "View Reports on :"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   495
            Left            =   3840
            TabIndex        =   53
            Top             =   0
            Width           =   3375
         End
      End
      Begin VB.CommandButton cmdPEdit 
         Caption         =   "&EDIT"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   44
         ToolTipText     =   "Edit a product"
         Top             =   2100
         Width           =   1575
      End
      Begin VB.CommandButton cmdPDelete 
         Caption         =   "&DELETE"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   43
         ToolTipText     =   "Delete a product"
         Top             =   1620
         Width           =   1575
      End
      Begin VB.CommandButton cmdCEdit 
         Caption         =   "&EDIT"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   42
         ToolTipText     =   "Edit a contact"
         Top             =   2100
         Width           =   1575
      End
      Begin VB.CommandButton cmdCDelete 
         Caption         =   "&DELETE"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   41
         ToolTipText     =   "Delete a contact"
         Top             =   1620
         Width           =   1575
      End
      Begin VB.CommandButton cmdCAdd 
         Caption         =   "&ADD"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   40
         ToolTipText     =   "Add a contact"
         Top             =   1140
         Width           =   1575
      End
      Begin VB.CommandButton cmdCView 
         Caption         =   "&VIEW ALL"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   39
         ToolTipText     =   "View all contacts"
         Top             =   660
         Width           =   1575
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H80000003&
         Height          =   4095
         Left            =   -74880
         TabIndex        =   23
         Top             =   720
         Width           =   8775
         Begin VB.TextBox txtDescription 
            Height          =   285
            Left            =   6000
            TabIndex        =   30
            ToolTipText     =   "Enter a Brief Description about the Product here"
            Top             =   960
            Width           =   2415
         End
         Begin VB.TextBox txtDate 
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "M/d/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   285
            Left            =   6000
            TabIndex        =   29
            ToolTipText     =   "Enter the Date when you purchased the Product here"
            Top             =   600
            Width           =   975
         End
         Begin VB.TextBox txtTotalPrice 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   6000
            Locked          =   -1  'True
            TabIndex        =   28
            Top             =   240
            Width           =   1215
         End
         Begin VB.TextBox txtQuantity 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   1920
            Locked          =   -1  'True
            TabIndex        =   27
            ToolTipText     =   "Enter the No. of stocks you have here"
            Top             =   1320
            Width           =   1335
         End
         Begin VB.TextBox txtUnitPrice 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   1920
            Locked          =   -1  'True
            TabIndex        =   26
            ToolTipText     =   "Enter a Unit Price here"
            Top             =   960
            Width           =   1335
         End
         Begin VB.TextBox txtProductName 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   1920
            Locked          =   -1  'True
            TabIndex        =   25
            ToolTipText     =   "Enter a Product Name here"
            Top             =   600
            Width           =   2175
         End
         Begin VB.TextBox txtProductID 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   1920
            Locked          =   -1  'True
            TabIndex        =   24
            Top             =   240
            Width           =   2175
         End
         Begin MSComctlLib.ListView ProductList 
            Height          =   2055
            Left            =   360
            TabIndex        =   31
            Top             =   1800
            Width           =   8055
            _ExtentX        =   14208
            _ExtentY        =   3625
            SortKey         =   1
            View            =   3
            LabelEdit       =   1
            Sorted          =   -1  'True
            LabelWrap       =   0   'False
            HideSelection   =   0   'False
            AllowReorder    =   -1  'True
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
            MouseIcon       =   "frmMain.frx":2DF11
            NumItems        =   7
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Product ID"
               Object.Width           =   2646
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   2
               SubItemIndex    =   1
               Text            =   "Product Name"
               Object.Width           =   4233
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "Unit Price"
               Object.Width           =   1940
            EndProperty
            BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   3
               Text            =   "Quantity"
               Object.Width           =   1587
            EndProperty
            BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   4
               Text            =   "Total Price"
               Object.Width           =   2469
            EndProperty
            BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   5
               Text            =   "Date"
               Object.Width           =   2117
            EndProperty
            BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   6
               Text            =   "Description"
               Object.Width           =   5115
            EndProperty
         End
         Begin VB.Label lblDescription 
            BackColor       =   &H80000003&
            Caption         =   "Description:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   4320
            TabIndex        =   38
            Top             =   960
            Width           =   1575
         End
         Begin VB.Label lblProductID 
            BackColor       =   &H80000003&
            Caption         =   "Product ID:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   360
            TabIndex        =   37
            Top             =   240
            Width           =   1095
         End
         Begin VB.Label lblDate 
            BackColor       =   &H80000003&
            Caption         =   "Date Purchased:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   4320
            TabIndex        =   36
            Top             =   600
            Width           =   1695
         End
         Begin VB.Label lblTotalPrice 
            BackColor       =   &H80000003&
            Caption         =   "Total Price:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   4320
            TabIndex        =   35
            Top             =   240
            Width           =   1695
         End
         Begin VB.Label lblQuantity 
            BackColor       =   &H80000003&
            Caption         =   "Quantity:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   360
            TabIndex        =   34
            Top             =   1320
            Width           =   1215
         End
         Begin VB.Label lblUnitPrice 
            BackColor       =   &H80000003&
            Caption         =   "Unit Price:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   360
            TabIndex        =   33
            Top             =   960
            Width           =   1215
         End
         Begin VB.Label lblProductName 
            BackColor       =   &H80000003&
            Caption         =   "Product Name:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   360
            TabIndex        =   32
            Top             =   600
            Width           =   1575
         End
      End
      Begin VB.CommandButton cmdPView 
         Caption         =   "&VIEW ALL"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   22
         ToolTipText     =   "View all products"
         Top             =   660
         Width           =   1575
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H80000003&
         Height          =   4095
         Left            =   -74880
         TabIndex        =   8
         Top             =   720
         Width           =   8775
         Begin VB.TextBox txtEmail 
            Height          =   285
            Left            =   5160
            Locked          =   -1  'True
            TabIndex        =   14
            ToolTipText     =   "Enter an E-mail Address here"
            Top             =   960
            Width           =   2415
         End
         Begin VB.TextBox txtCel 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   5160
            Locked          =   -1  'True
            MaxLength       =   11
            TabIndex        =   13
            ToolTipText     =   "Enter a Cell No. here"
            Top             =   600
            Width           =   1455
         End
         Begin VB.TextBox txtPhone 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   5160
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   12
            ToolTipText     =   "Enter a Phone No. here"
            Top             =   240
            Width           =   975
         End
         Begin VB.TextBox txtAddress 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   1560
            Locked          =   -1  'True
            TabIndex        =   11
            ToolTipText     =   "Enter an Address here"
            Top             =   960
            Width           =   2175
         End
         Begin VB.TextBox txtName 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   1560
            Locked          =   -1  'True
            TabIndex        =   10
            ToolTipText     =   "Enter a Contact Name here"
            Top             =   600
            Width           =   2175
         End
         Begin VB.TextBox txtContactID 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   1560
            Locked          =   -1  'True
            TabIndex        =   9
            Top             =   240
            Width           =   1815
         End
         Begin MSComctlLib.ListView ContactList 
            CausesValidation=   0   'False
            Height          =   2175
            Left            =   360
            TabIndex        =   15
            ToolTipText     =   "Click the item you want to manipulate"
            Top             =   1560
            Width           =   8055
            _ExtentX        =   14208
            _ExtentY        =   3836
            SortKey         =   1
            View            =   3
            LabelEdit       =   1
            Sorted          =   -1  'True
            LabelWrap       =   0   'False
            HideSelection   =   0   'False
            AllowReorder    =   -1  'True
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
            MouseIcon       =   "frmMain.frx":2E22B
            NumItems        =   6
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Contact ID"
               Object.Width           =   2822
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Alignment       =   2
               SubItemIndex    =   1
               Text            =   "Name"
               Object.Width           =   4939
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "Address"
               Object.Width           =   2469
            EndProperty
            BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   3
               Text            =   "Phone No"
               Object.Width           =   2469
            EndProperty
            BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   4
               Text            =   "Cell No"
               Object.Width           =   2469
            EndProperty
            BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   5
               Text            =   "Email"
               Object.Width           =   4939
            EndProperty
         End
         Begin VB.Label lblContactID 
            BackColor       =   &H80000003&
            Caption         =   "Contact ID:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   360
            TabIndex        =   21
            Top             =   240
            Width           =   1095
         End
         Begin VB.Label lblEmail 
            BackColor       =   &H80000003&
            Caption         =   "E-mail:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   4200
            TabIndex        =   20
            Top             =   960
            Width           =   975
         End
         Begin VB.Label lblCel 
            BackColor       =   &H80000003&
            Caption         =   "Cel. #:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   4200
            TabIndex        =   19
            Top             =   600
            Width           =   975
         End
         Begin VB.Label lblPhone 
            BackColor       =   &H80000003&
            Caption         =   "Phone #:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   4200
            TabIndex        =   18
            Top             =   240
            Width           =   975
         End
         Begin VB.Label lblAddress 
            BackColor       =   &H80000003&
            Caption         =   "Address:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   360
            TabIndex        =   17
            Top             =   960
            Width           =   975
         End
         Begin VB.Label lblName 
            BackColor       =   &H80000003&
            Caption         =   "Name:"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C0FFFF&
            Height          =   255
            Left            =   360
            TabIndex        =   16
            Top             =   600
            Width           =   735
         End
      End
      Begin VB.CommandButton cmdPAdd 
         Caption         =   "&ADD"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -65400
         TabIndex        =   7
         ToolTipText     =   "Add a product"
         Top             =   1140
         Width           =   1575
      End
      Begin VB.Label lblField2 
         Caption         =   "Field:"
         BeginProperty Font 
            Name            =   "Bookman Old Style"
            Size            =   9.75
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -66000
         TabIndex        =   71
         Top             =   4140
         Width           =   855
      End
      Begin VB.Label lblRecord2 
         Caption         =   "Record:"
         BeginProperty Font 
            Name            =   "Bookman Old Style"
            Size            =   9.75
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -66000
         TabIndex        =   70
         Top             =   4500
         Width           =   855
      End
      Begin VB.Label lblRecord1 
         Caption         =   "Record:"
         BeginProperty Font 
            Name            =   "Bookman Old Style"
            Size            =   9.75
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -66000
         TabIndex        =   69
         Top             =   4440
         Width           =   855
      End
      Begin VB.Label lblField1 
         Caption         =   "Field:"
         BeginProperty Font 
            Name            =   "Bookman Old Style"
            Size            =   9.75
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -66000
         TabIndex        =   68
         Top             =   4080
         Width           =   855
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CENT1, CENT2 As Boolean
Dim i, a(50) As Integer

Private Sub cmdCAdd_Click()
If cmdCAdd.Caption = "&ADD" Then
    prompt$ = "Do you want to add a record?"
    reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Contacts - Add Record")
    If reply = vbOK Then
        Call UNLOCKED_TEXT
        Call CLEAR_TEXT
        ContactList.Enabled = False
        cmdCCancel.Enabled = True
        cmdCEdit.Enabled = False
        cmdCDelete.Enabled = False
        cmdCNew.Enabled = False
        cmdCSearch.Enabled = False
        cmdCView.Enabled = False
        combofield1.Locked = True
        txtCSearch.Locked = True
        For i = 1 To frmViewContacts.ContactList.ListItems.Count
           a(i) = Val(frmViewContacts.ContactList.ListItems.Item(i))
        Next
        a(i - 1) = a(i - 1) + 1
        txtContactID.Text = Str(a(i - 1))
        cmdCAdd.Caption = "&SAVE"
    End If
Else
    Adodc1.RecordSource = "select * from Contacts where ContactID like '" & txtContactID.Text & "'"
    Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        If txtName.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Contacts - Add Record"
            cmdCAdd.Caption = "&SAVE"
        ElseIf txtAddress.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Contacts - Add Record"
            cmdCAdd.Caption = "&SAVE"
        ElseIf txtPhone.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Contacts - Add Record"
            cmdCAdd.Caption = "&SAVE"
        ElseIf txtCel.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Contacts - Add Record"
            cmdCAdd.Caption = "&SAVE"
        ElseIf txtEmail.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Contacts - Add Record"
            cmdCAdd.Caption = "&SAVE"
        Else
            Adodc1.RecordSource = "Select * from Contacts where Name like '" & txtName.Text & "'"
            Call Adodc1.Refresh
            Call Adodc1.Refresh
            If Adodc1.Recordset.EOF Then
                Adodc1.Recordset.AddNew
                Adodc1.Recordset.Fields("ContactID") = txtContactID.Text
                Adodc1.Recordset.Fields("Name") = txtName.Text
                Adodc1.Recordset.Fields("Address") = txtAddress.Text
                Adodc1.Recordset.Fields("PhoneNo") = txtPhone.Text
                Adodc1.Recordset.Fields("CelNo") = txtCel.Text
                Adodc1.Recordset.Fields("Email") = txtEmail.Text
                Adodc1.Recordset.Update
                Adodc1.Recordset.MoveNext
                Adodc1.Refresh
                Adodc1.Refresh
                MsgBox "Record was successfully save!", vbInformation, "Contacts - Add Record"
                cmdCAdd.Caption = "&ADD"
                Adodc1.Refresh
                TRANSFER_TEXT
                LOCKED_TEXT
                LISTVIEW_CONTENT
                ContactList.Enabled = True
                cmdCCancel.Enabled = False
                cmdCDelete.Enabled = True
                cmdCEdit.Enabled = True
                cmdCNew.Enabled = True
                cmdCSearch.Enabled = True
                cmdCView.Enabled = True
                combofield1.Enabled = True
                txtCSearch.Enabled = True
                combofield1.Locked = False
                txtCSearch.Locked = False
            End If
        End If
    End If
End If
End Sub

Private Sub cmdCancel_Click()
    prompt$ = "Are you sure you want to cancel the transaction?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Cancel")
    If reply = vbYes Then
        CTENT = False
        Call CLEAR_TEXT
        Call LOCKED_TEXT
        ProductList.Enabled = True
        ProductList.Refresh
        ProductList.ListItems.Clear
        cmdPAdd.Enabled = True
        cmdPAdd.Caption = "&ADD"
        cmdPEdit.Caption = "&EDIT"
        cmdPCancel.Enabled = False
        cmdPDelete.Enabled = True
    Else
    End If
End Sub

Private Sub cmdCCancel_Click()
    prompt$ = "Are you sure you want to cancel the transaction?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Contacts - Cancel Record")
    If reply = vbYes Then
        CTENT = False
        Call CLEAR_TEXT
        Call LOCKED_TEXT
        ContactList.Enabled = True
        ContactList.Refresh
        ContactList.ListItems.Clear
        combofield1.Locked = False
        txtCSearch.Locked = False
        cmdCAdd.Caption = "&ADD"
        cmdCEdit.Caption = "&EDIT"
        cmdCAdd.Enabled = True
        cmdCCancel.Enabled = False
        cmdCDelete.Enabled = True
        cmdCEdit.Enabled = True
        cmdCNew.Enabled = True
        cmdCSearch.Enabled = True
        cmdCView.Enabled = True
    Else
    End If
End Sub

Private Sub cmdCDelete_Click()
If txtContactID.Text = "" Then
    MsgBox "No record to delete!", vbInformation, "Contacts - Delete Record"
Else
    prompt$ = "Are you sure you want to delete this record?"
    reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Contacts - Delete Record")
    If reply = vbOK Then
        Adodc1.RecordSource = "Select * from Contacts Where ContactID like '" & txtContactID.Text & "'"
        Adodc1.Recordset.Delete
        Adodc1.Recordset.Update
        Adodc1.Refresh
        CLEAR_TEXT
        MsgBox "Record was successfully deleted!", vbInformation, "Contacts - Delete Record"
        ContactList.Enabled = False
    End If
End If
End Sub

Private Sub cmdCEdit_Click()
If txtContactID.Text = "" Then
    MsgBox "No record to modify!", vbInformation, "Contacts - Edit Record"
Else
    If cmdCEdit.Caption = "&EDIT" Then
        prompt$ = "Are you sure you want to edit a record?"
        reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Contacts - Edit Record")
        If reply = vbOK Then
            Call UNLOCKED_TEXT
            ContactList.Enabled = False
            txtContactID.Enabled = False
            cmdCAdd.Enabled = False
            cmdCCancel.Enabled = True
            cmdCDelete.Enabled = False
            cmdCNew.Enabled = False
            cmdCSearch.Enabled = False
            cmdCView.Enabled = False
            combofield1.Locked = True
            txtCSearch.Locked = True
            cmdCEdit.Caption = "&UPDATE"
        End If
    Else
        cmdCEdit.Caption = "&EDIT"
        If txtName.Text = "" Then
            MsgBox "All field must have a data!", vbInformation, "Contacts - Edit Record"
            cmdCEdit.Caption = "&UPDATE"
        ElseIf txtAddress.Text = "" Then
            MsgBox "All field must have a data!", vbInformation, "Contacts - Edit Record"
            cmdCEdit.Caption = "&UPDATE"
        ElseIf txtPhone.Text = "" Then
            MsgBox "All field must have a data!", vbInformation, "Contacts - Edit Record"
            cmdCEdit.Caption = "&UPDATE"
        ElseIf txtCel.Text = "" Then
            MsgBox "All field must have a data!", vbInformation, "Contacts - Edit Record"
            cmdCEdit.Caption = "&UPDATE"
        ElseIf txtEmail.Text = "" Then
            MsgBox "All field must have a data!", vbInformation, "Contacts - Edit Record"
            cmdCEdit.Caption = "&UPDATE"
        Else
            Adodc1.RecordSource = "Select * from Contacts Where ContactID like '" & txtContactID.Text & "'"
            Call Adodc1.Refresh
            Adodc1.Recordset.Fields("Name") = txtName.Text
            Adodc1.Recordset.Fields("Address") = txtAddress.Text
            Adodc1.Recordset.Fields("PhoneNo") = txtPhone.Text
            Adodc1.Recordset.Fields("CelNo") = txtCel.Text
            Adodc1.Recordset.Fields("Email") = txtEmail.Text
            Adodc1.Recordset.Update
            Adodc1.Recordset.MoveNext
            Adodc1.Refresh
            Adodc1.Refresh
            MsgBox "Record was successfully updated!", vbInformation, "Contacts - Edit Record"
            Adodc1.Refresh
            TRANSFER_TEXT
            LOCKED_TEXT
            CLEAR_TEXT
            LISTVIEW_CONTENT
            ContactList.Enabled = True
            txtContactID.Enabled = True
            cmdCAdd.Enabled = True
            cmdCCancel.Enabled = False
            cmdCDelete.Enabled = True
            cmdCNew.Enabled = True
            cmdCSearch.Enabled = True
            cmdCView.Enabled = True
            combofield1.Locked = False
            txtCSearch.Locked = False
        End If
    End If
End If
End Sub

Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub cmdCNew_Click()
    txtCSearch.Text = ""
    Adodc1.RecordSource = "Select * from Contacts Where ContactID like '" & txtCSearch.Text & "'"
    Call Adodc1.Refresh
    Call CLEAR_TEXT
    Call LOCKED_TEXT
End Sub

Private Sub cmdContacts_Click()
    rptContacts.Show
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdCSearch_Click()
If txtCSearch.Text = "" Or combofield1.Text = "" Then
    MsgBox "Please provide a specific field of record that you want to search!", vbCritical, "Contacts - Search Record"
    txtCSearch.Text = ""
    combofield1.Text = ""
Else
    ContactList.Enabled = True
    Select Case combofield1.ListIndex
    Case 0
        Adodc1.RecordSource = "Select * from Contacts Where ContactID like '" & txtCSearch.Text & "%'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Contacts - Search Record"
            ContactList.Enabled = False
        Else
            TRANSFER_TEXT
            LISTVIEW_CONTENT
        End If
    
    Case 1
        Adodc1.RecordSource = "Select * from Contacts Where Name like '" & txtCSearch.Text & "%'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Contacts - Search Record"
            ContactList.Enabled = False
        Else
            TRANSFER_TEXT
            LISTVIEW_CONTENT
        End If

    Case 2
        Adodc1.RecordSource = "Select * from Contacts Where Address like '" & txtCSearch.Text & "%'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Contacts - Search Record"
            ContactList.Enabled = False
        Else
            TRANSFER_TEXT
            LISTVIEW_CONTENT
        End If
    
    Case 3
        Adodc1.RecordSource = "Select * from Contacts Where PhoneNo like '" & txtCSearch.Text & "%'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Contacts - Search Record"
            ContactList.Enabled = False
        Else
            TRANSFER_TEXT
            LISTVIEW_CONTENT
        End If

    Case 4
        Adodc1.RecordSource = "Select * from Contacts Where CelNo like '" & txtCSearch.Text & "%'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Contacts - Search Record"
            ContactList.Enabled = False
        Else
            TRANSFER_TEXT
            LISTVIEW_CONTENT
        End If
    
    Case 5
        Adodc1.RecordSource = "Select * from Contacts Where Email like '" & txtCSearch.Text & "%'"
        Call Adodc1.Refresh
        If Adodc1.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Contacts - Search Record"
            ContactList.Enabled = False
        Else
            TRANSFER_TEXT
            LISTVIEW_CONTENT
        End If
    
    End Select
End If
End Sub

Private Sub cmdCView_Click()
    frmViewContacts.Show
End Sub

Private Sub cmdEmployeeLogin_Click()
    rptEmployeeLogin.Show
End Sub

Private Sub cmdPAdd_Click()
If cmdPAdd.Caption = "&ADD" Then
    prompt$ = "Do you want to add a record?"
    reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Products - Add Record")
    If reply = vbOK Then
        Call UNLOCKED_TEXT
        Call CLEAR_TEXT
        ProductList.Enabled = False
        txtTotalPrice.Enabled = False
        cmdPCancel.Enabled = True
        cmdPDelete.Enabled = False
        cmdPEdit.Enabled = False
        cmdPNew.Enabled = False
        cmdPSearch.Enabled = False
        cmdPView.Enabled = False
        combofield2.Locked = True
        txtPSearch.Locked = True
        For i = 1 To frmViewProducts.ProductList.ListItems.Count
           a(i) = Val(frmViewProducts.ProductList.ListItems.Item(i))
        Next
        a(i - 1) = a(i - 1) + 1
        txtProductID.Text = Str(a(i - 1))
        cmdPAdd.Caption = "&SAVE"
    End If
Else
    Adodc3.RecordSource = "select * from Products where ProductID like '" & txtProductID.Text & "'"
    Adodc3.Refresh
    If Adodc3.Recordset.EOF Then
        If txtProductName.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Products - Add Record"
            cmdPAdd.Caption = "&SAVE"
        ElseIf txtUnitPrice.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Products - Add Record"
            cmdPAdd.Caption = "&SAVE"
        ElseIf txtQuantity.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Products - Add Record"
            cmdPAdd.Caption = "&SAVE"
        ElseIf txtTotalPrice.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Products - Add Record"
            cmdPAdd.Caption = "&SAVE"
        ElseIf txtDate.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Products - Add Record"
            cmdPAdd.Caption = "&SAVE"
        ElseIf txtDescription.Text = "" Then
            MsgBox "All field must have a data", vbInformation, "Products - Add Record"
            cmdPAdd.Caption = "&SAVE"
        Else
            Adodc3.RecordSource = "Select * from Products where ProductName like '" & txtProductName.Text & "'"
            Call Adodc3.Refresh
            Call Adodc3.Refresh
            If (DateValue(txtDate.Text) > Date) Then
                MsgBox "Product Purchased must be Up-to-Date!!!", vbCritical, "INVALID DATE PURCHASED"
            Else
                If Adodc3.Recordset.EOF Then
                    Adodc3.Recordset.AddNew
                    Adodc3.Recordset.Fields("ProductID") = txtProductID.Text
                    Adodc3.Recordset.Fields("ProductName") = txtProductName.Text
                    Adodc3.Recordset.Fields("UnitPrice") = txtUnitPrice.Text
                    Adodc3.Recordset.Fields("Stocks") = txtQuantity.Text
                    Adodc3.Recordset.Fields("TotalPrice") = txtTotalPrice.Text
                    Adodc3.Recordset.Fields("Date") = txtDate.Text
                    Adodc3.Recordset.Fields("Description") = txtDescription.Text
                    Adodc3.Recordset.Update
                    Adodc3.Recordset.MoveNext
                    Adodc3.Refresh
                    MsgBox "Record was successfully save!", vbInformation, "Products - Add Record"
                    cmdPAdd.Caption = "&ADD"
                    TRANSFER_TEXT2
                    LOCKED_TEXT
                    CLEAR_TEXT
                    LISTVIEW_CONTENT2
                    ProductList.Enabled = True
                    txtTotalPrice.Enabled = True
                    cmdPCancel.Enabled = False
                    cmdPDelete.Enabled = True
                    cmdPEdit.Enabled = True
                    cmdPNew.Enabled = True
                    cmdPSearch.Enabled = True
                    cmdPView.Enabled = True
                    combofield2.Locked = False
                    txtPSearch.Locked = False
                End If
            End If
        End If
    End If
End If
End Sub

Private Sub cmdPCancel_Click()
    prompt$ = "Are you sure you want to cancel the transaction?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Products - Cancel Record")
    If reply = vbYes Then
        CTENT = False
        Call CLEAR_TEXT
        Call LOCKED_TEXT
        ProductList.Enabled = True
        ProductList.Refresh
        ProductList.ListItems.Clear
        combofield2.Locked = False
        txtPSearch.Locked = False
        cmdPAdd.Caption = "&ADD"
        cmdPEdit.Caption = "&EDIT"
        cmdPAdd.Enabled = True
        cmdPCancel.Enabled = False
        cmdPDelete.Enabled = True
        cmdPEdit.Enabled = True
        cmdPNew.Enabled = True
        cmdPSearch.Enabled = True
        cmdPView.Enabled = True
    Else
    End If
End Sub

Private Sub cmdPDelete_Click()
If txtProductID.Text = "" Then
    MsgBox "No record to delete!", vbInformation, "Products - Delete Record"
Else
    prompt$ = "Are you sure you want to delete this record?"
    reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Products - Delete Record")
    If reply = vbOK Then
        Adodc3.RecordSource = "Select * from Products Where ProductID like '" & txtProductID.Text & "'"
        Adodc3.Recordset.Delete
        Adodc3.Recordset.Update
        Adodc3.Refresh
        CLEAR_TEXT
        MsgBox "Record was successfully deleted!", vbInformation, "Products - Delete Record"
        ProductList.Enabled = False
    End If
End If
End Sub

Private Sub cmdPEdit_Click()
If txtProductID.Text = "" Then
    MsgBox "No record to modify!", vbInformation, "Products - Edit Record"
Else
    If cmdPEdit.Caption = "&EDIT" Then
        prompt$ = "Are you sure you want to edit a record?"
        reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Contacts - Edit Record")
        If reply = vbOK Then
            Call UNLOCKED_TEXT
            ProductList.Enabled = False
            txtTotalPrice.Enabled = False
            txtProductID.Enabled = False
            cmdPAdd.Enabled = False
            cmdPCancel.Enabled = True
            cmdPDelete.Enabled = False
            cmdPNew.Enabled = False
            cmdPSearch.Enabled = False
            cmdPView.Enabled = False
            combofield2.Locked = True
            txtPSearch.Locked = True
            cmdPEdit.Caption = "&UPDATE"
        End If
    Else
        If txtProductName.Text = "" Then
            MsgBox "All field must have a data!", vbInformation, "Products - Edit Record"
            cmdPEdit.Caption = "&UPDATE"
        ElseIf txtUnitPrice.Text = "" Then
            MsgBox "All field must have a record!", vbInformation, "Products - Edit Record"
            cmdPEdit.Caption = "&UPDATE"
        ElseIf txtQuantity.Text = "" Then
            MsgBox "All field must have a record!", vbInformation, "Products - Edit Record"
            cmdPEdit.Caption = "&UPDATE"
        ElseIf txtTotalPrice.Text = "" Then
            MsgBox "All field must have a record!", vbInformation, "Products - Edit Record"
            cmdPEdit.Caption = "&UPDATE"
        ElseIf txtDate.Text = "" Then
            MsgBox "All field must have a record!", vbInformation, "Products - Edit Record"
            cmdPEdit.Caption = "&UPDATE"
        ElseIf txtDescription.Text = "" Then
            MsgBox "All field must have a record!", vbInformation, "Products - Edit Record"
            cmdPEdit.Caption = "&UPDATE"
        Else
            Adodc3.RecordSource = "Select * from Products Where ProductID like '" & txtProductID.Text & "'"
            Call Adodc3.Refresh
            If (DateValue(txtDate.Text) > Date) Then
                MsgBox "Product Purchased must be Up-to-Date!!!", vbCritical, "INVALID DATE PURCHASED"
            Else
                Adodc3.Recordset.Fields("ProductName") = txtProductName.Text
                Adodc3.Recordset.Fields("UnitPrice") = txtUnitPrice.Text
                Adodc3.Recordset.Fields("Stocks") = txtQuantity.Text
                Adodc3.Recordset.Fields("TotalPrice") = txtTotalPrice.Text
                Adodc3.Recordset.Fields("Date") = txtDate.Text
                Adodc3.Recordset.Fields("Description") = txtDescription.Text
                Adodc3.Recordset.Update
                Adodc3.Recordset.MoveNext
                Adodc3.Refresh
                Adodc3.Refresh
                MsgBox "Record was successfully updated!", vbInformation, "Products - Edit Record"
                Adodc3.Refresh
                cmdPEdit.Caption = "&EDIT"
                TRANSFER_TEXT2
                CLEAR_TEXT
                LOCKED_TEXT
                LISTVIEW_CONTENT2
                ProductList.Enabled = True
                txtTotalPrice.Enabled = True
                txtProductID.Enabled = True
                cmdPAdd.Enabled = True
                cmdPCancel.Enabled = False
                cmdPDelete.Enabled = True
                cmdPNew.Enabled = True
                cmdPSearch.Enabled = True
                cmdPView.Enabled = True
                combofield2.Locked = False
                txtPSearch.Locked = False
            End If
        End If
    End If
End If
End Sub

Private Sub cmdPNew_Click()
    txtPSearch.Text = ""
    Adodc3.RecordSource = "Select * from Products Where ProductID like '" & txtPSearch.Text & "'"
    Call Adodc3.Refresh
    Call CLEAR_TEXT
    Call LOCKED_TEXT
End Sub

Private Sub CmdProducts_Click()
    rptProducts.Show
End Sub

Private Sub cmdPSearch_Click()
If txtPSearch.Text = "" Or combofield2.Text = "" Then
    MsgBox "Please provide a specific field of record that you want to search!", vbCritical, "Products - Search Record"
    txtPSearch.Text = ""
    combofield2.Text = ""
Else
    ProductList.Enabled = True
    Select Case combofield2.ListIndex
    Case 0
        Adodc3.RecordSource = "Select * from Products Where ProductID like '" & txtPSearch.Text & "%'"
        Call Adodc3.Refresh
        If Adodc3.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Products - Search Record"
            ProductList.Enabled = False
        Else
            TRANSFER_TEXT2
            LISTVIEW_CONTENT2
        End If
    
    Case 1
        Adodc3.RecordSource = "Select * from Products Where ProductName like '" & txtPSearch.Text & "%'"
        Call Adodc3.Refresh
        If Adodc3.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Products - Search Record"
            ProductList.Enabled = False
        Else
            TRANSFER_TEXT2
            LISTVIEW_CONTENT2
        End If

    Case 2
        Adodc3.RecordSource = "Select * from Products Where UnitPrice like '" & txtPSearch.Text & "%'"
        Call Adodc3.Refresh
        If Adodc3.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Products - Search Record"
            ProductList.Enabled = False
        Else
            TRANSFER_TEXT2
            LISTVIEW_CONTENT2
        End If
    
    Case 3
        Adodc3.RecordSource = "Select * from Products Where Stocks like '" & txtPSearch.Text & "%'"
        Call Adodc3.Refresh
        If Adodc3.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Products - Search Record"
            ProductList.Enabled = False
        Else
            TRANSFER_TEXT2
            LISTVIEW_CONTENT2
        End If

    Case 4
        Adodc3.RecordSource = "Select * from Products Where TotalPrice like '" & txtPSearch.Text & "%'"
        Call Adodc3.Refresh
        If Adodc3.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Products - Search Record"
            ProductList.Enabled = False
        Else
            TRANSFER_TEXT2
            LISTVIEW_CONTENT2
        End If
    
    Case 5
        Adodc3.RecordSource = "Select * from Products Where Date like '" & txtPSearch.Text & "%'"
        Call Adodc3.Refresh
        If Adodc3.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Products - Search Record"
            ProductList.Enabled = False
        Else
            TRANSFER_TEXT2
            LISTVIEW_CONTENT2
        End If
        
    Case 6
        Adodc3.RecordSource = "Select * from Products Where Description like '" & txtPSearch.Text & "%'"
        Call Adodc3.Refresh
        If Adodc3.Recordset.EOF Then
            MsgBox "No record found!", vbInformation, "Products - Search Record"
            ProductList.Enabled = False
        Else
            TRANSFER_TEXT2
            LISTVIEW_CONTENT2
        End If
       
    End Select
End If
End Sub

Private Sub cmdPView_Click()
    frmViewProducts.Show
End Sub

Sub CLEAR_TEXT()
    txtContactID.Text = ""
    txtName.Text = ""
    txtAddress.Text = ""
    txtPhone.Text = ""
    txtCel.Text = ""
    txtEmail.Text = ""
    txtProductID.Text = ""
    txtProductName.Text = ""
    txtUnitPrice.Text = ""
    txtQuantity.Text = ""
    txtTotalPrice.Text = ""
    txtDate.Text = ""
    txtDescription.Text = ""
    combofield1.Text = ""
    combofield2.Text = ""
    txtCSearch.Text = ""
    txtPSearch.Text = ""
    ContactList.ListItems.Clear
    ProductList.ListItems.Clear
End Sub

Sub LOCKED_TEXT()
    txtName.Locked = True
    txtAddress.Locked = True
    txtPhone.Locked = True
    txtCel.Locked = True
    txtEmail.Locked = True
    txtProductName.Locked = True
    txtUnitPrice.Locked = True
    txtQuantity.Locked = True
    txtTotalPrice.Locked = True
    txtDate.Locked = True
    txtDescription.Locked = True
End Sub

Sub UNLOCKED_TEXT()
    txtName.Locked = False
    txtAddress.Locked = False
    txtPhone.Locked = False
    txtCel.Locked = False
    txtEmail.Locked = False
    txtProductName.Locked = False
    txtUnitPrice.Locked = False
    txtQuantity.Locked = False
    txtTotalPrice.Locked = False
    txtDate.Locked = False
    txtDescription.Locked = False
End Sub

Sub TRANSFER_TEXT()
If Adodc1.Recordset.EOF <> True Then
    txtContactID.Text = Adodc1.Recordset.Fields("ContactID")
    txtName.Text = Adodc1.Recordset.Fields("Name")
    txtAddress.Text = Adodc1.Recordset.Fields("Address")
    txtPhone.Text = Adodc1.Recordset.Fields("PhoneNo")
    txtCel.Text = Adodc1.Recordset.Fields("CelNo")
    txtEmail.Text = Adodc1.Recordset.Fields("Email")
Else
    MsgBox "NO RECORD FOUND!", vbInformation, "Contacts - Search Record"
End If
End Sub

Sub TRANSFER_TEXT2()
If Adodc3.Recordset.EOF <> True Then
    txtProductID.Text = Adodc3.Recordset.Fields("ProductID")
    txtProductName.Text = Adodc3.Recordset.Fields("ProductName")
    txtUnitPrice.Text = Adodc3.Recordset.Fields("UnitPrice")
    txtQuantity.Text = Adodc3.Recordset.Fields("Stocks")
    txtTotalPrice.Text = Adodc3.Recordset.Fields("TotalPrice")
    txtDate.Text = Adodc3.Recordset.Fields("Date")
    txtDescription.Text = Adodc3.Recordset.Fields("Description")
Else
    MsgBox "NO RECORD FOUND!", vbInformation, "Products - Search Record"
End If
End Sub

Private Sub cmdSales_Click()
    rptSales.Show
End Sub

Private Sub cmdTransactions_Click()
    rptTransactions.Show
End Sub

Private Sub cmdUserLogin_Click()
    rptCashierLogin.Show
End Sub

Private Sub Form_Load()
    Call CLEAR_TEXT
    Call LOCKED_TEXT
    Adodc1.RecordSource = "Select * from Contacts Where ContactID like '" & txtCSearch.Text & "'"
    Call Adodc1.Refresh
    Adodc2.RecordSource = "Select * from EmployeeSecurity Where Password like '" & frmEmployeeLogin.txtPass.Text & "'"
    Call Adodc2.Refresh
    txtEmpLogin.Text = Adodc2.Recordset.Fields("EmpName")
    Adodc3.RecordSource = "Select * from Products Where ProductID like '" & txtPSearch.Text & "'"
    Call Adodc3.Refresh
    ContactList.Enabled = False
    ProductList.Enabled = False
End Sub

Sub LISTVIEW_CONTENT()
    ContactList.ListItems.Clear
    If Adodc1.Recordset.EOF = False Then
        Do While Adodc1.Recordset.EOF <> True
            Set lstitem = ContactList.ListItems.Add(, , Adodc1.Recordset.Fields("ContactID"))
                lstitem.SubItems(1) = Adodc1.Recordset.Fields("Name")
                lstitem.SubItems(2) = Adodc1.Recordset.Fields("Address")
                lstitem.SubItems(3) = Adodc1.Recordset.Fields("PhoneNo")
                lstitem.SubItems(4) = Adodc1.Recordset.Fields("CelNo")
                lstitem.SubItems(5) = Adodc1.Recordset.Fields("Email")
                Adodc1.Recordset.Update
                Adodc1.Recordset.MoveNext 'goto next record
        Loop
        CENT1 = True
    Else
    MsgBox "LookUp Table has no Data to display", vbInformation
    End If
End Sub

Sub LISTVIEW_CONTENT2()
    ProductList.ListItems.Clear
    If Adodc3.Recordset.EOF = False Then
        Do While Adodc3.Recordset.EOF <> True
                Set lstitem = ProductList.ListItems.Add(, , Adodc3.Recordset.Fields("ProductID"))
                lstitem.SubItems(1) = Adodc3.Recordset.Fields("ProductName")
                lstitem.SubItems(2) = Adodc3.Recordset.Fields("UnitPrice")
                lstitem.SubItems(3) = Adodc3.Recordset.Fields("Stocks")
                lstitem.SubItems(4) = Adodc3.Recordset.Fields("TotalPrice")
                lstitem.SubItems(5) = Adodc3.Recordset.Fields("Date")
                lstitem.SubItems(6) = Adodc3.Recordset.Fields("Description")
                Adodc3.Recordset.Update
                Adodc3.Recordset.MoveNext 'goto next record
        Loop
        CENT2 = True
    Else
    MsgBox "LookUp Table has no Data to display", vbInformation
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    prompt$ = "Are you sure you want to LOG-OUT?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "C. S. Enriquez Mechanical Work Shop Inventory System")
        If reply = vbYes Then
            Adodc2.RecordSource = "Select * from Employeelogin"
            Call Adodc2.Refresh
            Adodc2.Recordset.MoveLast
            Adodc2.Recordset.Fields("Logout") = Time
            Adodc2.Recordset.Update
            End
        Else
            Cancel = True
        End If
End Sub

Private Sub ContactList_Click()
If CENT1 = False Then
    SN1 = ContactList.SelectedItem
    Adodc1.RecordSource = "Select * from Contacts Where ContactID like '" & SN1 & "'"
    Adodc1.Refresh
    TRANSFER_TEXT
End If
End Sub

Private Sub ProductList_Click()
If CENT2 = True Then
    SN2 = ProductList.SelectedItem
    Adodc3.RecordSource = "Select * from Products Where ProductID like '" & SN2 & "'"
    Adodc3.Refresh
    TRANSFER_TEXT2
End If
End Sub

Private Sub Text1_Change()
    Text1.Text = txtLogInNumber.Text
End Sub

Private Sub Timer1_Timer()
    st1.Panels(2).Text = "Time: " & Format(Time, "hh:mm:ss AM/PM")
    st1.Panels(3).Text = "Date: " & Date
End Sub

Private Sub txtCel_Change()
    If IsNumeric(txtCel.Text) Then
    Else
      '  MsgBox "Please enter a numeric student number."
        txtCel.Text = ""
    End If
End Sub

Private Sub txtContactID_Change()
    If IsNumeric(txtContactID.Text) Then
    Else
      '  MsgBox "Please enter a numeric Contact ID."
        txtContactID.Text = ""
    End If
End Sub

Private Sub txtPhone_Change()
    If IsNumeric(txtPhone.Text) Then
    Else
      '  MsgBox "Please enter a numeric phone number."
        txtPhone.Text = ""
    End If
End Sub

Private Sub txtProductID_Change()
    If IsNumeric(txtProductID.Text) Then
    Else
      '  MsgBox "Please enter a numeric Product ID."
      txtProductID.Text = ""
    End If
End Sub

Private Sub txtQuantity_Change()
    Dim dig$, i, digi$, digits$
    If txtQuantity.Text <> "" Then
        dig$ = Mid(txtQuantity.Text, Len(txtQuantity.Text), 1)
        If Asc(dig$) < 46 Or Asc(dig$) > 57 Then
            For i = 1 To Len(txtQuantity.Text) - 1
              digi$ = Mid(txtQuantity.Text, i, 1)
              digits$ = digits$ & digi$
            Next i
            txtQuantity.Text = digits$
            txtQuantity.SelStart = Len(txtQuantity.Text)
        End If
    End If
    txtTotalPrice.Text = Val(txtUnitPrice.Text) * Val(txtQuantity.Text)
End Sub

Private Sub txtTotalPrice_Change()
    Dim dig$, i, digi$, digits$
    If txtUnitPrice.Text <> "" Then
        dig$ = Mid(txtUnitPrice.Text, Len(txtUnitPrice.Text), 1)
        If Asc(dig$) < 46 Or Asc(dig$) > 57 Then
            For i = 1 To Len(txtUnitPrice.Text) - 1
                digi$ = Mid(txtUnitPrice.Text, i, 1)
                digits$ = digits$ & digi$
            Next i
            txtUnitPrice.Text = digits$
            txtUnitPrice.SelStart = Len(txtUnitPrice.Text)
        End If
    End If
    txtTotalPrice.Text = Val(txtUnitPrice.Text) * Val(txtQuantity.Text)
End Sub

Private Sub txtUnitPrice_Change()
    Dim dig$, i, digi$, digits$
    If txtUnitPrice.Text <> "" Then
        dig$ = Mid(txtUnitPrice.Text, Len(txtUnitPrice.Text), 1)
        If Asc(dig$) < 46 Or Asc(dig$) > 57 Then
            For i = 1 To Len(txtUnitPrice.Text) - 1
                digi$ = Mid(txtUnitPrice.Text, i, 1)
                digits$ = digits$ & digi$
            Next i
            txtUnitPrice.Text = digits$
            txtUnitPrice.SelStart = Len(txtUnitPrice.Text)
        End If
    End If
    txtTotalPrice.Text = Val(txtUnitPrice.Text) * Val(txtQuantity.Text)
End Sub
