VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm MDILIBRARY 
   BackColor       =   &H00C0FFFF&
   Caption         =   "PASAY CITY HALL LIBRARY SYSTEM"
   ClientHeight    =   6015
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   7920
   LinkTopic       =   "MDIForm1"
   WindowState     =   2  'Maximized
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   660
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7920
      _ExtentX        =   13970
      _ExtentY        =   1164
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      AllowCustomize  =   0   'False
      Appearance      =   1
      ImageList       =   "ImageList1"
      DisabledImageList=   "ImageList1"
      HotImageList    =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   4
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Description     =   "8"
            Object.ToolTipText     =   "VISITOR-STUDENT"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "CATALOGUING"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "LIBRARIAN"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "LENDING"
            ImageIndex      =   3
         EndProperty
      EndProperty
      MousePointer    =   99
      MouseIcon       =   "MDILIBRARY.frx":0000
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   1920
      Top             =   840
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      UseMaskColor    =   0   'False
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDILIBRARY.frx":031A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDILIBRARY.frx":0F60
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDILIBRARY.frx":1DB2
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDILIBRARY.frx":5059
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDILIBRARY.frx":5373
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDILIBRARY.frx":5C4D
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDILIBRARY.frx":5DE3
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDILIBRARY.frx":60FD
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.StatusBar Statusadmin 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   5640
      Width           =   7920
      _ExtentX        =   13970
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   15981
            MinWidth        =   15981
            Text            =   "PASAY  CITY HALL LIBRARY SYSTEM"
            TextSave        =   "PASAY  CITY HALL LIBRARY SYSTEM"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin VB.Menu FILE 
      Caption         =   "File"
      Begin VB.Menu MNUEXIT 
         Caption         =   "Exit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu MAIN 
      Caption         =   "Transactions"
      Begin VB.Menu MNUSTUDENT 
         Caption         =   "Visitor-Student"
         Shortcut        =   {F1}
      End
      Begin VB.Menu MNUCATALOGUING 
         Caption         =   "Cataloguing"
         Shortcut        =   {F2}
      End
      Begin VB.Menu MNULIBRARIAN 
         Caption         =   "Librarian"
         Shortcut        =   {F3}
      End
      Begin VB.Menu MNULENDING 
         Caption         =   "Book Lending"
         Shortcut        =   {F4}
      End
   End
   Begin VB.Menu REPORTS 
      Caption         =   "Reports"
      Begin VB.Menu MNUBOOKS 
         Caption         =   "Inventory List of Books"
         Shortcut        =   ^{F1}
      End
      Begin VB.Menu RPTLIBRARIAN 
         Caption         =   "List of Librarians"
         Shortcut        =   ^{F2}
      End
      Begin VB.Menu RPTSTUDENTS 
         Caption         =   "List of Visitors (Students)"
         Shortcut        =   ^{F3}
      End
      Begin VB.Menu RPTLOGSTUD 
         Caption         =   "Student Log In File"
         Shortcut        =   ^{F4}
      End
      Begin VB.Menu RPTLOGLIBRARIAN 
         Caption         =   "Librarian Log In"
         Shortcut        =   ^{F5}
      End
   End
End
Attribute VB_Name = "MDILIBRARY"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public LD

Private Sub MDIForm_Load()
LD = 0

Statusadmin.Panels(2).Text = Time
Statusadmin.Panels(3).Text = Date
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
prompt$ = "Are you sure you want to EXIT the Library System?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Pasay City Hall Library System")
        If reply = vbYes Then
            End
        Else
            Cancel = True
        End If
End Sub

Private Sub MNUBOOKS_Click()
rptBooks.Show
End Sub

Private Sub MNUCATALOGUING_Click()
    unloadforms
    Load FRMCATALOGUING
    LD = 2
End Sub

Private Sub mnuExit_Click()
Unload Me
End Sub

Private Sub MNULENDING_Click()
    unloadforms
    Load FRMLENDING1
    LD = 4
End Sub

Private Sub MNULIBRARIAN_Click()
    unloadforms
    Load FRMLIBRARIAN
    LD = 3
End Sub

Private Sub MNUREPORT_Click()
    unloadforms
    Load FRMREPORT
    LD = 5
End Sub

Private Sub MNUSTUDENT_Click()
FRMUSERS.Show
End Sub

Private Sub RPTLIBRARIAN_Click()
rptLibrarians.Show
End Sub

Private Sub RPTLOGLIBRARIAN_Click()
rptLibrarianLogIn.Show
End Sub

Private Sub RPTLOGSTUD_Click()
rptStudLogFile.Show
End Sub

Private Sub RPTSTUDENTS_Click()
rptStudentVisit.Show
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)

Select Case Button.Index

Case 0
    unloadforms
    Load FRMMAIN
    LD = 0
Case 1
     unloadforms
    Load FRMUSERS
    LD = 1
Case 2
     unloadforms
    Load FRMCATALOGUING
    LD = 2
Case 3
   unloadforms
    Load FRMLIBRARIAN
    LD = 4
Case 4
    unloadforms
    Load FRMLENDING1
    LD = 5
End Select

End Sub


Sub unloadforms()
        If LD = 1 Then
             Unload FRMUSERS
        ElseIf LD = 2 Then
            Unload FRMCATALOGUING
        ElseIf LD = 3 Then
            Unload FRMLIBRARIAN
        ElseIf LD = 4 Then
            Unload FRMLENDING1
        Else
        LD = 0
        End If
End Sub
