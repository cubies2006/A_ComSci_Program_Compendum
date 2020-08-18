VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmUserMaintenance 
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Dummy Files - User Maintenance"
   ClientHeight    =   6915
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9720
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   6915
   ScaleWidth      =   9720
   StartUpPosition =   1  'CenterOwner
   Begin MSAdodcLib.Adodc UserLog 
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
      Connect         =   $"frmUserMaintenance.frx":0000
      OLEDBString     =   $"frmUserMaintenance.frx":0090
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
   Begin VB.Frame UserButtonsFrame 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      ForeColor       =   &H8000000D&
      Height          =   3255
      Left            =   5760
      TabIndex        =   18
      Top             =   3360
      Width           =   3615
      Begin VB.CommandButton cmdUsers 
         BackColor       =   &H0000FFFF&
         Caption         =   "&USER LOGIN REPORT"
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
         ToolTipText     =   "View the login and logout of the Dummy Files Program users"
         Top             =   1800
         Width           =   3375
      End
      Begin VB.CommandButton cmdUMCancel 
         BackColor       =   &H00FFC0C0&
         Caption         =   "&CANCEL"
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
         ToolTipText     =   "Cancel the process of adding or editing a user record"
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton cmdUMExit 
         BackColor       =   &H00FFC0FF&
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
         Left            =   960
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Return to the Dummy Files Program"
         Top             =   2520
         Width           =   1575
      End
      Begin VB.CommandButton cmdUMDelete 
         BackColor       =   &H00FFFF00&
         Caption         =   "&DELETE"
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
         ToolTipText     =   "Delete an existing user record"
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton cmdUMEdit 
         BackColor       =   &H0080FF80&
         Caption         =   "&EDIT"
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
         TabIndex        =   8
         ToolTipText     =   "Update an existing user record"
         Top             =   360
         Width           =   1575
      End
      Begin VB.CommandButton cmdUMAdd 
         BackColor       =   &H000000FF&
         Caption         =   "&ADD"
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
         TabIndex        =   7
         ToolTipText     =   "Create a new user account"
         Top             =   360
         Width           =   1575
      End
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
      Connect         =   $"frmUserMaintenance.frx":0120
      OLEDBString     =   $"frmUserMaintenance.frx":01AD
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
   Begin VB.Frame FrameUMAddEdit 
      BackColor       =   &H00FFC0C0&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   1695
      Left            =   240
      TabIndex        =   12
      Top             =   1080
      Width           =   9255
      Begin VB.TextBox txtUMOldPassword 
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
         ForeColor       =   &H00FF0000&
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   2400
         MaxLength       =   16
         PasswordChar    =   "*"
         TabIndex        =   1
         ToolTipText     =   "Enter your old password here"
         Top             =   840
         Width           =   2535
      End
      Begin VB.OptionButton optAdministrator 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Administrator"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   7080
         TabIndex        =   3
         Top             =   600
         Width           =   1815
      End
      Begin VB.OptionButton optOfficer 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Officer"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   7080
         TabIndex        =   4
         Top             =   840
         Width           =   1815
      End
      Begin VB.OptionButton optProcessor 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Processor"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   7080
         TabIndex        =   5
         Top             =   1080
         Width           =   1815
      End
      Begin VB.TextBox txtUMNewPassword 
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
         ForeColor       =   &H00FF0000&
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   2400
         MaxLength       =   16
         PasswordChar    =   "*"
         TabIndex        =   2
         ToolTipText     =   "Enter your new password here"
         Top             =   1200
         Width           =   2535
      End
      Begin VB.TextBox txtUMUN 
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
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   2400
         MaxLength       =   16
         TabIndex        =   0
         ToolTipText     =   "Enter your desired username here"
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label lblUMOldPassword 
         BackStyle       =   0  'Transparent
         Caption         =   "Old Password:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   600
         TabIndex        =   21
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label lblUMNewPassword 
         BackStyle       =   0  'Transparent
         Caption         =   "New Password:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   600
         TabIndex        =   17
         Top             =   1200
         Width           =   1695
      End
      Begin VB.Label lblUMPrivilege 
         BackStyle       =   0  'Transparent
         Caption         =   "Privilege:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   6000
         TabIndex        =   16
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label lblUMUN 
         BackStyle       =   0  'Transparent
         Caption         =   "Username:"
         BeginProperty Font 
            Name            =   "Book Antiqua"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   600
         TabIndex        =   15
         Top             =   480
         Width           =   1815
      End
      Begin VB.Label lblUMAddEdit 
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
         Left            =   240
         TabIndex        =   14
         Top             =   120
         Width           =   2895
      End
   End
   Begin MSComctlLib.ListView ExistingUsersList 
      CausesValidation=   0   'False
      Height          =   3255
      Left            =   240
      TabIndex        =   6
      Top             =   3360
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   5741
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      TextBackground  =   -1  'True
      _Version        =   393217
      ForeColor       =   16744448
      BackColor       =   -2147483624
      BorderStyle     =   1
      Appearance      =   0
      MousePointer    =   99
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
         Text            =   "Username"
         Object.Width           =   4762
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Privilege"
         Object.Width           =   4762
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Password"
         Object.Width           =   0
      EndProperty
   End
   Begin VB.DirListBox DataDestinationDirectory 
      Height          =   765
      Left            =   6000
      TabIndex        =   22
      Top             =   3360
      Width           =   3375
   End
   Begin VB.Label lblDummyFiles 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "User Maintenance"
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
      TabIndex        =   19
      Top             =   240
      Width           =   9255
   End
   Begin VB.Label lblUserLists 
      BackStyle       =   0  'Transparent
      Caption         =   "List of Users:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   240
      TabIndex        =   20
      Top             =   3000
      Width           =   5415
   End
