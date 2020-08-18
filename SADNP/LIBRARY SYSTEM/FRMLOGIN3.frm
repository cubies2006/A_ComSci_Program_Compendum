VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form FRMLOGIN3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "STUDENT LOG IN"
   ClientHeight    =   6525
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8310
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6525
   ScaleWidth      =   8310
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdBack 
      Caption         =   " Back"
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
      Left            =   6870
      Picture         =   "FRMLOGIN3.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   11
      ToolTipText     =   "Back"
      Top             =   5064
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      Height          =   6495
      Left            =   0
      Picture         =   "FRMLOGIN3.frx":00BB
      ScaleHeight     =   6435
      ScaleWidth      =   8235
      TabIndex        =   0
      Top             =   0
      Width           =   8295
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   330
         Left            =   3600
         Top             =   4560
         Visible         =   0   'False
         Width           =   2415
         _ExtentX        =   4260
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
         Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\LIBRARY SYSTEM\Library_System.mdb;Persist Security Info=False"
         OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\LIBRARY SYSTEM\Library_System.mdb;Persist Security Info=False"
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
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "FRMLOGIN3.frx":9002
         Left            =   6120
         List            =   "FRMLOGIN3.frx":9027
         TabIndex        =   6
         Text            =   "Combo1"
         Top             =   3360
         Width           =   1455
      End
      Begin VB.TextBox txtSN 
         BackColor       =   &H00FFFFFF&
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
         Left            =   240
         TabIndex        =   2
         Top             =   2760
         Width           =   2295
      End
      Begin VB.PictureBox Picture2 
         BackColor       =   &H00800000&
         Height          =   1095
         Left            =   240
         ScaleHeight     =   1035
         ScaleWidth      =   3915
         TabIndex        =   18
         Top             =   4920
         Width           =   3975
         Begin VB.Frame Frame1 
            BackColor       =   &H00800000&
            Height          =   975
            Left            =   120
            TabIndex        =   19
            Top             =   0
            Width           =   3735
            Begin VB.TextBox txtTimeLogin 
               Appearance      =   0  'Flat
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   12
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H0000FFFF&
               Height          =   405
               Left            =   120
               TabIndex        =   23
               Top             =   480
               Width           =   1575
            End
            Begin VB.TextBox txtDateLogin 
               Appearance      =   0  'Flat
               BackColor       =   &H00000000&
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   12
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H0000FFFF&
               Height          =   405
               Left            =   1920
               TabIndex        =   21
               Top             =   480
               Width           =   1575
            End
            Begin VB.Label Label7 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Time Log-in:"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   195
               Left            =   1920
               TabIndex        =   22
               Top             =   240
               Width           =   1065
            End
            Begin VB.Label Label6 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Date Log-in:"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   195
               Left            =   240
               TabIndex        =   20
               Top             =   240
               Width           =   1065
            End
         End
      End
      Begin VB.TextBox txtSubject 
         BackColor       =   &H00FFFFFF&
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
         Left            =   3240
         TabIndex        =   8
         Top             =   4200
         Width           =   3255
      End
      Begin VB.TextBox txtCourse 
         BackColor       =   &H00FFFFFF&
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
         Left            =   240
         TabIndex        =   7
         Top             =   4200
         Width           =   2895
      End
      Begin VB.TextBox txtSchool 
         BackColor       =   &H00FFFFFF&
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
         Left            =   3240
         ScrollBars      =   2  'Vertical
         TabIndex        =   5
         Top             =   3360
         Width           =   2775
      End
      Begin VB.TextBox txtAddress 
         BackColor       =   &H00FFFFFF&
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
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   4
         Top             =   3360
         Width           =   2895
      End
      Begin VB.TextBox txtName 
         BackColor       =   &H00FFFFFF&
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
         Left            =   3000
         TabIndex        =   3
         Top             =   2760
         Width           =   4575
      End
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   375
         Left            =   240
         Top             =   4560
         Visible         =   0   'False
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   661
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
         RecordSource    =   "select * from StudLogFile"
         Caption         =   "Student_Log_File"
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
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Clear"
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
         Left            =   5640
         Picture         =   "FRMLOGIN3.frx":9098
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel"
         Top             =   5040
         Width           =   1215
      End
      Begin VB.TextBox txtNumber 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1920
         TabIndex        =   1
         Top             =   1800
         Width           =   975
      End
      Begin VB.CommandButton cmdEnter 
         Caption         =   "OK"
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
         Left            =   4440
         Picture         =   "FRMLOGIN3.frx":9112
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Log in"
         Top             =   5040
         Width           =   1215
      End
      Begin MSComctlLib.StatusBar statusStud 
         Height          =   375
         Left            =   0
         TabIndex        =   24
         Top             =   6120
         Width           =   8295
         _ExtentX        =   14631
         _ExtentY        =   661
         _Version        =   393216
         BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
            NumPanels       =   3
            BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
               Object.Width           =   9315
               MinWidth        =   9315
               Text            =   "PASAY CITY LIBRARY SYSTEM- [Student Monitoring System]"
               TextSave        =   "PASAY CITY LIBRARY SYSTEM- [Student Monitoring System]"
            EndProperty
            BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
               Object.Width           =   2558
               MinWidth        =   2558
            EndProperty
            BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
               Object.Width           =   2558
               MinWidth        =   2558
            EndProperty
         EndProperty
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Year/Grade:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   6120
         TabIndex        =   26
         Top             =   3120
         Width           =   1245
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00808080&
         BackStyle       =   1  'Opaque
         Height          =   1095
         Left            =   4320
         Top             =   4920
         Width           =   3855
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Student ID:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   240
         TabIndex        =   25
         Top             =   2520
         Width           =   1125
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Subject:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   3240
         TabIndex        =   17
         Top             =   3960
         Width           =   825
      End
      Begin VB.Shape Shape4 
         BackColor       =   &H00C00000&
         BackStyle       =   1  'Opaque
         BorderStyle     =   0  'Transparent
         Height          =   375
         Left            =   1800
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Course: [For College Level]"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   240
         TabIndex        =   16
         Top             =   3960
         Width           =   2685
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
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
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   240
         TabIndex        =   15
         Top             =   3120
         Width           =   885
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "School:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   3240
         TabIndex        =   14
         Top             =   3120
         Width           =   735
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Name: [Surname], [First Name] [MI]"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   3000
         TabIndex        =   13
         Top             =   2520
         Width           =   3585
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Pass Number:"
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
         Height          =   240
         Left            =   240
         TabIndex        =   12
         Top             =   1800
         Width           =   1515
      End
   End
