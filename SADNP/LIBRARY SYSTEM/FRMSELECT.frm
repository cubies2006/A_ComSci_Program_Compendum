VERSION 5.00
Begin VB.Form FRMSELECT 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Log In"
   ClientHeight    =   4380
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5205
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4380
   ScaleWidth      =   5205
   StartUpPosition =   1  'CenterOwner
   Begin VB.PictureBox Picture1 
      Height          =   4335
      Left            =   0
      Picture         =   "FRMSELECT.frx":0000
      ScaleHeight     =   4275
      ScaleWidth      =   5115
      TabIndex        =   0
      Top             =   0
      Width           =   5175
      Begin VB.OptionButton optLibrarian 
         Appearance      =   0  'Flat
         BackColor       =   &H80000018&
         Caption         =   "Librarian"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   540
         Left            =   1440
         MouseIcon       =   "FRMSELECT.frx":304C
         MousePointer    =   99  'Custom
         TabIndex        =   4
         ToolTipText     =   "Librarian Log in"
         Top             =   1440
         Width           =   2460
      End
      Begin VB.OptionButton optStudent 
         Appearance      =   0  'Flat
         BackColor       =   &H80000018&
         Caption         =   "Visitor-Student"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   540
         Left            =   1440
         MouseIcon       =   "FRMSELECT.frx":3356
         MousePointer    =   99  'Custom
         TabIndex        =   3
         ToolTipText     =   "Student Log in"
         Top             =   2160
         Width           =   2505
      End
      Begin VB.CommandButton cmdExit 
         Caption         =   "E&xit"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   2760
         Picture         =   "FRMSELECT.frx":3660
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Close the Library System"
         Top             =   3240
         Width           =   1750
      End
      Begin VB.CommandButton cmdNext 
         Caption         =   "Next"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   840
         Picture         =   "FRMSELECT.frx":376F
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Next"
         Top             =   3240
         Width           =   1750
      End
      Begin VB.Image Image1 
         Height          =   930
         Left            =   120
         Picture         =   "FRMSELECT.frx":3825
         Stretch         =   -1  'True
         Top             =   120
         Width           =   1095
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H80000018&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H8000000D&
         BorderWidth     =   5
         Height          =   1935
         Left            =   1200
         Top             =   1080
         Width           =   2895
      End
   End
End
Attribute VB_Name = "FRMSELECT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub cmdNext_Click()
If optLibrarian.value = True Then
    FRMLOGIN2.Show
    Me.Hide
ElseIf optStudent.value = True Then
    FRMLOGIN3.Show
    Me.Hide
Else
    MsgBox "You must select, Try again!", vbOKOnly + vbExclamation, "No selection"
End If
End Sub

Private Sub Form_Activate()
optLibrarian.value = False
optStudent.value = False
End Sub

Private Sub Form_Load()
'Initialize the list control values
optLibrarian.value = False
optStudent.value = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    prompt$ = "Are you sure you don't want to enter the Pasay City Hall Library System?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Pasay City Hall Library System")
        If reply = vbYes Then
            End
        Else
            Cancel = True
            optLibrarian.value = False
            optStudent.value = False
        End If
End Sub

