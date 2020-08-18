VERSION 5.00
Begin VB.Form frmPzzle1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "puzzle(Slide Mode)"
   ClientHeight    =   10065
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12930
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   10065
   ScaleWidth      =   12930
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdquit 
      Caption         =   "&Quit"
      Height          =   735
      Left            =   10320
      TabIndex        =   18
      Top             =   8760
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   8
      Left            =   10080
      TabIndex        =   17
      Text            =   "0"
      Top             =   1080
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   8
      Left            =   4920
      TabIndex        =   16
      Top             =   1080
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   0
      Left            =   7680
      TabIndex        =   15
      Text            =   "1"
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   1
      Left            =   8280
      TabIndex        =   14
      Text            =   "2"
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   2
      Left            =   8880
      TabIndex        =   13
      Text            =   "3"
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   3
      Left            =   9480
      TabIndex        =   12
      Text            =   "4"
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   4
      Left            =   7680
      TabIndex        =   11
      Text            =   "5"
      Top             =   1320
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   5
      Left            =   8280
      TabIndex        =   10
      Text            =   "6"
      Top             =   1320
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   6
      Left            =   8880
      TabIndex        =   9
      Text            =   "7"
      Top             =   1320
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   7
      Left            =   9480
      TabIndex        =   8
      Text            =   "8"
      Top             =   1320
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   7
      Left            =   4440
      TabIndex        =   7
      Top             =   1080
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   6
      Left            =   3960
      TabIndex        =   6
      Top             =   1080
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   5
      Left            =   4920
      TabIndex        =   5
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   4
      Left            =   4440
      TabIndex        =   4
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   3
      Left            =   3960
      TabIndex        =   3
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   2
      Left            =   4920
      TabIndex        =   2
      Top             =   360
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   1
      Left            =   4440
      TabIndex        =   1
      Top             =   360
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   0
      Left            =   3960
      TabIndex        =   0
      Top             =   360
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Image Image3 
      Height          =   3975
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   3975
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   8
      Left            =   8280
      Stretch         =   -1  'True
      Top             =   6840
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   7
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   6840
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   6
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   6840
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   5
      Left            =   8280
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   4
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   3
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   2
      Left            =   8280
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   1
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   0
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   1935
      Left            =   600
      Stretch         =   -1  'True
      Top             =   480
      Width           =   2655
   End
End
Attribute VB_Name = "frmPzzle1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim z As Integer
Dim temp As Integer
Dim looping As Integer
Dim x As Integer

Private Sub cmdquit_Click()
Unload Me
frmMain.Show
End Sub

Private Sub Form_Load()

Image3 = Image1
Image3.Visible = False
End Sub

Private Sub image2_Click(Index As Integer)
Select Case Index
Case 0:
    If Image2(Index + 1) = LoadPicture() Then
        Image2(Index + 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 1).Text)
        Text1(Index + 1) = Text1(Index)
        Text1(Index).Text = temp
    ElseIf Image2(Index + 3) = LoadPicture() Then
        Image2(Index + 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 3).Text)
        Text1(Index + 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
Case 1:
    If Image2(Index + 1) = LoadPicture() Then
        Image2(Index + 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 1).Text)
        Text1(Index + 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 1) = LoadPicture() Then
        Image2(Index - 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 1).Text)
        Text1(Index - 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index + 3) = LoadPicture() Then
        Image2(Index + 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 3).Text)
        Text1(Index + 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
Case 2:
    If Image2(Index - 1) = LoadPicture() Then
        Image2(Index - 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 1).Text)
        Text1(Index - 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index + 3) = LoadPicture() Then
        Image2(Index + 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 3).Text)
        Text1(Index + 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
Case 3:
    If Image2(Index + 1) = LoadPicture() Then
        Image2(Index + 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 1).Text)
        Text1(Index + 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index + 3) = LoadPicture() Then
        Image2(Index + 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 3).Text)
        Text1(Index + 3) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 3) = LoadPicture() Then
        Image2(Index - 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 3).Text)
        Text1(Index - 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
Case 4:
    If Image2(Index + 1) = LoadPicture() Then
        Image2(Index + 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 1).Text)
        Text1(Index + 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 1) = LoadPicture() Then
        Image2(Index - 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 1).Text)
        Text1(Index - 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index + 3) = LoadPicture() Then
        Image2(Index + 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 3).Text)
        Text1(Index + 3) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 3) = LoadPicture() Then
        Image2(Index - 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 3).Text)
        Text1(Index - 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
Case 5:
    If Image2(Index - 1) = LoadPicture() Then
        Image2(Index - 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 1).Text)
        Text1(Index - 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index + 3) = LoadPicture() Then
        Image2(Index + 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 3).Text)
        Text1(Index + 3) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 3) = LoadPicture() Then
        Image2(Index - 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        Val (temp = Text1(Index - 3).Text)
        Text1(Index - 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
Case 6:
    If Image2(Index + 1) = LoadPicture() Then
        Image2(Index + 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 1).Text)
        Text1(Index + 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 3) = LoadPicture() Then
        Image2(Index - 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 3).Text)
        Text1(Index - 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
Case 7:
    If Image2(Index + 1) = LoadPicture() Then
        Image2(Index + 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index + 1).Text)
        Text1(Index + 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 1) = LoadPicture() Then
        Image2(Index - 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 1).Text)
        Text1(Index - 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 3) = LoadPicture() Then
        Image2(Index - 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 3).Text)
        Text1(Index - 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
Case 8:
    If Image2(Index - 1) = LoadPicture() Then
        Image2(Index - 1) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 1).Text)
        Text1(Index - 1) = Text1(Index)
        Text1(Index).Text = temp

    ElseIf Image2(Index - 3) = LoadPicture() Then
        Image2(Index - 3) = Image2(Index)
        Image2(Index) = LoadPicture()
        temp = Val(Text1(Index - 3).Text)
        Text1(Index - 3) = Text1(Index)
        Text1(Index).Text = temp

    End If
End Select



For looping = 0 To 8
If Text1(looping).Text = Text2(looping).Text Then
    If looping = 8 Then
    For z = 0 To 8
        Image2(z).Visible = False
    Next
    Image3.Visible = True
        Image3.Picture = Image1.Picture
        MsgBox "Congratulations! You Have Solved The Puzzle!", , "Puzzle(Slide Mode)"
        If MsgBox("Would You Like to Play  Again?", vbYesNo, "Puzzle(Slide Mode)") = vbYes Then
            blanko
            frmMain.Show
            Unload Me
        Else
            frmGselect.Show
            Unload Me
        End If

        
    End If
Else
    Exit For
End If
Next
End Sub

Private Sub blanko()
Image1.Picture = LoadPicture()
Image3.Picture = LoadPicture()
For x = 0 To 8
Image2(x).Picture = LoadPicture()

Text1(x).Text = ""
Text2(x).Text = ""
Next

End Sub
