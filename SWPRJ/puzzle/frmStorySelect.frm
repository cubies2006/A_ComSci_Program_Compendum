VERSION 5.00
Begin VB.Form frmStorySelect 
   BorderStyle     =   1  'Fixed Single
   Caption         =   " "
   ClientHeight    =   9525
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14415
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   9525
   ScaleWidth      =   14415
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtlang 
      Height          =   420
      Left            =   120
      MaxLength       =   1
      TabIndex        =   11
      Top             =   360
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   9
      Left            =   8880
      TabIndex        =   10
      Top             =   7680
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   8
      Left            =   8880
      TabIndex        =   9
      Top             =   6720
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   7
      Left            =   8880
      TabIndex        =   8
      Top             =   5760
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   6
      Left            =   8880
      TabIndex        =   7
      Top             =   4800
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   5
      Left            =   8880
      TabIndex        =   6
      Top             =   3840
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   4
      Left            =   1920
      TabIndex        =   5
      Top             =   7680
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   3
      Left            =   1920
      TabIndex        =   4
      Top             =   6720
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   2
      Left            =   1920
      TabIndex        =   3
      Top             =   5760
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   1
      Left            =   1920
      TabIndex        =   2
      Top             =   4800
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStory1 
      Alignment       =   2  'Center
      BackColor       =   &H80000002&
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Index           =   0
      Left            =   1920
      MousePointer    =   4  'Icon
      TabIndex        =   1
      Top             =   3840
      Width           =   4695
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblTitle 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   4080
      TabIndex        =   0
      Top             =   720
      Width           =   7575
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "frmStorySelect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim labels As Integer


Private Sub Form_Activate()
If txtlang.Text = "1" Then
lblTitle.Caption = "Which Of These Stories Would You Like To Read?"
lblStory1(0).Caption = "The Legend Of The Land"
lblStory1(1).Caption = "Why Were The Fishes Unable To Speak?"
lblStory1(2).Caption = "Malakas And Maganda"
lblStory1(3).Caption = "The Ant And The Dove"
lblStory1(4).Caption = "The Legend Of The Lanzones"
lblStory1(5).Caption = "The Ant And The Grasshopper"
lblStory1(6).Caption = "The Rabbit And The Turtle"
lblStory1(7).Caption = "The Mermaid In The Deep Blue Sea"
lblStory1(8).Caption = "Was The Sky Low In The Past?"
lblStory1(9).Caption = "The Legend Of Maria Cristina Falls"

ElseIf txtlang.Text = "2" Then
lblTitle.Caption = "Alin sa Mga Sumusunod na Kwento Ang Gusto Mong Basahin?"
lblStory1(0).Caption = "Ang Alamat Ng Kalupaan"
lblStory1(1).Caption = "Bakit Hindi Nagsasalita Ang Mga Isda?"
lblStory1(2).Caption = "Si Malakas At Si Maganda"
lblStory1(3).Caption = "Ang Langgam At Ang Kalapati"
lblStory1(4).Caption = "Ang Alamat Ng Lansones"
lblStory1(5).Caption = "Ang Langgam At Ang Tipaklong"
lblStory1(6).Caption = "Si Pagong At Si Kuneho"
lblStory1(7).Caption = "Ang Sirena Sa Bughaw Na Dagat"
lblStory1(8).Caption = "Mababa Ba Ang Langit Noong Araw?"
lblStory1(9).Caption = "Ang Talon Ng Maria Cristina"

End If
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
For labels = 0 To 9
lblStory1(labels).BackColor = &H80000002
lblStory1(labels).Appearance = 1
Next
End Sub

Private Sub lblStory1_Click(Index As Integer)
If txtlang.Text = "1" Then
Else
frmStory.Show
frmStory.ShockwaveFlash1.Movie = App.Path + "\Filnar\f" & Trim(Str(Index)) & ".swf"
frmStory.ShockwaveFlash1.Play
frmStory.Caption = lblStory1(Index).Caption


'frmQuizzes.Show
'frmQuizzes.Text1.Text = Index
'frmQuizzes.Caption = "Quiz - " & lblStory1(Index).Caption
Unload Me
End If

End Sub

Private Sub lblStory1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)

lblStory1(Index).Appearance = 0
lblStory1(Index).BackColor = &HFFFF&
End Sub