End
Attribute VB_Name = "frmUserMaintenance"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CENT As Boolean
Dim datadestinationmatch As Integer
Dim oldpass As String
Public crypto, crypt

Private Sub cmdUMAdd_Click()
    If (cmdUMAdd.Caption = "&ADD") Then
        replyadd = MsgBox("Do you want to add a new user account?", vbQuestion + vbYesNo, "Dummy Files - Add a New User Account")
        If (replyadd = vbYes) Then
            FrameUMAddEdit.Enabled = True
            txtUMUN.Text = ""
            txtUMUN.Enabled = True
            txtUMOldPassword.Text = ""
            txtUMOldPassword.Enabled = False
            txtUMNewPassword.Text = ""
            optAdministrator.Value = False
            optOfficer.Value = False
            optProcessor.Value = False
            ExistingUsersList.Enabled = False
            lblUMAddEdit.Caption = "Enter your data here: "
            cmdUMCancel.Enabled = True
            cmdUMDelete.Enabled = False
            cmdUMEdit.Enabled = False
            cmdUMExit.Enabled = False
            cmdUsers.Enabled = False
            cmdUMAdd.Caption = "&SAVE"
        End If
    Else
        Users.RecordSource = "Select * from UserRecords where Username like '" & txtUMUN.Text & "'"
        Users.Refresh
        If (Users.Recordset.EOF) Then
            If txtUMUN.Text = "" Then
                MsgBox "All field must have a data", vbInformation, "Dummy Files - Add a User Record"
                cmdUMAdd.Caption = "&SAVE"
            ElseIf ((optAdministrator.Value = False) And (optOfficer.Value = False) And (optProcessor.Value = False)) Then
                MsgBox "All field must have a data", vbInformation, "Dummy Files - Add a User Record"
                cmdUMAdd.Caption = "&SAVE"
            ElseIf txtUMNewPassword.Text = "" Then
                MsgBox "All field must have a data", vbInformation, "Dummy Files - Add a User Record"
                cmdUMAdd.Caption = "&SAVE"
            Else
                Users.RecordSource = "Select * from UserRecords Where Username like '" & txtUMUN.Text & "'"
                Users.Refresh
                If (Users.Recordset.EOF) Then
                    Users.Recordset.AddNew
                    Users.Recordset.Fields("Username") = LCase(txtUMUN.Text)
                    If (optAdministrator.Value = True) Then
                        Users.Recordset.Fields("Privilege") = "Administrator"
                    ElseIf (optOfficer.Value = True) Then
                        Users.Recordset.Fields("Privilege") = "Officer"
                    ElseIf (optProcessor.Value = True) Then
                        Users.Recordset.Fields("Privilege") = "Processor"
                    End If
                    Call ENCRYPTION
                    txtUMNewPassword.Text = crypto
                    Users.Recordset.Fields("Password") = txtUMNewPassword.Text
                    crypto = ""
                    Users.Recordset.Update
                    Users.Refresh
                    UM_TRANSFER_TEXT
                    UM_LISTVIEW_CONTENT
                    ExistingUsersList.Refresh
                    lblUMAddEdit.Caption = ""
                    MsgBox "The user record '" & txtUMUN.Text & "' was successfully saved!!!", vbInformation, "Dummy Files - Successful User Record Save"
                    CLEAR_UM_TEXT
                    FrameUMAddEdit.Enabled = False
                    ExistingUsersList.Enabled = True
                    cmdUMCancel.Enabled = False
                    cmdUMDelete.Enabled = True
                    cmdUMEdit.Enabled = True
                    cmdUMExit.Enabled = True
                    cmdUsers.Enabled = True
                    cmdUMAdd.Caption = "&ADD"
                End If
            End If
        End If
    End If
