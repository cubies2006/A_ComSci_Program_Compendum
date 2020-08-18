VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmInventory 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cashier Inventory"
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11910
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   Picture         =   "frmInventory.frx":0000
   ScaleHeight     =   8520
   ScaleWidth      =   11910
   StartUpPosition =   1  'CenterOwner
   WindowState     =   2  'Maximized
   Begin MSComctlLib.StatusBar st2 
      Align           =   2  'Align Bottom
      Height          =   240
      Left            =   0
      TabIndex        =   16
      Top             =   8280
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
            Text            =   "C. S. Enriquez Mechanical Work Shop Inventory System (Cashier)"
            TextSave        =   "C. S. Enriquez Mechanical Work Shop Inventory System (Cashier)"
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
            Object.Width           =   4057
            MinWidth        =   4057
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
   Begin VB.TextBox txtCashierLogin 
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
      Left            =   9480
      Locked          =   -1  'True
      TabIndex        =   26
      Top             =   1560
      Width           =   2055
   End
   Begin VB.TextBox txtTotalAmount 
      Alignment       =   1  'Right Justify
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   9480
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   2040
      Width           =   2055
   End
   Begin VB.TextBox txtChange 
      Alignment       =   1  'Right Justify
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   9480
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   3000
      Width           =   2055
   End
   Begin VB.TextBox txtCash 
      Alignment       =   1  'Right Justify
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   9480
      TabIndex        =   9
      ToolTipText     =   "Enter the Cash Amount you need to pay here"
      Top             =   2520
      Width           =   2055
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   375
      Left            =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   2295
      _ExtentX        =   4048
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
      Connect         =   $"frmInventory.frx":A207
      OLEDBString     =   $"frmInventory.frx":A29D
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   """Select * from cashierlogin"""
      Caption         =   "Cashier Security"
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
      BackColor       =   &H80000003&
      Caption         =   "Item Entry"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2295
      Left            =   0
      TabIndex        =   12
      Top             =   1320
      Width           =   7215
      Begin VB.Frame Frame5 
         BackColor       =   &H8000000D&
         Height          =   1095
         Left            =   2280
         TabIndex        =   21
         Top             =   1080
         Width           =   4815
         Begin VB.CommandButton cmdViewProducts 
            Caption         =   "&VIEWPRODUCTS"
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
            Left            =   2520
            TabIndex        =   8
            ToolTipText     =   "View all products"
            Top             =   600
            Width           =   2055
         End
         Begin VB.TextBox txtQuantity 
            Height          =   285
            Left            =   1320
            TabIndex        =   6
            ToolTipText     =   "Enter the Quantity you wish to purchase"
            Top             =   480
            Width           =   975
         End
         Begin VB.CommandButton cmdReturnItem 
            Caption         =   "&RETURN"
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
            Left            =   3360
            TabIndex        =   28
            ToolTipText     =   "Delete the Selected Product"
            Top             =   240
            Width           =   1215
         End
         Begin VB.CommandButton cmdAddItem 
            Caption         =   "&ADD"
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
            Left            =   2520
            TabIndex        =   7
            ToolTipText     =   "Add the Selected Product"
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label5 
            BackColor       =   &H80000003&
            BackStyle       =   0  'Transparent
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
            ForeColor       =   &H8000000E&
            Height          =   285
            Left            =   240
            TabIndex        =   22
            Top             =   480
            Width           =   975
         End
      End
      Begin VB.TextBox txtUnitPrice 
         Height          =   285
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   4
         Top             =   1200
         Width           =   735
      End
      Begin VB.TextBox txtSupply 
         Height          =   285
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   5
         Top             =   1680
         Width           =   735
      End
      Begin VB.TextBox txtDescription 
         Height          =   285
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   3
         Top             =   720
         Width           =   5535
      End
      Begin VB.TextBox txtProductName 
         Height          =   285
         Left            =   4440
         Locked          =   -1  'True
         TabIndex        =   2
         Top             =   240
         Width           =   2535
      End
      Begin VB.TextBox txtProductID 
         Height          =   285
         Left            =   1440
         TabIndex        =   1
         ToolTipText     =   "Type the Product ID you wish to purchase here"
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label13 
         BackColor       =   &H80000003&
         BackStyle       =   0  'Transparent
         Caption         =   "Unit Price: "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   240
         TabIndex        =   20
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label Label12 
         BackColor       =   &H80000003&
         BackStyle       =   0  'Transparent
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
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   2880
         TabIndex        =   19
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label1 
         BackColor       =   &H80000003&
         BackStyle       =   0  'Transparent
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
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   240
         TabIndex        =   15
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label Label2 
         BackColor       =   &H80000003&
         BackStyle       =   0  'Transparent
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
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   720
         Width           =   1215
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackColor       =   &H80000003&
         BackStyle       =   0  'Transparent
         Caption         =   "Stocks:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   195
         Left            =   240
         TabIndex        =   13
         Top             =   1680
         Width           =   1080
         WordWrap        =   -1  'True
      End
   End
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   375
      Left            =   2280
      Top             =   0
      Visible         =   0   'False
      Width           =   1935
      _ExtentX        =   3413
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
      Connect         =   $"frmInventory.frx":A333
      OLEDBString     =   $"frmInventory.frx":A3C9
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
   Begin MSComctlLib.ListView lv1 
      Height          =   3300
      Left            =   1200
      TabIndex        =   29
      ToolTipText     =   "Double click to remove undesired item"
      Top             =   3720
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   5821
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      HotTracking     =   -1  'True
      HoverSelection  =   -1  'True
      _Version        =   393217
      SmallIcons      =   "ImageList1"
      ForeColor       =   -2147483640
      BackColor       =   -2147483629
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Book Antiqua"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   6
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Product ID"
         Object.Width           =   2117
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   1
         Text            =   "Product Name"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   2
         Text            =   "Product Description"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   3
         Text            =   "Qty"
         Object.Width           =   2293
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   4
         Text            =   "Unit Price"
         Object.Width           =   2293
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Text            =   "Subtotal Price"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "&LOG OUT"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   5880
      Picture         =   "frmInventory.frx":A45F
      Style           =   1  'Graphical
      TabIndex        =   0
      ToolTipText     =   "Exit the User Inventory System"
      Top             =   7200
      Width           =   1455
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "&SAVE"
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
      Height          =   975
      Left            =   4440
      Picture         =   "frmInventory.frx":B821
      Style           =   1  'Graphical
      TabIndex        =   30
      ToolTipText     =   "Save the Current Transaction"
      Top             =   7200
      Width           =   1455
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H80000008&
      BeginProperty Font 
         Name            =   "Nasalization"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   0
      TabIndex        =   17
      Top             =   0
      Width           =   11895
      Begin MSAdodcLib.Adodc Adodc5 
         Height          =   375
         Left            =   6480
         Top             =   0
         Visible         =   0   'False
         Width           =   1695
         _ExtentX        =   2990
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
         Connect         =   $"frmInventory.frx":B8F8
         OLEDBString     =   $"frmInventory.frx":B98E
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   """select * from sales"""
         Caption         =   "Sales"
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
      Begin MSAdodcLib.Adodc Adodc4 
         Height          =   375
         Left            =   4200
         Top             =   0
         Visible         =   0   'False
         Width           =   2295
         _ExtentX        =   4048
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
         Connect         =   $"frmInventory.frx":BA24
         OLEDBString     =   $"frmInventory.frx":BABA
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   """select * from transactions"""
         Caption         =   "Transactions"
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
      Begin VB.Timer Timer1 
         Interval        =   1000
         Left            =   8160
         Top             =   0
      End
      Begin VB.Image Image1 
         Height          =   1035
         Left            =   3240
         Picture         =   "frmInventory.frx":BB50
         Stretch         =   -1  'True
         Top             =   120
         Width           =   1365
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H80000008&
         Caption         =   "Inventory System"
         BeginProperty Font 
            Name            =   "Nasalization"
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
         TabIndex        =   18
         Top             =   480
         Width           =   3255
      End
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Total Amount:"
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
      Height          =   375
      Left            =   7680
      TabIndex        =   25
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Label Label7 
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
      Left            =   7680
      TabIndex        =   27
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Shape Shape6 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      Height          =   3300
      Left            =   1320
      Top             =   3840
      Width           =   9255
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Change:"
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
      Height          =   375
      Left            =   7680
      TabIndex        =   24
      Top             =   3000
      Width           =   1815
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "Cash On Hand:"
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
      Height          =   375
      Left            =   7680
      TabIndex        =   23
      Top             =   2520
      Width           =   1815
   End
