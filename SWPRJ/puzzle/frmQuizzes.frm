VERSION 5.00
Begin VB.Form frmQuizzes 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Else"
   ClientHeight    =   9675
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14415
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   9675
   ScaleWidth      =   14415
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   14
      Left            =   5880
      TabIndex        =   19
      Top             =   360
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   13
      Left            =   5400
      TabIndex        =   18
      Top             =   480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   12
      Left            =   4920
      TabIndex        =   17
      Top             =   480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   11
      Left            =   4440
      TabIndex        =   16
      Top             =   480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   10
      Left            =   3960
      TabIndex        =   15
      Top             =   480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   9
      Left            =   3480
      TabIndex        =   14
      Top             =   480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   8
      Left            =   3000
      TabIndex        =   13
      Top             =   480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   7
      Left            =   2520
      TabIndex        =   12
      Top             =   480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   6
      Left            =   5400
      TabIndex        =   11
      Top             =   120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   5
      Left            =   4920
      TabIndex        =   10
      Top             =   120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   4
      Left            =   4440
      TabIndex        =   9
      Top             =   120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   3
      Left            =   3960
      TabIndex        =   8
      Top             =   120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   2
      Left            =   3480
      TabIndex        =   7
      Top             =   120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   1
      Left            =   3000
      TabIndex        =   6
      Top             =   120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCtr 
      Height          =   375
      Index           =   0
      Left            =   2520
      TabIndex        =   5
      Top             =   120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   360
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "C.)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   10320
      TabIndex        =   22
      Top             =   6120
      Width           =   585
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "B.)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   5250
      TabIndex        =   21
      Top             =   6120
      Width           =   585
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "A.)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   465
      TabIndex        =   20
      Top             =   6120
      Width           =   525
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblchoice 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Index           =   2
      Left            =   10920
      TabIndex        =   3
      Top             =   6120
      Width           =   3975
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblchoice 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Index           =   1
      Left            =   5880
      TabIndex        =   2
      Top             =   6120
      Width           =   3975
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblchoice 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Index           =   0
      Left            =   960
      TabIndex        =   1
      Top             =   6120
      Width           =   3975
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblQuestion 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   1920
      TabIndex        =   0
      Top             =   2640
      Width           =   12495
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "frmQuizzes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
    Dim rndm1 As Integer
    Private conn As New ADODB.Connection
    Private rs As New ADODB.Recordset
    Dim num As Integer
    Dim Ctr As Integer
    Dim labels As Integer
    Dim x As Integer
    Dim rndm2 As Integer
    Dim rndm3 As Integer
    Dim rndm4 As Integer
    Dim nmbring As Integer
    Dim score As Integer
 

Private Sub Getrecords()

    If conn.State = adStateOpen Then
        conn.Close
    End If
    
    conn.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=Quizzes;Data Source=KENNETH"
    
    If rs.State = adStateOpen Then
        rs.Close
    End If
    
Select Case num
Case 0:
    rs.Open "Select * From tblStory0", conn, adOpenStatic, adLockOptimistic
Case 1:
    rs.Open "Select * From tblStory1", conn, adOpenStatic, adLockOptimistic
Case 2:
    rs.Open "Select * From tblStory2", conn, adOpenStatic, adLockOptimistic
Case 3:
    rs.Open "Select * From tblStory3", conn, adOpenStatic, adLockOptimistic
Case 4:
    rs.Open "Select * From tblStory4", conn, adOpenStatic, adLockOptimistic
Case 5:
    rs.Open "Select * From tblStory5", conn, adOpenStatic, adLockOptimistic
Case 6:
    rs.Open "Select * From tblStory6", conn, adOpenStatic, adLockOptimistic
Case 7:
    rs.Open "Select * From tblStory7", conn, adOpenStatic, adLockOptimistic
Case 8:
    rs.Open "Select * From tblStory8", conn, adOpenStatic, adLockOptimistic
Case 9:
    rs.Open "Select * From tblStory9", conn, adOpenStatic, adLockOptimistic
End Select
    PopulateBoxes
End Sub

