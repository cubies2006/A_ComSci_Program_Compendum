VERSION 5.00
Begin VB.Form Deadlock 
   BackColor       =   &H00000000&
   Caption         =   "Deadlock"
   ClientHeight    =   6120
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6990
   BeginProperty Font 
      Name            =   "Nasalization"
      Size            =   9.75
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   6120
   ScaleWidth      =   6990
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdExit 
      Caption         =   "&QUIT"
      BeginProperty Font 
         Name            =   "Nasalization"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   20
      Top             =   5520
      Width           =   1215
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "&CLEAR"
      BeginProperty Font 
         Name            =   "Nasalization"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   19
      Top             =   5520
      Width           =   1215
   End
   Begin VB.TextBox txtTR 
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1920
      TabIndex        =   17
      Top             =   4680
      Width           =   615
   End
   Begin VB.CommandButton cmdExecute 
      Caption         =   "E&XECUTE"
      BeginProperty Font 
         Name            =   "Nasalization"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   18
      Top             =   5520
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000D&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3495
      Left            =   360
      TabIndex        =   0
      Top             =   960
      Width           =   6255
      Begin VB.TextBox txtMaxNeed 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   7
         Left            =   2400
         TabIndex        =   16
         Top             =   3000
         Width           =   975
      End
      Begin VB.TextBox txtMaxNeed 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   6
         Left            =   2400
         TabIndex        =   14
         Top             =   2640
         Width           =   975
      End
      Begin VB.TextBox txtMaxNeed 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   5
         Left            =   2400
         TabIndex        =   12
         Top             =   2280
         Width           =   975
      End
      Begin VB.TextBox txtMaxNeed 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   4
         Left            =   2400
         TabIndex        =   10
         Top             =   1920
         Width           =   975
      End
      Begin VB.TextBox txtAllocated 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   7
         Left            =   1080
         TabIndex        =   15
         Top             =   3000
         Width           =   855
      End
      Begin VB.TextBox txtAllocated 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   6
         Left            =   1080
         TabIndex        =   13
         Top             =   2640
         Width           =   855
      End
      Begin VB.TextBox txtAllocated 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   5
         Left            =   1080
         TabIndex        =   11
         Top             =   2280
         Width           =   855
      End
      Begin VB.TextBox txtAllocated 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   4
         Left            =   1080
         TabIndex        =   9
         Top             =   1920
         Width           =   855
      End
      Begin VB.TextBox txtMaxNeed 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   3
         Left            =   2400
         TabIndex        =   8
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox txtMaxNeed 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   2
         Left            =   2400
         TabIndex        =   6
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox txtMaxNeed 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   1
         Left            =   2400
         TabIndex        =   4
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox txtMaxNeed 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   0
         Left            =   2400
         TabIndex        =   2
         Top             =   480
         Width           =   975
      End
      Begin VB.TextBox txtAllocated 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   3
         Left            =   1080
         TabIndex        =   7
         Top             =   1560
         Width           =   855
      End
      Begin VB.TextBox txtAllocated 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   2
         Left            =   1080
         TabIndex        =   5
         Top             =   1200
         Width           =   855
      End
      Begin VB.TextBox txtAllocated 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   1
         Left            =   1080
         TabIndex        =   3
         Top             =   840
         Width           =   855
      End
      Begin VB.TextBox txtAllocated 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   0
         Left            =   1080
         TabIndex        =   1
         Top             =   480
         Width           =   855
      End
      Begin VB.Label lblNeed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   7
         Left            =   4080
         TabIndex        =   55
         Top             =   3000
         Width           =   45
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblNeed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   6
         Left            =   4080
         TabIndex        =   54
         Top             =   2640
         Width           =   45
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblNeed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   5
         Left            =   4080
         TabIndex        =   53
         Top             =   2280
         Width           =   45
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblNeed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   4
         Left            =   4080
         TabIndex        =   52
         Top             =   1920
         Width           =   45
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblAvailable 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   7
         Left            =   4560
         TabIndex        =   51
         Top             =   3000
         Width           =   1245
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblAvailable 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   6
         Left            =   4560
         TabIndex        =   50
         Top             =   2640
         Width           =   1245
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblAvailable 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   5
         Left            =   4560
         TabIndex        =   49
         Top             =   2280
         Width           =   1245
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblAvailable 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   4
         Left            =   4560
         TabIndex        =   48
         Top             =   1920
         Width           =   1245
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "8"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   240
         Left            =   225
         TabIndex        =   47
         Top             =   3000
         Width           =   525
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "7"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   240
         Left            =   240
         TabIndex        =   46
         Top             =   2640
         Width           =   525
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "6"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   240
         Left            =   225
         TabIndex        =   45
         Top             =   2280
         Width           =   525
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   240
         Left            =   225
         TabIndex        =   44
         Top             =   1920
         Width           =   525
         WordWrap        =   -1  'True
      End
      Begin VB.Label Availables 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "Available"
         BeginProperty Font 
            Name            =   "Zero Threes"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Left            =   4800
         TabIndex        =   38
         Top             =   120
         Width           =   1050
         WordWrap        =   -1  'True
      End
      Begin VB.Label Needs 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "Need"
         BeginProperty Font 
            Name            =   "Zero Threes"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Left            =   3840
         TabIndex        =   37
         Top             =   120
         Width           =   525
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblAvailable 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   3
         Left            =   4560
         TabIndex        =   36
         Top             =   1560
         Width           =   1245
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblAvailable 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   2
         Left            =   4560
         TabIndex        =   35
         Top             =   1200
         Width           =   1245
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblAvailable 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   1
         Left            =   4560
         TabIndex        =   34
         Top             =   840
         Width           =   1245
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblAvailable 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   0
         Left            =   4560
         TabIndex        =   33
         Top             =   480
         Width           =   1245
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblNeed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   3
         Left            =   4080
         TabIndex        =   31
         Top             =   1560
         Width           =   45
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblNeed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   2
         Left            =   4080
         TabIndex        =   30
         Top             =   1200
         Width           =   45
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblNeed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   1
         Left            =   4080
         TabIndex        =   29
         Top             =   840
         Width           =   45
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblNeed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   270
         Index           =   0
         Left            =   4080
         TabIndex        =   28
         Top             =   480
         Width           =   45
         WordWrap        =   -1  'True
      End
      Begin VB.Label MaxNeeds 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "Max Need"
         BeginProperty Font 
            Name            =   "Zero Threes"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   2400
         TabIndex        =   27
         Top             =   120
         Width           =   1050
         WordWrap        =   -1  'True
      End
      Begin VB.Label Allocates 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "Allocated"
         BeginProperty Font 
            Name            =   "Zero Threes"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Left            =   1080
         TabIndex        =   26
         Top             =   120
         Width           =   930
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblJob1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "1"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   25
         Top             =   480
         Width           =   495
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblJob4 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "4"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   24
         Top             =   1560
         Width           =   495
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblJob3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "3"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   23
         Top             =   1200
         Width           =   495
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblJob2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "2"
         BeginProperty Font 
            Name            =   "Century Gothic"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   22
         Top             =   840
         Width           =   495
         WordWrap        =   -1  'True
      End
      Begin VB.Label Jobs 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         Caption         =   "Jobs"
         BeginProperty Font 
            Name            =   "Zero Threes"
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
         TabIndex        =   21
         Top             =   120
         Width           =   675
         WordWrap        =   -1  'True
      End
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "The DEADLOCK Project"
      BeginProperty Font 
         Name            =   "Celtic Garamond the 2nd"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   450
      Left            =   360
      TabIndex        =   60
      Top             =   240
      Width           =   6285
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblGantt 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   7
      Left            =   6360
      TabIndex        =   59
      Top             =   4920
      Width           =   45
   End
   Begin VB.Label lblGantt 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   6
      Left            =   5880
      TabIndex        =   58
      Top             =   4920
      Width           =   45
   End
   Begin VB.Label lblGantt 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   5
      Left            =   5400
      TabIndex        =   57
      Top             =   4920
      Width           =   45
   End
   Begin VB.Label lblGantt 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   4
      Left            =   4920
      TabIndex        =   56
      Top             =   4920
      Width           =   45
   End
   Begin VB.Label lblGantt 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   3
      Left            =   4440
      TabIndex        =   43
      Top             =   4920
      Width           =   45
   End
   Begin VB.Label lblGantt 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   2
      Left            =   3960
      TabIndex        =   42
      Top             =   4920
      Width           =   45
   End
   Begin VB.Label lblGantt 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   1
      Left            =   3480
      TabIndex        =   41
      Top             =   4920
      Width           =   45
   End
   Begin VB.Label lblGantt 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Index           =   0
      Left            =   3000
      TabIndex        =   40
      Top             =   4920
      Width           =   45
   End
   Begin VB.Label lblSafeUnsafe 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   270
      Left            =   1200
      TabIndex        =   39
      Top             =   5040
      Width           =   45
      WordWrap        =   -1  'True
   End
   Begin VB.Label Total_Resources 
      BackColor       =   &H80000007&
      Caption         =   "Total Resources = "
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   360
      TabIndex        =   32
      Top             =   4680
      Width           =   1455
   End