End Sub

Private Sub cmdUMCancel_Click()
    replycancel = MsgBox("Are you sure you want to cancel the process?", vbQuestion + vbYesNo, "Dummy Files - Cancel a User Process")
    If (replycancel = vbYes) Then
        CTENT = False
        ExistingUsersList.Enabled = True
        cmdUMAdd.Caption = "&ADD"
        cmdUMEdit.Caption = "&EDIT"
        cmdUMAdd.Enabled = True
        cmdUMCancel.Enabled = False
        cmdUMDelete.Enabled = True
        cmdUMEdit.Enabled = True
        cmdUMExit.Enabled = True
        txtUMUN.Text = ""
        txtUMOldPassword.Text = ""
        txtUMNewPassword.Text = ""
        optAdministrator.Value = False
        optOfficer.Value = False
        optProcessor.Value = False
        lblUMAddEdit.Caption = ""
        FrameUMAddEdit.Enabled = False
    End If
End Sub

Private Sub cmdUMDelete_Click()
    If (txtUMUN.Text = "") Then
        MsgBox "No user record to be deleted!!!", vbCritical, "Dummy Files - No User Record Delete"
    Else
        replydelete = MsgBox("Are you sure you want to delete the user record '" & ExistingUsersList.SelectedItem & "'?", vbQuestion + vbYesNo, "Dummy Files - Delete a User Record")
        If (replydelete = vbYes) Then
            Users.RecordSource = "Select * from UserRecords Where Username like '" & ExistingUsersList.SelectedItem.Index & "%'"
            ExistingUsersList.ListItems.Remove (ExistingUsersList.SelectedItem.Index)
            Users.Recordset.Delete
            Users.Recordset.Update
            Users.Refresh
            CLEAR_UM_TEXT
            MsgBox "User record was successfully deleted!!!", vbInformation, "Dummy Files - Successful User Record Delete"
        End If
    End If
End Sub