End
Attribute VB_Name = "frmInventory"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim valtemp, tempcomp, comp As Long
Dim a(50), b(50), i As Integer

Private Sub cmdAddItem_Click()
Set itmFound = lv1.FindItem(txtProductID.Text)
valtemp = 0
If itmFound Is Nothing Then
    If tempcomp = 0 Then
        comp = (Val(txtQuantity.Text) * Val(Adodc3.Recordset.Fields("UnitPrice")))
    Else
        comp = (Val(txtQuantity.Text) * Val(Adodc3.Recordset.Fields("UnitPrice"))) - Val(tempcomp)
    End If
    Adodc3.RecordSource = "Select * from Products Where ProductID = '" & txtProductID.Text & "'"
    Adodc3.Recordset.Fields("Stocks") = Val(Adodc3.Recordset.Fields("Stocks")) - Val(txtQuantity.Text)
    Adodc3.Recordset.Update
    Set j = lv1.ListItems.Add(, , txtProductID.Text)
    j.SubItems(1) = txtProductName.Text
    j.SubItems(2) = txtDescription.Text
    j.SubItems(3) = txtQuantity.Text
    j.SubItems(4) = Adodc3.Recordset.Fields("UnitPrice")
    j.SubItems(5) = comp
    For i = 1 To lv1.ListItems.Count
        valtemp = Val(valtemp) + Val(lv1.ListItems.Item(i).SubItems(5))
        a(i) = Val(lv1.ListItems.Item(i).SubItems(3))
    Next
    txtTotalAmount.Text = Str(valtemp)
    txtProductID.Text = ""
    txtProductName.Text = ""
    txtDescription.Text = ""
    txtUnitPrice.Text = ""
    txtSupply.Text = ""
    txtQuantity.Text = ""
    txtProductID.SetFocus
    cmdAddItem.Enabled = False
    cmdReturnItem.Enabled = True
    cmdSave.Enabled = True
    lv1.Enabled = True
    Adodc3.RecordSource = "Select * from Products"
    Adodc3.Recordset.Fields("TotalPrice") = (Val(Adodc3.Recordset.Fields("Stocks")) * (Val(Adodc3.Recordset.Fields("UnitPrice"))))
    Adodc3.Recordset.Update
