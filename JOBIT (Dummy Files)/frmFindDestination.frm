VERSION 5.00
Begin VB.Form frmFindDestination 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Find Destination"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4545
   ControlBox      =   0   'False
   FillColor       =   &H00FFFFFF&
   ForeColor       =   &H00800000&
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4545
   StartUpPosition =   1  'CenterOwner
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
      Left            =   840
      TabIndex        =   2
      Top             =   720
      Width           =   2775
   End
   Begin VB.CommandButton cmdDestinationOK 
      Caption         =   "&OK"
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
      Left            =   840
      TabIndex        =   1
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton cmdDestinationCancel 
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
      Left            =   2400
      TabIndex        =   0
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label lblDestinationDirectory 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "Look in Destination Directory:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   840
      TabIndex        =   3
      Top             =   360
      Width           =   2775
   End
End
Attribute VB_Name = "frmFindDestination"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDestinationCancel_Click()
    Dummy_Files.Enabled = True
    Dummy_Files.Show
    frmFindDestination.Hide
End Sub

Private Sub cmdDestinationOK_Click()
    replydestinationdir = MsgBox("Are you sure you want the folder '" & DestinationDirectory.Path & "' as your destination path?", vbQuestion + vbYesNo, "Dummy Files - Confirm Destination Path")
    If (replydestinationdir = vbYes) Then
        Dummy_Files.txtDestination.Text = DestinationDirectory.Path
        If (Dummy_Files.txtSource.Text <> "") And (Dummy_Files.txtDestination.Text <> "") Then
            Dummy_Files.cmdAdd.Enabled = True
            Dummy_Files.cmdGenerate.Enabled = True
            Dummy_Files.cmdReset.Enabled = True
            Dummy_Files.txtSearch.Enabled = True
            Dummy_Files.cmdSearch.Enabled = True
            Dummy_Files.ExistingFilesList.Enabled = True
            If (Dummy_Files.ExistingFilesList.ListItems.Count <> 0) Then
                Dummy_Files.txtNewFileName.Text = Dummy_Files.ExistingFilesList.ListItems(1)
                If (Dummy_Files.ExistingFilesList.ListItems(1).SubItems(1) = "yes") Then
                    Dummy_Files.chkNewRequired.Value = 1
                ElseIf (Dummy_Files.ExistingFilesList.ListItems(1).SubItems(1) = "no") Then
                    Dummy_Files.chkNewRequired.Value = 0
                End If
                Dummy_Files.txtNewDescription.Text = Dummy_Files.ExistingFilesList.ListItems(1).SubItems(2)
            End If
        End If
        Dummy_Files.ExistingFilesList.Refresh
        If (Dummy_Files.ExistingFilesList.ListItems.Count = 0) Then
            Dummy_Files.cmdGenerate.Enabled = False
        Else
            Dummy_Files.cmdGenerate.Enabled = True
        End If
        Dummy_Files.cmdDestination.Enabled = False
        Dummy_Files.txtDestination.Enabled = False
        Dummy_Files.RecallDestination.RecordSource = "Select * from RecallD Where DestinationNo like 1"
        If (Dummy_Files.RecallDestination.Recordset.RecordCount = 0) Then
            Dummy_Files.RecallDestination.Recordset.AddNew
        End If
        Dummy_Files.RecallDestination.Recordset.Fields("DestinationNo") = "1"
        Dummy_Files.RecallDestination.Recordset("DestinationPath") = Dummy_Files.txtDestination.Text
        Dummy_Files.RecallDestination.Recordset.Update
        Dummy_Files.RecallDestination.Refresh
        Dummy_Files.Enabled = True
        Dummy_Files.Show
        frmFindDestination.Hide
    End If
End Sub

Private Sub DestinationDirectory_Change()
    Dummy_Files.DestinationFile = DestinationDirectory.Path
End Sub

Private Sub Form_Load()
    Dummy_Files.Enabled = False
End Sub