Private Sub cmdUMEdit_Click()
    If (txtUMUN.Text = "") Then
        MsgBox "No user record to be updated!!!", vbCritical, "Dummy Files - No User Record Update"
    Else
        If cmdUMEdit.Caption = "&EDIT" Then
            replyrename = MsgBox("Do you want to update the user record '" & ExistingUsersList.SelectedItem & "'?", vbQuestion + vbYesNo, "Dummy Files - Update a User Record")
            If (replyrename = vbYes) Then
                FrameUMAddEdit.Enabled = True
                txtUMUN.Enabled = False
                cmdUMAdd.Enabled = False
                cmdUMCancel.Enabled = True
                cmdUMDelete.Enabled = False
                cmdUMExit.Enabled = False
                cmdUsers.Enabled = False
                Call DECRYPTION
                oldpass = crypto
                crypto = ""
                txtUMOldPassword.Enabled = True
                txtUMNewPassword.Text = ""
                ExistingUsersList.Enabled = False
                lblUMAddEdit.Caption = "Update your data here: "
                cmdUMEdit.Caption = "&UPDATE"
            End If
        Else
            If txtUMUN.Text = "" Then
                MsgBox "All field must have a data!", vbInformation, "Dummy Files - Rename a File Record"
                cmdUMEdit.Caption = "&UPDATE"
            ElseIf ((optAdministrator.Value = False) And (optOfficer.Value = False) And (optProcessor.Value = False)) Then
                MsgBox "All field must have a data", vbInformation, "Dummy Files - Add a User Record"
                cmdUMEdit.Caption = "&UPDATE"
            ElseIf txtUMOldPassword.Text = "" Then
                MsgBox "All field must have a data!", vbInformation, "Dummy Files - Rename a File Record"
                cmdUMEdit.Caption = "&UPDATE"
            ElseIf txtUMNewPassword.Text = "" Then
                MsgBox "All field must have a data!", vbInformation, "Dummy Files - Rename a File Record"
                cmdUMEdit.Caption = "&UPDATE"
            ElseIf Not (txtUMOldPassword.Text = oldpass) Then
                MsgBox "Please retype your old password!!!", vbCritical, "Dummy Files - Invalid Old Password"
                cmdUMEdit.Caption = "&UPDATE"
            Else
                Users.RecordSource = "Select * from UserRecords Where Username like '" & txtUMUN.Text & "%'"
                Call Users.Refresh
                Users.Recordset.Fields("Username") = LCase(txtUMUN.Text)
                If (optAdministrator.Value = True) Then
                    Users.Recordset.Fields("Privilege") = "Administrator"
                ElseIf (optOfficer.Value = True) Then
                    Users.Recordset.Fields("Privilege") = "Officer"
                ElseIf (optProcessor.Value = True) Then
                    Users.Recordset.Fields("Privilege") = "Processor"
                End If
                Call ENCRYPTION
                txtUMNewPassword.Text = crypto
                Users.Recordset.Fields("Password") = txtUMNewPassword.Text
                crypto = ""
                txtUMUN.Enabled = True
                txtUMOldPassword.Enabled = False
                FrameUMAddEdit.Enabled = False
                cmdUMAdd.Enabled = True
                cmdUMCancel.Enabled = False
                cmdUMDelete.Enabled = True
                cmdUMExit.Enabled = True
                cmdUsers.Enabled = True
                userindex = ExistingUsersList.SelectedItem
                ExistingUsersList.ListItems.Remove (ExistingUsersList.SelectedItem.Index)
                Users.Recordset.Update
                Users.RecordSource = "Select * from UserRecords"
                Users.Refresh
                ExistingUsersList.ListItems.Clear
                UM_TRANSFER_TEXT
                UM_LISTVIEW_CONTENT
                CLEAR_UM_TEXT
                MsgBox "The user record '" & userindex & "' was successfully updated!!!", vbInformation, "Dummy Files - Successful User Record Update"
                userindex = ""
                ExistingUsersList.Enabled = True
                lblUMAddEdit.Caption = ""
                cmdUMEdit.Caption = "&EDIT"
            End If
        End If
    End If