Else
    MsgBox "Product ID already exists in the list.", vbInformation, "C. S. Enriquez Mechanical Work Shop Inventory System"
    txtProductID.Text = ""
    txtProductName.Text = ""
    txtDescription.Text = ""
    txtUnitPrice.Text = ""
    txtSupply.Text = ""
    txtQuantity.Text = ""
End If
End Sub

Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub cmdNew_Click()
If txtCash.Text = "" Then
    MsgBox "Please pay first the amount of Php " & txtTotalAmount.Text & "!!!", vbInformation, "C. S. Enriquez Mechanical Work Shop Inventory System"
    txtCash.SetFocus
Exit Sub
End If
If txtChange.Text = "" Then
    Call txtCash_KeyDown(13, 0)
End If
End Sub

Private Sub cmdReturnItem_Click()
If lv1.SelectedItem Is Nothing Then
    MsgBox "No product to be returned!", vbCritical, "NO PRODUCT RETURN"
ElseIf lv1.SelectedItem.Index <> 0 Then
    prompt$ = "Are you sure you want to return this product?"
    reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Product Return")
    If reply = vbOK Then
        Adodc3.RecordSource = "Select * from Products where ProductID = '" & txtProductID.Text & "'"
        a(lv1.SelectedItem.Index) = lv1.SelectedItem.SubItems(3)
        Adodc3.Recordset.Fields("Stocks") = Val(Adodc3.Recordset.Fields("Stocks")) + a(lv1.SelectedItem.Index)
        Adodc3.Recordset.Fields("TotalPrice") = Val(Adodc3.Recordset.Fields("Stocks")) * Val(Adodc3.Recordset.Fields("UnitPrice"))
        Adodc3.Recordset.Update
        lv1.ListItems.Remove (lv1.SelectedItem.Index)
        valtemp = 0
        txtTotalAmount.Text = ""
        For i = 1 To lv1.ListItems.Count
            valtemp = Val(valtemp) + Val(lv1.ListItems.Item(i).SubItems(5))
        Next
        txtTotalAmount.Text = Str(valtemp)
        txtProductID.Text = ""
        txtProductName.Text = ""
        txtDescription.Text = ""
        txtUnitPrice.Text = ""
        txtSupply.Text = ""
        txtQuantity.Text = ""
        cmdAddItem.Enabled = False
        cmdReturnItem.Enabled = False
        MsgBox "Product was successfully returned!", vbInformation, "Product Return"
        If txtTotalAmount.Text = 0 Then
            txtTotalAmount.Text = ""
        End If
    End If