Private Sub Form_Activate()
num = Val(Text1.Text)
c1 = 0
c2 = 0
c3 = 0
score = 0
nmbring = 1
    Set conn = New ADODB.Connection
    conn.ConnectionTimeout = 0
    
    Set rs = New ADODB.Recordset
    rs.CursorLocation = adUseClient
    Getrecords
x = 0
End Sub

Private Sub PopulateBoxes()

If x = 4 Then
    MsgBox "Ang Nakuha Mo Ay: " & Trim(Str(score)) & " / 5!"
    Unload Me
    frmModeSelect.Show
End If
Call Randomize
For Ctr = 0 To 3
rndm1 = Int(Rnd * 15)
If txtCtr(rndm1).Text = "" Then
    txtCtr(rndm1).Text = 1
    x = x + 1
    Exit For
    
Else
    Ctr = 0
    
End If
Next
On Error GoTo err
    With rs
        .Move (rndm1)
        lblQuestion.Caption = "#" & Trim(Str(nmbring)) & ": " & !Question
nmbring = nmbring + 1
For Ctr = 0 To 3
    rndm2 = Int(Rnd * 3)
    rndm3 = Int(Rnd * 3)
    If rndm2 = rndm3 Then
        Ctr = 0
    Else
        For ctr1 = 0 To 3
        rndm4 = Int(Rnd * 3)
        If rndm4 = rndm3 Or rndm4 = rndm2 Then
            ctr1 = 0
        Else
            Exit For
        End If
        Next
    End If
Next

        lblchoice(rndm2).Caption = !Option1
        lblchoice(rndm3).Caption = !Option2
        lblchoice(rndm4).Caption = !Option3

    End With
    Exit Sub
err:
    Exit Sub
End Sub


Private Sub Form_Load()
For Ctr = 0 To 14
txtCtr(Ctr).Text = ""
Next
num = Val(Text1.Text)
c1 = 0
c2 = 0
c3 = 0
score = 0
x = 0
nmbring = 1
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
For labels = 0 To 2
lblchoice(labels).BackColor = &H80000002
lblchoice(labels).Appearance = 1
Next
End Sub

Private Sub lblchoice_Click(Index As Integer)
Select Case num
Case 0:
    If lblchoice(Index).Caption = "langit, dagat at isang higanteng ibon" Or lblchoice(Index).Caption = "Dahil pagod na siyang lumipad sa paghahanap ng madadapuan" Or lblchoice(Index).Caption = "Dahil siya ay lulubog" Or lblchoice(Index).Caption = "Pagkakagalitin niya ang dagat at langit" Or lblchoice(Index).Caption = "pag-aawayin" Or lblchoice(Index).Caption = "nagalit" Or lblchoice(Index).Caption = "langit at dagat" Or lblchoice(Index).Caption = "naghagis" Or lblchoice(Index).Caption = "bato" Or lblchoice(Index).Caption = "natuwa dahil sa wakas ay meron na siyang madadapuan" Or lblchoice(Index).Caption = "lumilipad" Or lblchoice(Index).Caption = "naging magkaibigan ang dagat at langit" Or lblchoice(Index).Caption = "naging mahinahon ang dagat at ang langit" Or lblchoice(Index).Caption = "lupa" Or lblchoice(Index).Caption = "langgam" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If
Case 1:
    If lblchoice(Index).Caption = "Katahimikan" Or lblchoice(Index).Caption = "Ang kanyang gitara" Or lblchoice(Index).Caption = "Kulog" Or lblchoice(Index).Caption = "kasuotan" Or lblchoice(Index).Caption = "ibon" Or lblchoice(Index).Caption = "nagsusupetsa" Or lblchoice(Index).Caption = "Ang pagbukas at pagsara ng bibig" Or lblchoice(Index).Caption = "bibig" Or lblchoice(Index).Caption = "marahan" Or lblchoice(Index).Caption = "lumayo" Or lblchoice(Index).Caption = "Binigyan ng Reyna ng mga tunog ang bawat nilalang" Or lblchoice(Index).Caption = "lumipad" Or lblchoice(Index).Caption = "patinig" Or lblchoice(Index).Caption = "naglilibot" Or lblchoice(Index).Caption = "tama" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If