End Sub

Private Sub cmdUMExit_Click()
    Unload Me
End Sub

Private Sub cmdUsers_Click()
    rptUsers.Show
End Sub

Private Sub ExistingUsersList_Click()
    If (CENT = True) Then
        SN = ExistingUsersList.SelectedItem
        Users.RecordSource = "Select * from UserRecords Where Username like '" & SN & "%'"
        Call Users.Refresh
        UM_TRANSFER_TEXT
        cmdUMDelete.Enabled = True
        cmdUMEdit.Enabled = True
        ExistingUsersList.DropHighlight = ExistingUsersList.SelectedItem
    End If
End Sub

Private Sub Form_Load()
    Users.RecordSource = "Select * from UserRecords"
    Call Users.Refresh
    If (Users.Recordset.EOF) Then
    Else
        UM_LISTVIEW_CONTENT
    End If
    txtUMUN.Text = ExistingUsersList.ListItems(1)
    If (ExistingUsersList.ListItems(1).SubItems(1) = "Administrator") Then
        optAdministrator.Value = True
    ElseIf (ExistingUsersList.ListItems(1).SubItems(1) = "Officer") Then
        optOfficer.Value = True
    ElseIf (ExistingUsersList.ListItems(1).SubItems(1) = "Processor") Then
        optProcessor.Value = True
    End If
    txtUMNewPassword.Text = ExistingUsersList.ListItems(1).SubItems(2)
End Sub

Sub CLEAR_UM_TEXT()
    txtUMUN.Text = ""
    optAdministrator.Value = False
    optOfficer.Value = False
    optProcessor.Value = False
    txtUMOldPassword.Text = ""
    txtUMNewPassword.Text = ""
End Sub

Sub DECRYPTION()
    For crypt = 1 To Len(txtUMNewPassword.Text) Step 1
        crypto = crypto & IIf(crypt <> 1, Chr(Asc(Mid(txtUMNewPassword.Text, crypt, 1)) - crypt), Chr(Asc(Left(txtUMNewPassword.Text, crypt)) - Len(txtUMNewPassword.Text)))
    Next
End Sub

Sub ENCRYPTION()
    For crypt = 1 To Len(txtUMNewPassword.Text) Step 1
        crypto = crypto & IIf(crypt <> 1, Chr(Asc(Mid(txtUMNewPassword.Text, crypt, 1)) + crypt), Chr(Asc(Left(txtUMNewPassword.Text, crypt)) + Len(txtUMNewPassword.Text)))
    Next
End Sub

Sub UM_LISTVIEW_CONTENT()
    If (Users.Recordset.EOF = False) Then
        Do While (Users.Recordset.EOF <> True)
            Set uitem = ExistingUsersList.ListItems.Add(, , Users.Recordset.Fields("Username"))
            uitem.SubItems(1) = Users.Recordset.Fields("Privilege")
            uitem.SubItems(2) = Users.Recordset.Fields("Password")
            Users.Recordset.Update
            Users.Recordset.MoveNext
        Loop
        CENT = True
    Else
        MsgBox "The table has no data files to display!!!", vbInformation
    End If
End Sub

Sub UM_TRANSFER_TEXT()
    If (Users.Recordset.EOF <> True) Then
        txtUMUN.Text = Users.Recordset.Fields("Username")
        If (Users.Recordset.Fields("Privilege") = "Administrator") Then
            optAdministrator.Value = True
        ElseIf (Users.Recordset.Fields("Privilege") = "Officer") Then
            optOfficer.Value = True
        ElseIf (Users.Recordset.Fields("Privilege") = "Processor") Then
            optProcessor.Value = True
        End If
        txtUMNewPassword.Text = Users.Recordset.Fields("Password")
    Else
        MsgBox "No Record Found!!!", vbInformation, "Search Failed"
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dummy_Files.Show
End Sub