End If
End Sub

Private Sub cmdSave_Click()
    Call txtCash_KeyDown(13, 0)
End Sub

Private Sub cmdViewProducts_Click()
    frmViewProducts.Show
End Sub

Private Sub Form_Load()
    Adodc2.RecordSource = "Select * from Cashiersecurity Where Password = '" & frmCashierLogin.txtPass.Text & "'"
    Call Adodc2.Refresh
    Adodc3.RecordSource = "select * from Products"
    Call Adodc3.Refresh
    Adodc4.RecordSource = "Select * from Transactions"
    Call Adodc4.Refresh
    Adodc5.RecordSource = "Select * from Sales"
    Call Adodc5.Refresh
    txtCashierLogin.Text = Adodc2.Recordset.Fields("CashierName")
End Sub

Private Sub Form_Unload(Cancel As Integer)
    prompt$ = "Are you sure you want to LOG-OUT?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "C. S. Enriquez Mechanical Work Shop Inventory System")
        If reply = vbYes Then
            Adodc2.RecordSource = "Select * from cashierlogin"
            Call Adodc2.Refresh
            Adodc2.Recordset.MoveLast
            Adodc2.Recordset.Fields("Logout") = Time
            Adodc2.Recordset.Update
            For i = 1 To lv1.ListItems.Count
                Adodc3.RecordSource = "Select * from Products Where ProductID like '" & lv1.ListItems.Item(i) & "'"
                Call Adodc3.Refresh
                Adodc3.Recordset.Fields("Stocks") = Val(Adodc3.Recordset.Fields("Stocks")) + Val(lv1.ListItems.Item(i).SubItems(3))
                Adodc3.Recordset.Update
            Next
            End
        Else
            Cancel = True
        End If
End Sub

Private Sub lv1_Click()
If lv1.SelectedItem Is Nothing Then
    MsgBox "No record to return!", vbCritical, "NO RECORD"
Else
    SN1 = lv1.SelectedItem
    Adodc3.RecordSource = "Select * from Products Where ProductID like '" & SN1 & "'"
    Adodc3.Refresh
    TRANSFER_TEXT
    cmdReturnItem.Enabled = True
End If
End Sub

Sub TRANSFER_TEXT()
If Adodc3.Recordset.EOF <> True Then
    txtProductID.Text = Adodc3.Recordset.Fields("ProductID")
    txtProductName.Text = Adodc3.Recordset.Fields("ProductName")
    txtDescription.Text = Adodc3.Recordset.Fields("Description")
    txtSupply.Text = Adodc3.Recordset.Fields("Stocks")
Else
    MsgBox "NO RECORD FOUND!", vbInformation, "Products - Search Record"
End If
End Sub