Case 2:
    If lblchoice(Index).Caption = "masaya" Or lblchoice(Index).Caption = "sinira" Or lblchoice(Index).Caption = "araw" Or lblchoice(Index).Caption = "tao" Or lblchoice(Index).Caption = "kawayan" Or lblchoice(Index).Caption = "ibon" Or lblchoice(Index).Caption = "makisig" Or lblchoice(Index).Caption = "sa daigdig" Or lblchoice(Index).Caption = "Pilipinas" Or lblchoice(Index).Caption = "Perlas ng Silangan" Or lblchoice(Index).Caption = "pangit" Or lblchoice(Index).Caption = "malakas at maganda" Or lblchoice(Index).Caption = "bituin" Or lblchoice(Index).Caption = "higante" Or lblchoice(Index).Caption = "Ang kanyang kamay" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If

Case 3:
    If lblchoice(Index).Caption = "sa ilog" Or lblchoice(Index).Caption = "dahil sa pagmamadaling makainom ng tubig sa ilog" Or lblchoice(Index).Caption = "isang kalapati" Or lblchoice(Index).Caption = " isang dahon" Or lblchoice(Index).Caption = "Ang matulungan si kalapati balang araw" Or lblchoice(Index).Caption = "isang bata" Or lblchoice(Index).Caption = "paa at binti" Or lblchoice(Index).Caption = "tulungan ang ating kapwa" Or lblchoice(Index).Caption = "Kinaibigan ng bata sina langgam at kalapati" Or lblchoice(Index).Caption = "bato" Or lblchoice(Index).Caption = "Kinain ng kalapati si langgam" Or lblchoice(Index).Caption = "Masaya si langgam habang siya ay nalulunod" Or lblchoice(Index).Caption = "naglalakad" Or lblchoice(Index).Caption = "namatay" Or lblchoice(Index).Caption = "Hindi tinulungan ni langgam ang kalapati" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If

Case 4:
    If lblchoice(Index).Caption = "lason" Or lblchoice(Index).Caption = "Namatay ang isang pulubi pagkatapos kumain ng lansones" Or lblchoice(Index).Caption = "pista ng nayon" Or lblchoice(Index).Caption = "pumitas ng mga bunga at kinain ito" Or lblchoice(Index).Caption = "kumain ng mga bunga" Or lblchoice(Index).Caption = "Ness" Or lblchoice(Index).Caption = "lansones" Or lblchoice(Index).Caption = "Pinagsamang lason at Ness" Or lblchoice(Index).Caption = "Dahil siya ay maganda" Or lblchoice(Index).Caption = "nakamamatay" Or lblchoice(Index).Caption = "nasarapan" Or lblchoice(Index).Caption = "pinitas" Or lblchoice(Index).Caption = "namatay" Or lblchoice(Index).Caption = "malinamnam" Or lblchoice(Index).Caption = "marikit" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If

Case 5:
    If lblchoice(Index).Caption = "Magkaaway" Or lblchoice(Index).Caption = "Dahil tag-araw at maraming pagkain" Or lblchoice(Index).Caption = "Dahil naghahanda siya sa tag-ulan" Or lblchoice(Index).Caption = "Tag-ulan" Or lblchoice(Index).Caption = "Tularan" Or lblchoice(Index).Caption = "Pagkain" Or lblchoice(Index).Caption = "Hindi binigyan ni Langgam si Tipaklong ng pagkain" Or lblchoice(Index).Caption = "Masaya" Or lblchoice(Index).Caption = "Busog" Or lblchoice(Index).Caption = "Masipag" Or lblchoice(Index).Caption = "Masipag" Or lblchoice(Index).Caption = "Tamad" Or lblchoice(Index).Caption = "Nagsasaya" Or lblchoice(Index).Caption = "Nakita ni Tipaklong si Langgam na nagsasaya " Or lblchoice(Index).Caption = "Nagbigay si Tipaklong ng pagkain kay Langgam" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If