End
Attribute VB_Name = "Deadlock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i, j, TR, TA, Available As Integer
Dim message(8), gantt(8) As String

Private Sub cmdClear_Click()
txtTR.Text = ""
TA = 0
lblSafeUnsafe.Caption = ""
cmdExecute.Enabled = True
For i = 0 To 7
    lblAvailable(i).Caption = ""
    txtAllocated(i).Text = ""
    txtMaxNeed(i).Text = ""
    lblNeed(i).Caption = ""
    lblGantt(i).Caption = ""
    gantt(i) = ""
    message(i) = ""
Next i
i = 0
End Sub

Private Sub cmdExecute_Click()
For i = 0 To 7
    TA = TA + Val(txtAllocated(i).Text)
Next
If (txtTR.Text = "") Then
    MsgBox "You didn't input a Total Resources!!!", vbCritical, "Deadlock Error"
    cmdExecute.Enabled = False
ElseIf (Val(txtTR.Text) < TA) Then
    lblSafeUnsafe.Caption = "Unsafe"
    cmdExecute.Enabled = False
ElseIf (Val(txtTR.Text) >= TA) Then
    TR = Val(txtTR.Text)
    TA = TR - TA
    j = 0
    Available = 0
    For i = 0 To 7
        If (Val(txtMaxNeed(i).Text) >= Val(txtAllocated(i).Text)) Then
            lblNeed(i).Caption = Val(txtMaxNeed(i).Text) - Val(txtAllocated(i).Text)
        Else
            lblNeed(i).Caption = 0
        End If
    Next
    While (TA <> TR) And (Available < 8)
        For i = 0 To 7
            If (Val(lblNeed(i).Caption) <= TA) And (lblAvailable(i).Caption = "") Then
                If (Val(txtMaxNeed(i).Text) >= Val(txtAllocated(i).Text)) Then
                    TA = TA - Val(lblNeed(i).Caption)
                    message(i) = message(i) + Str(TA) + " + " + Str(txtMaxNeed(i).Text) + " = "
                    TA = TA + Val(txtMaxNeed(i).Text)
                    message(i) = message(i) + Str(TA)
                    lblAvailable(i) = message(i)
                    Available = Available + 1
                    If (j = 7) Then
                        gantt(i) = gantt(i) + "J" + Str(i + 1)
                        lblGantt(j).Caption = gantt(i)
                    Else
                        gantt(i) = gantt(i) + "J" + Str(i + 1) + "-->"
                        lblGantt(j).Caption = gantt(i)
                    End If
                    j = j + 1
                    i = 7
                ElseIf (Val(txtAllocated(i).Text) >= Val(txtMaxNeed(i).Text)) Then
                    TA = TA - Val(lblNeed(i).Caption)
                    message(i) = message(i) + Str(TA) + " + " + Str(txtAllocated(i).Text) + " = "
                    TA = TA + Val(txtAllocated(i).Text)
                    message(i) = message(i) + Str(TA)
                    lblAvailable(i) = message(i)
                    Available = Available + 1
                    If (j = 7) Then
                        gantt(i) = gantt(i) + "J" + Str(i + 1)
                        lblGantt(j).Caption = gantt(i)
                    Else
                        gantt(i) = gantt(i) + "J" + Str(i + 1) + "-->"
                        lblGantt(j).Caption = gantt(i)
                    End If
                    j = j + 1
                    i = 7
                End If
            ElseIf (Val(lblNeed(7).Caption) > TA) And (lblAvailable(i).Caption = "") Then
                lblSafeUnsafe.Caption = "Unsafe"
                cmdExecute.Enabled = False
            End If
        Next i
        If ((Val(lblNeed(7).Caption) > TA) And lblAvailable(7).Caption = "") Then
            Available = 8
        Else
            Available = 0
        End If
    Wend
    If (TA = TR) Then
        lblSafeUnsafe.Caption = "Safe"
        cmdExecute.Enabled = False
    Else
        lblSafeUnsafe.Caption = "Unsafe"
        cmdExecute.Enabled = False
    End If
End If
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
prompt$ = "Are you sure you want to exit the Deadlock?"
reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Deadlock Project")
If reply = vbYes Then
    End
Else
    Cancel = True
End If
End Sub

Private Sub txtAllocated_Change(Index As Integer)
If IsNumeric(txtAllocated(Index).Text) Then
Else
    txtAllocated(Index).Text = ""
End If
End Sub

Private Sub txtMaxNeed_Change(Index As Integer)
If IsNumeric(txtMaxNeed(Index).Text) Then
Else
    txtMaxNeed(Index).Text = ""
End If
End Sub

Private Sub txtTR_Change()
If IsNumeric(txtTR.Text) Then
Else
    txtTR.Text = ""
End If
End Sub
