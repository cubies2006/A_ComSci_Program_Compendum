VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Select Puzzle"
   ClientHeight    =   5160
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10470
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   5160
   ScaleWidth      =   10470
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdquit 
      Caption         =   "&Back"
      Height          =   735
      Left            =   7680
      TabIndex        =   1
      Top             =   4200
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   9
      Left            =   8400
      Picture         =   "Main.frx":0000
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   8
      Left            =   8400
      Picture         =   "Main.frx":9503
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   7
      Left            =   6360
      Picture         =   "Main.frx":E4E1
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   6
      Left            =   6360
      Picture         =   "Main.frx":19C18
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   5
      Left            =   4320
      Picture         =   "Main.frx":225AD
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   4
      Left            =   4320
      Picture         =   "Main.frx":288E5
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   3
      Left            =   2280
      Picture         =   "Main.frx":2F9DA
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   2
      Left            =   2280
      Picture         =   "Main.frx":39F1C
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   1
      Left            =   240
      Picture         =   "Main.frx":45DF8
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1875
   End
   Begin VB.Image Image1 
      Height          =   1125
      Index           =   0
      Left            =   240
      Picture         =   "Main.frx":4B265
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   1875
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim x As Integer
Dim y As Integer
Dim rndm As Integer
Dim x1 As Integer
Dim x2 As Integer
Dim x3 As Integer
Dim x4 As Integer
Dim x5 As Integer
Dim x6 As Integer
Dim x7 As Integer
Dim x8 As Integer
Dim x9 As Integer
Dim looper As Integer
Dim looper1 As Integer
Dim num As Integer












Private Sub cmdquit_Click()
Unload Me
frmGselect.Show
End Sub

Private Sub Image1_Click(Index As Integer)
x1 = 0
x2 = 0
x3 = 0
x4 = 0
x5 = 0
x6 = 0
x7 = 0
x8 = 0
x9 = 0
If Text1.Text = "1" Then
Image1(Index).BorderStyle = 1

frmpzzle.Show

frmpzzle.Image1.Picture = LoadPicture("C:\Documents and Settings\Santos\Desktop\Pics\PicMain" & Trim(Str(Index)) & ".jpg")

Call Randomize
For looper = 0 To 8



For looper1 = 0 To 1
rndm = Int(Rnd * 9 + 1)
If rndm = 1 Then
    If x1 = 1 Then
        looper1 = 0
    Else
        x1 = 1
        frmpzzle.Text1(looper).Text = 1
        Exit For
    End If
ElseIf rndm = 2 Then
    If x2 = 2 Then
        looper1 = 0
    Else
        x2 = 2
        frmpzzle.Text1(looper).Text = 2
        Exit For
    End If
ElseIf rndm = 3 Then
    If x3 = 3 Then
        looper1 = 0
    Else
        x3 = 3
        frmpzzle.Text1(looper).Text = 3
        Exit For
    End If
ElseIf rndm = 4 Then
    If x4 = 4 Then
        looper1 = 0
    Else
        x4 = 4
        frmpzzle.Text1(looper).Text = 4
        Exit For
    End If
ElseIf rndm = 5 Then
    If x5 = 5 Then
        looper1 = 0
    Else
        x5 = 5
        frmpzzle.Text1(looper).Text = 5
        Exit For
    End If
ElseIf rndm = 6 Then
    If x6 = 6 Then
        looper1 = 0
    Else
        x6 = 6
        frmpzzle.Text1(looper).Text = 6
        Exit For
        
    End If
ElseIf rndm = 7 Then
    If x7 = 7 Then
        looper1 = 0
    Else
        x7 = 7
        frmpzzle.Text1(looper).Text = 7
        Exit For
    End If
ElseIf rndm = 8 Then
    If x8 = 8 Then
        looper1 = 0
    Else
        x8 = 8
        frmpzzle.Text1(looper).Text = 8
        Exit For
    End If
ElseIf rndm = 9 Then
    If x9 = 9 Then
        looper1 = 0
    Else
        x9 = 9
        frmpzzle.Text1(looper).Text = 9
        Exit For
    End If
End If


Next




    frmpzzle.Image2(looper).Picture = LoadPicture("C:\Documents and Settings\Santos\Desktop\Pics\Pic" & Trim(Str(Index)) & "\Pic" & Trim(Str(rndm)) & ".jpg")

Next
frmMain.Hide

Else

Image1(Index).BorderStyle = 1

frmPzzle1.Show

frmPzzle1.Image1.Picture = LoadPicture("C:\Documents and Settings\Santos\Desktop\Pics\PicMain" & Trim(Str(Index)) & ".jpg")

Call Randomize
For looper = 0 To 7



For looper1 = 0 To 1
rndm = Int(Rnd * 8 + 1)
If rndm = 1 Then
    If x1 = 1 Then
        looper1 = 0
    Else
        x1 = 1
        frmPzzle1.Text1(looper).Text = 1
        Exit For
    End If
ElseIf rndm = 2 Then
    If x2 = 2 Then
        looper1 = 0
    Else
        x2 = 2
        frmPzzle1.Text1(looper).Text = 2
        Exit For
    End If
ElseIf rndm = 3 Then
    If x3 = 3 Then
        looper1 = 0
    Else
        x3 = 3
        frmPzzle1.Text1(looper).Text = 3
        Exit For
    End If
ElseIf rndm = 4 Then
    If x4 = 4 Then
        looper1 = 0
    Else
        x4 = 4
        frmPzzle1.Text1(looper).Text = 4
        Exit For
    End If
ElseIf rndm = 5 Then
    If x5 = 5 Then
        looper1 = 0
    Else
        x5 = 5
        frmPzzle1.Text1(looper).Text = 5
        Exit For
    End If
ElseIf rndm = 6 Then
    If x6 = 6 Then
        looper1 = 0
    Else
        x6 = 6
        frmPzzle1.Text1(looper).Text = 6
        Exit For
        
    End If
ElseIf rndm = 7 Then
    If x7 = 7 Then
        looper1 = 0
    Else
        x7 = 7
        frmPzzle1.Text1(looper).Text = 7
        Exit For
    End If
ElseIf rndm = 8 Then
    If x8 = 8 Then
        looper1 = 0
    Else
        x8 = 8
        frmPzzle1.Text1(looper).Text = 8
        Exit For
    End If
End If


Next




    frmPzzle1.Image2(looper).Picture = LoadPicture("C:\Documents and Settings\Santos\Desktop\Pics\Pic" & Trim(Str(Index)) & "\Pic" & Trim(Str(rndm)) & ".jpg")

Next


End If
frmMain.Hide
End Sub
