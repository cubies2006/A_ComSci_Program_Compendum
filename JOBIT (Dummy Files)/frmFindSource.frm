VERSION 5.00
Begin VB.Form frmFindSource 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Find Source"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4545
   ControlBox      =   0   'False
   ForeColor       =   &H00800000&
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4545
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdSourceCancel 
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
      TabIndex        =   3
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton cmdSourceOK 
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
      TabIndex        =   2
      Top             =   2160
      Width           =   1215
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
      Left            =   840
      OLEDragMode     =   1  'Automatic
      TabIndex        =   0
      Top             =   720
      Width           =   2775
   End
   Begin VB.Label lblSourceDirectory 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "Look in Source Directory:"
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
      TabIndex        =   1
      Top             =   360
      Width           =   2775
   End
End
Attribute VB_Name = "frmFindSource"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim indexsourcefile, indexfilename, existfile, i11 As Integer

Private Sub cmdSourceCancel_Click()
    Dummy_Files.Enabled = True
    Dummy_Files.Show
    frmFindSource.Hide
End Sub

Private Sub cmdSourceOK_Click()
    replysourcedir = MsgBox("Are you sure you want the folder '" & SourceDirectory.Path & "' as your source path?", vbQuestion + vbYesNo, "Dummy Files - Confirm Source Path")
    If (replysourcedir = vbYes) Then
        Dummy_Files.txtSource.Text = SourceDirectory.Path
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
        Dummy_Files.SourceFile.Refresh
        If (Dummy_Files.ExistingFilesList.ListItems.Count = 0) Then
            Dummy_Files.cmdGenerate.Enabled = False
        Else
            Dummy_Files.cmdGenerate.Enabled = True
        End If
        i11 = Dummy_Files.ExistingFilesList.ListItems.Count
        For indexfilename = i11 To 1 Step -1
            For indexsourcefile = 0 To Dummy_Files.SourceFile.ListCount
                If (LCase(Dummy_Files.ExistingFilesList.ListItems.Item(indexfilename)) = LCase(Dummy_Files.SourceFile.List(indexsourcefile))) Then
                    existfile = 1
                    indexsourcefile = Dummy_Files.SourceFile.ListCount
                Else
                    existfile = 0
                End If
            Next indexsourcefile
            If (existfile = 0) Then
                Dummy_Files.Files.RecordSource = "Select * from FileRecords Where Filename like '" & Dummy_Files.ExistingFilesList.ListItems(indexfilename) & "%'"
                Dummy_Files.Files.Refresh
                Dummy_Files.ExistingFilesList.Enabled = True
                Dummy_Files.ExistingFilesList.ListItems.Remove (indexfilename)
                Dummy_Files.Files.Recordset.Delete
                Dummy_Files.Files.Recordset.Update
                Dummy_Files.Files.Refresh
            End If
            i11 = i11 - 1
        Next indexfilename
        Dummy_Files.ExistingFilesList.Refresh
        Dummy_Files.cmdSource.Enabled = False
        Dummy_Files.txtSource.Enabled = False
        Dummy_Files.RecallSource.RecordSource = "Select * from RecallS Where SourceNo like 1"
        If (Dummy_Files.RecallSource.Recordset.RecordCount = 0) Then
            Dummy_Files.RecallSource.Recordset.AddNew
        End If
        Dummy_Files.RecallSource.Recordset.Fields("SourceNo") = "1"
        Dummy_Files.RecallSource.Recordset("SourcePath") = Dummy_Files.txtSource.Text
        Dummy_Files.RecallSource.Recordset.Update
        Dummy_Files.RecallSource.Refresh
        Dummy_Files.Enabled = True
        Dummy_Files.Show
        frmFindSource.Hide
    End If
End Sub

Private Sub Form_Load()
    Dummy_Files.Enabled = False
End Sub

Private Sub SourceDirectory_Change()
    Dummy_Files.SourceFile = SourceDirectory.Path
End Sub