Private Sub lv1_DblClick()
If lv1.SelectedItem Is Nothing Then
    MsgBox "No product to be returned!", vbCritical, "NO PRODUCT RETURN"
ElseIf lv1.SelectedItem.Index <> 0 Then
    prompt$ = "Are you sure you want to return this product?"
    reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "Product Return")
    If reply = vbOK Then
        Adodc3.RecordSource = "Select * from Products where ProductID = " '" & txtProductID.text & "'"
        a(lv1.SelectedItem.Index) = lv1.SelectedItem.SubItems(3)
        Adodc3.Recordset.Fields("Stocks") = Val(Adodc3.Recordset.Fields("Stocks")) + a(lv1.SelectedItem.Index)
        Adodc3.Recordset.Fields("TotalPrice") = Val(Adodc3.Recordset.Fields("Stocks")) * Val(Adodc3.Recordset.Fields("UnitPrice"))
        Adodc3.Recordset.Update
        lv1.ListItems.Remove (lv1.SelectedItem.Index)
        valtemp = 0
        txtTotalAmount.Text = ""
        For i = 1 To lv1.ListItems.Count
            valtemp = Val(valtemp) + Val(lv1.ListItems.Item(i).SubItems(5))
        Next
        txtTotalAmount.Text = Str(valtemp)
        txtProductID.Text = ""
        txtProductName.Text = ""
        txtDescription.Text = ""
        txtUnitPrice.Text = ""
        txtSupply.Text = ""
        txtQuantity.Text = ""
        cmdAddItem.Enabled = False
        MsgBox "Product was successfully returned!", vbInformation, "Product Return"
        If txtTotalAmount.Text = 0 Then
            txtTotalAmount.Text = ""
        End If
    End If
End If
End Sub

Private Sub txtCash_Change()
If IsNumeric(txtCash.Text) Then
Else
    ' MsgBox "Please enter a numeric cash amount."
    txtCash.Text = ""
End If
End Sub

Private Sub txtProductID_Change()
If IsNumeric(txtProductID.Text) Then
    If txtProductID.Text <> "" Then
        cmdClose.Enabled = False
        Adodc3.RecordSource = "select * from Products where ProductID like '" & txtProductID.Text & "'"
        Call Adodc3.Refresh
        If Adodc3.Recordset.RecordCount <> 0 Then
            txtProductID.Text = Adodc3.Recordset.Fields("ProductID")
            txtProductName.Text = Adodc3.Recordset.Fields("ProductName")
            txtDescription.Text = Adodc3.Recordset.Fields("Description")
            txtSupply.Text = Adodc3.Recordset.Fields("Stocks")
            txtUnitPrice.Text = Adodc3.Recordset.Fields("UnitPrice")
        Else
            txtProductName.Text = ""
            txtChange.Text = ""
            txtDescription.Text = ""
            txtSupply.Text = ""
            txtUnitPrice.Text = ""
        End If
    Else
        txtProductName.Text = ""
        txtChange.Text = ""
        txtSupply.Text = ""
        txtDescription.Text = ""
        txtUnitPrice.Text = ""
    End If
Else
    '  MsgBox "Please enter a numeric Product ID."
    txtProductID.Text = ""
    cmdClose.Enabled = False
End If
End Sub

Private Sub Timer1_Timer()
st2.Panels(2).Text = "Time: " & Format(Time, "hh:mm:ss AM/PM")
st2.Panels(3).Text = "Date: " & Date
End Sub

