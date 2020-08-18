VERSION 5.00
Begin VB.Form frmPzzle 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "puzzle"
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
      Left            =   10200
      TabIndex        =   18
      Top             =   8880
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   7
      Left            =   10320
      TabIndex        =   17
      Top             =   1200
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   6
      Left            =   9720
      TabIndex        =   16
      Top             =   1200
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   5
      Left            =   9120
      TabIndex        =   15
      Top             =   1200
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   4
      Left            =   8520
      TabIndex        =   14
      Top             =   1200
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   3
      Left            =   10320
      TabIndex        =   13
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   2
      Left            =   9720
      TabIndex        =   12
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   1
      Left            =   9120
      TabIndex        =   11
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   8
      Left            =   10920
      TabIndex        =   10
      Top             =   960
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   0
      Left            =   8520
      TabIndex        =   9
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   8
      Left            =   6720
      TabIndex        =   8
      Top             =   600
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   7
      Left            =   6000
      TabIndex        =   7
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   6
      Left            =   5400
      TabIndex        =   6
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   5
      Left            =   4680
      TabIndex        =   5
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   4
      Left            =   3960
      TabIndex        =   4
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   3
      Left            =   6000
      TabIndex        =   3
      Top             =   360
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   2
      Left            =   5400
      TabIndex        =   2
      Top             =   360
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   1
      Left            =   4680
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
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   8
      Left            =   8280
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   1335
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   7
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   1335
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   6
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   1335
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   5
      Left            =   8280
      Stretch         =   -1  'True
      Top             =   5640
      Width           =   1335
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   4
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   5640
      Width           =   1335
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   3
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   5640
      Width           =   1335
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   2
      Left            =   8280
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   1335
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   1
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   1335
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   0
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   8
      Left            =   10440
      Stretch         =   -1  'True
      Top             =   7080
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   7
      Left            =   10440
      Stretch         =   -1  'True
      Top             =   5640
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   6
      Left            =   10440
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   5
      Left            =   8400
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   4
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   3
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   2
      Left            =   3720
      Stretch         =   -1  'True
      Top             =   7080
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   1
      Left            =   3720
      Stretch         =   -1  'True
      Top             =   5640
      Width           =   1335
   End
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Index           =   0
      Left            =   3720
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
Attribute VB_Name = "frmpzzle"
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
frmMain.Show
End Sub

Private Sub image2_Click(Index As Integer)
If Image2(Index).Picture = LoadPicture() Then

    For x = 0 To 8
        If Image3(x).Appearance = 0 Then
            Image2(Index).Picture = Image3(x).Picture
            Text1(Index).Text = Text2(x).Text
            Image3(x).Appearance = 1
            Image3(x).Picture = LoadPicture()
            Text2(x).Text = ""
        ElseIf x <> Index Then
            If Image2(x).Appearance = 0 Then
                Image2(Index).Picture = Image2(x).Picture
                Text1(Index).Text = Text1(x).Text
                Image2(x).Appearance = 1
                Image2(x).Picture = LoadPicture()
                Text1(x).Text = ""
            End If
            
        End If
    Next
Else
Select Case Index
    Case 0
        Image2(0).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next
            End If
        Next
    Case 1
        Image2(1).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next

            End If
        Next
    Case 2
        Image2(2).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next
            
            End If
        Next
    Case 3
        Image2(3).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next
            
            End If
        Next
    Case 4
        Image2(4).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next
            
            End If
        Next
    Case 5
        Image2(5).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next
            
            End If
        Next
    Case 6
        Image2(6).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next
            
            End If
        Next
    Case 7
        Image2(7).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next
            
            End If
        Next
    Case 8
        Image2(8).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image2(x).Appearance = 1
                
                For y = 0 To 8
                    Image3(y).Appearance = 1
                Next
            
            End If
        Next
End Select
End If
End Sub



Private Sub image3_Click(Index As Integer)






If Image3(Index).Picture = LoadPicture() Then
    For x = 0 To 8
        If Image2(x).Appearance = 0 Then
            Image3(Index).Picture = Image2(x).Picture
            Text2(Index).Text = Text1(x).Text
            Image2(x).Appearance = 1
            Image2(x).Picture = LoadPicture()
            Text1(x).Text = ""
        ElseIf x <> Index Then
            If Image3(x).Appearance = 0 Then
                Image3(Index).Picture = Image3(x).Picture
                Text2(Index).Text = Text2(x).Text
                Image3(x).Appearance = 1
                Image3(x).Picture = LoadPicture()
                Text2(x).Text = ""
            End If
            

        End If
    Next
Else

Select Case Index
    Case 0
        Image3(0).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
    Case 1
        Image3(1).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
    Case 2
        Image3(2).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
    Case 3
        Image3(3).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
    Case 4
        Image3(4).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
    Case 5
        Image3(5).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
    Case 6
        Image3(6).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
    Case 7
        Image3(7).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
    Case 8
        Image3(8).Appearance = 0
        For x = 0 To 8
            If x <> Index Then
                Image3(x).Appearance = 1
                
                For y = 0 To 8
                    Image2(y).Appearance = 1
                Next
            
            End If
        Next
End Select

End If


For looper = 1 To 9
If Text2(looper - 1).Text = Trim(Str(looper)) Then
    If looper = 9 Then
       MsgBox "Congratulations! You Have Solved The Puzzle!", , "Puzzle(Click Mode)"
       If MsgBox("Would You Like to Play  Again?", vbYesNo, "Puzzle(Click Mode)") = vbYes Then
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
For x = 0 To 8
Image2(x).Picture = LoadPicture()
Image3(x).Picture = LoadPicture()
Text1(x).Text = ""
Text2(x).Text = ""
Next

End Sub