Case 6:
    If lblchoice(Index).Caption = "kuneho" Or lblchoice(Index).Caption = "mabagal" Or lblchoice(Index).Caption = "mabilis" Or lblchoice(Index).Caption = "dahil mabagal si pagong" Or lblchoice(Index).Caption = "tumakbo" Or lblchoice(Index).Caption = "Dahil nakatulog si Kuneho" Or lblchoice(Index).Caption = "napansin" Or lblchoice(Index).Caption = "pagong" Or lblchoice(Index).Caption = "mayabang " Or lblchoice(Index).Caption = "kinalaban" Or lblchoice(Index).Caption = "Nag-unahan sa takbuhan" Or lblchoice(Index).Caption = "sa ilalim ng puno" Or lblchoice(Index).Caption = "Ang unang makarating sa dulo ng daan ang panalo" Or lblchoice(Index).Caption = "nagmadaling tumakbo" Or lblchoice(Index).Caption = "matiyaga" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If

Case 7:
    If lblchoice(Index).Caption = "mangisda" Or lblchoice(Index).Caption = "Nanguha ng mga sigay at kabibe" Or lblchoice(Index).Caption = "isang sirena" Or lblchoice(Index).Caption = "kalahating tao at kalahating isda" Or lblchoice(Index).Caption = "Ang tulungan si Nonoy na makakuha ng maraming isda" Or lblchoice(Index).Caption = "bulaklak" Or lblchoice(Index).Caption = "Dahil sa patuloy na paggamit ng dinamita ng mangingisda" Or lblchoice(Index).Caption = "Dahil sinisira ng mga dinamita ang mga bahay ng mga isda at pinapatay din ng dinamita ng mga isda" Or lblchoice(Index).Caption = "Alagaan natin ang ating kapaligiran" Or lblchoice(Index).Caption = "Totoy" Or lblchoice(Index).Caption = "tatlo" Or lblchoice(Index).Caption = "dinamita" Or lblchoice(Index).Caption = "Kapag tumigil sa paggamit ng dinamita ang mga mangingisda" Or lblchoice(Index).Caption = "Isinauli ang bato sa sirena" Or lblchoice(Index).Caption = "Si Nonoy at ang Sirena" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If

Case 8:
    If lblchoice(Index).Caption = "Ang kanyang pangbayo" Or lblchoice(Index).Caption = "Napakataas" Or lblchoice(Index).Caption = "sa Langit" Or lblchoice(Index).Caption = "Naiinis" Or lblchoice(Index).Caption = "Tumaas na ang langit ng hindi siya maabala sa kanyang ginagawa" Or lblchoice(Index).Caption = "Hindi nakita ng magsasaka ang kanyang pangbayo" Or lblchoice(Index).Caption = "Naistorbo" Or lblchoice(Index).Caption = "Nabali ang pangbayo" Or lblchoice(Index).Caption = "Tumaas ang langit" Or lblchoice(Index).Caption = "Palay" Or lblchoice(Index).Caption = "Pangbayo" Or lblchoice(Index).Caption = "Isang Nayon" Or lblchoice(Index).Caption = "Yamot" Or lblchoice(Index).Caption = "Nagbayo ng palay" Or lblchoice(Index).Caption = "Napakababa" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If

Case 9:
    If lblchoice(Index).Caption = "Maria at Cristina" Or lblchoice(Index).Caption = "Datu Karim" Or lblchoice(Index).Caption = "Pangit" Or lblchoice(Index).Caption = "Masama" Or lblchoice(Index).Caption = "sina Maria at Cristina" Or lblchoice(Index).Caption = "Muslim" Or lblchoice(Index).Caption = "Nagpakasal sina Maria at Cristina kay Datu Karim" Or lblchoice(Index).Caption = "Ang magkaroon ng maraming asawa ang isang Muslim" Or lblchoice(Index).Caption = "Tumalon sa isang bangin sina Maria at Cristina" Or lblchoice(Index).Caption = "Ang napakalinis na tubig-ilog" Or lblchoice(Index).Caption = "Talon ng Maria Cristina" Or lblchoice(Index).Caption = "Magkapatid" Or lblchoice(Index).Caption = "Pakasalan" Or lblchoice(Index).Caption = "Bangin" Or lblchoice(Index).Caption = "Namasyal" Then
        MsgBox "TAMA!", , "Quiz"
        score = score + 1
        Getrecords
    Else
        MsgBox "MALI!", , "quiz"
        Getrecords
    End If

End Select
End Sub

Private Sub lblchoice_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
lblchoice(Index).Appearance = 0
lblchoice(Index).BackColor = &HFFFF&
End Sub