Private Sub txtQuantity_Change()
If IsNumeric(txtQuantity.Text) Then
    tempcomp = 0
    If txtQuantity.Text <> "" Then
        If Val(txtSupply.Text) <= 0 Then
            MsgBox "Insufficient stocks!!!", vbCritical, "INSUFFICIENT STOCKS"
            cmdAddItem.Enabled = False
            txtQuantity.Text = ""
        ElseIf Val(txtQuantity.Text) <= 0 Then
            MsgBox "Invalid Quantity!!!", vbCritical, "INVALID QUANTITY"
            cmdAddItem.Enabled = False
            txtQuantity.Text = ""
        ElseIf Val(txtQuantity.Text) > Val(txtSupply.Text) Then
            MsgBox "The Quantity Should Not be Greater Than the Available Stocks!", vbCritical, "INAPPROPRIATE QUANTITY"
            cmdAddItem.Enabled = False
        ElseIf Val(txtQuantity.Text) >= 1000 Then
            MsgBox "You Got a 10% discount with this Product!!!", vbInformation, "C. S. Enriquez Mechanical Work Shop Inventory System"
            tempcomp = Val(txtQuantity.Text) * Val(Adodc3.Recordset.Fields("UnitPrice") * (0.1))
            cmdAddItem.Enabled = True
            cmdReturnItem.Enabled = True
        Else
            cmdAddItem.Enabled = True
        End If
    End If
Else
    ' MsgBox "Please enter a numeric quantity."
    txtQuantity.Text = ""
    cmdAddItem.Enabled = False
End If
End Sub

Private Sub txtCash_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
    Case 13
        If txtCash.Text = "" Or Val(txtCash.Text) = 0 Then
            MsgBox "You Didn't Input a Valid Cash Amount Needed to Complete the Transaction!!!", vbCritical, "INVALID CASH AMOUNT"
        ElseIf txtTotalAmount.Text = "" Then
            MsgBox "You cannot save the transaction because the Total Amount is empty!!!", vbCritical, "NO TOTAL AMOUNT"
        ElseIf Val(txtCash.Text) < Val(txtTotalAmount.Text) Then
            MsgBox "Cash is smaller than the Total Amount!!!", vbCritical, "WRONG PAYMENT"
            txtCash.SetFocus
            txtChange.Text = ""
            Exit Sub
        Else
            prompt$ = "Are you sure you want to save this transaction?"
            reply = MsgBox(prompt$, vbOKCancel + vbQuestion, "C. S. Mechanical Work Shop Inventory System")
            If reply = vbOK Then
                txtChange.Text = Val(txtCash.Text) - Val(txtTotalAmount.Text)
                Adodc4.Recordset.AddNew
                Adodc4.Recordset.Fields("LoginNo") = frmCashierLogin.txtLogInNumber.Text
                Adodc4.Recordset.Fields("CashierName") = txtCashierLogin.Text
                Adodc4.Recordset.Fields("Date") = Date
                Adodc4.Recordset.Fields("TotalAmount") = Val(txtTotalAmount.Text)
                Adodc4.Recordset.Fields("Cash") = Val(txtCash.Text)
                Adodc4.Recordset.Fields("Change") = Val(txtChange.Text)
                Adodc4.Recordset.Update
                Adodc4.Recordset.MoveNext
                For i = 1 To lv1.ListItems.Count
                    Call Adodc4.Refresh
                    Adodc5.Recordset.AddNew
                    Adodc5.Recordset.Fields("ProductID") = lv1.ListItems.Item(i)
                    Adodc5.Recordset.Fields("ProductName") = lv1.ListItems.Item(i).SubItems(1)
                    Adodc5.Recordset.Fields("StocksPurchased") = lv1.ListItems.Item(i).SubItems(3)
                    Adodc5.Recordset.Fields("Subtotal") = Val(Adodc5.Recordset.Fields("StocksPurchased")) * lv1.ListItems.Item(i).SubItems(4)
                    Adodc5.Recordset.Fields("Date") = Date
                    Adodc5.Recordset.Fields("CashierName") = txtCashierLogin.Text
                    Adodc5.Recordset.Update
                    Adodc5.Recordset.MoveNext
                Next
                txtProductID.Text = ""
                txtDescription.Text = ""
                txtUnitPrice.Text = ""
                txtSupply.Text = ""
                txtDescription = ""
                txtQuantity.Text = ""
                MsgBox "Transaction Saved!!!", vbInformation, "C. S. Enriquez Mechanical Work Shop Inventory System"
                cmdSave.Enabled = False
                txtTotalAmount.Text = ""
                txtCash.Text = ""
                txtChange.Text = ""
                lv1.ListItems.Clear
                cmdClose.Enabled = True
            End If
        End If
End Select
End Sub