End
Attribute VB_Name = "FRMLOGIN3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdBack_Click()
Me.Hide
FRMSELECT.Show
End Sub

Private Sub cmdCancel_Click()
txtNumber.Text = ""
txtName.Text = ""
txtSN.Text = ""
txtSchool.Text = ""
Combo1.Text = ""
txtCourse.Text = ""
txtAddress.Text = ""
txtSubject.Text = ""
txtTimeLogin.Text = ""
txtDateLogin.Text = ""
txtNumber.SetFocus
End Sub

Private Sub cmdEnter_Click()
If txtNumber.Text = "" Then
    MsgBox "Please enter your Pass Number.", vbInformation, "Invalid Pass No!"
    txtNumber.SetFocus
ElseIf txtSN.Text = "" Then
    MsgBox "Please enter your Student Number.", vbInformation, "Invalid Name!"
    txtSN.SetFocus
ElseIf txtName.Text = "" Then
    MsgBox "Please enter your Name.", vbInformation, "Invalid Name!"
    txtName.SetFocus
ElseIf txtAddress.Text = "" Then
    MsgBox "Please enter your Address.", vbInformation, "Invalid Address!"
    txtAddress.SetFocus
ElseIf txtSchool.Text = "" Then
    MsgBox "Please enter the Name of your School.", vbInformation, "Invalid School Name!"
    txtSchool.SetFocus
ElseIf Combo1.Text = "" Then
    MsgBox "Please enter your grade/year level.", vbInformation, "Invalid Grade/Year Level!"
    Combo1.SetFocus
ElseIf txtSubject.Text = "" Then
    MsgBox "Please enter the subject that you want to search inside the library.", vbInformation, "Invalid Subject!"
    txtSubject.SetFocus
Else
    txtDateLogin.Text = Date
    txtTimeLogin.Text = Time
    Adodc1.RecordSource = "Select * from visitor_student Where studno like '" & txtSN.Text & "'"
    Adodc1.Refresh
    If Adodc1.Recordset.EOF Then
        Adodc1.Recordset.AddNew
        Adodc1.Recordset.Fields("studno") = txtSN.Text
        Adodc1.Recordset.Fields("name") = txtName.Text
        Adodc1.Recordset.Fields("school") = txtSchool.Text
        Adodc1.Recordset.Fields("year") = Combo1.Text
        Adodc1.Recordset.Fields("address") = txtAddress.Text
        Adodc1.Recordset.Fields("course") = txtCourse.Text
        Adodc1.Recordset.Update
        Adodc1.Recordset.MoveNext
        Adodc1.Refresh
        Adodc1.Refresh
    End If
    Call Adodc2.Refresh
    Adodc2.Recordset.AddNew
    Adodc2.Recordset.Fields("pass_number") = txtNumber.Text
    Adodc2.Recordset.Fields("studno") = txtSN.Text
    Adodc2.Recordset.Fields("subject") = txtSubject.Text
    Adodc2.Recordset.Fields("LoginDate") = txtDateLogin.Text
    Adodc2.Recordset.Fields("LoginTime") = txtTimeLogin.Text
    Adodc2.Recordset.Update
    Adodc2.Refresh
    Adodc2.Refresh
    MsgBox "Record was successfully save!", vbInformation, "Pasay City Hall Library System"
End If
End Sub

Private Sub Form_Activate()
txtNumber.Text = ""
txtName.Text = ""
txtSN.Text = ""
txtSchool.Text = ""
Combo1.Text = ""
txtCourse.Text = ""
txtAddress.Text = ""
txtSubject.Text = ""
txtTimeLogin.Text = ""
txtDateLogin.Text = ""
txtNumber.SetFocus
End Sub

Private Sub Form_Load()
statusStud.Panels(2).Text = Date
statusStud.Panels(3).Text = Time
End Sub

Private Sub Form_Unload(Cancel As Integer)
    prompt$ = "Are you sure you don't want to enter the Pasay City Hall Library System?"
    reply = MsgBox(prompt$, vbYesNo + vbQuestion, "Pasay City Hall Library System")
        If reply = vbYes Then
            End
        Else
            Cancel = True
            FRMLOGIN3.txtNumber.Text = ""
        End If
End Sub

Private Sub txtNumber_Change()
If IsNumeric(txtNumber.Text) Then
Else
    ' MsgBox "Please enter a numeric pass number."
    txtNumber.Text = ""
End If
End Sub

Private Sub txtSN_Change()
If IsNumeric(txtSN.Text) Then
Else
    ' MsgBox "Please enter a numeric student number."
    txtSN.Text = ""
End If
End Sub
