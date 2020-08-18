VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "TRAFFIC.COM"
   ClientHeight    =   6630
   ClientLeft      =   1500
   ClientTop       =   1665
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6630
   ScaleWidth      =   7200
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer5 
      Interval        =   1500
      Left            =   4560
      Top             =   120
   End
   Begin VB.Timer Timer4 
      Interval        =   50
      Left            =   2160
      Top             =   5280
   End
   Begin VB.Timer Timer3 
      Interval        =   50
      Left            =   5040
      Top             =   480
   End
   Begin VB.Timer Timer2 
      Interval        =   1500
      Left            =   840
      Top             =   0
   End
   Begin VB.Timer Timer1 
      Interval        =   1500
      Left            =   480
      Top             =   0
   End
   Begin VB.Image Image3 
      Height          =   3240
      Left            =   3720
      Picture         =   "TRAFFI~1.frx":0000
      Stretch         =   -1  'True
      Top             =   4680
      Width           =   675
   End
   Begin VB.Image Image8 
      Height          =   1335
      Left            =   5520
      Picture         =   "TRAFFI~1.frx":2976
      Stretch         =   -1  'True
      Top             =   4920
      Width           =   1815
   End
   Begin VB.Image Image7 
      Height          =   1335
      Left            =   5160
      Picture         =   "TRAFFI~1.frx":3D75
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1815
   End
   Begin VB.Image Image6 
      Height          =   1335
      Left            =   360
      Picture         =   "TRAFFI~1.frx":580E
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   1815
   End
   Begin VB.Image Image5 
      Height          =   1335
      Left            =   0
      Picture         =   "TRAFFI~1.frx":6E06
      Stretch         =   -1  'True
      Top             =   360
      Width           =   1815
   End
   Begin VB.Shape Shape12 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   6120
      Shape           =   3  'Circle
      Top             =   1680
      Width           =   495
   End
   Begin VB.Shape Shape11 
      BackColor       =   &H00004040&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   5640
      Shape           =   3  'Circle
      Top             =   1680
      Width           =   495
   End
   Begin VB.Shape Shape10 
      BackColor       =   &H00000040&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   5160
      Shape           =   3  'Circle
      Top             =   1680
      Width           =   495
   End
   Begin VB.Shape Shape9 
      BackColor       =   &H00000040&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   1440
      Shape           =   3  'Circle
      Top             =   4080
      Width           =   495
   End
   Begin VB.Shape Shape8 
      BackColor       =   &H00004040&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   960
      Shape           =   3  'Circle
      Top             =   4080
      Width           =   495
   End
   Begin VB.Shape Shape7 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   480
      Shape           =   3  'Circle
      Top             =   4080
      Width           =   495
   End
   Begin VB.Shape Shape6 
      BackColor       =   &H00004000&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   4560
      Shape           =   3  'Circle
      Top             =   5640
      Width           =   495
   End
   Begin VB.Shape Shape5 
      BackColor       =   &H00004040&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   4560
      Shape           =   3  'Circle
      Top             =   5160
      Width           =   495
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   4560
      Shape           =   3  'Circle
      Top             =   4680
      Width           =   495
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   2040
      Shape           =   3  'Circle
      Top             =   1080
      Width           =   495
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00004040&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   2040
      Shape           =   3  'Circle
      Top             =   600
      Width           =   495
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00004000&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   2040
      Shape           =   3  'Circle
      Top             =   120
      Width           =   495
   End
   Begin VB.Shape Shape101 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00008080&
      Height          =   615
      Index           =   1
      Left            =   5040
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Shape Shape101 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00008080&
      Height          =   615
      Index           =   0
      Left            =   360
      Top             =   3960
      Width           =   1695
   End
   Begin VB.Shape Shape100 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00008080&
      Height          =   1575
      Index           =   1
      Left            =   4440
      Top             =   4560
      Width           =   735
   End
   Begin VB.Shape Shape100 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00008080&
      Height          =   1575
      Index           =   0
      Left            =   1920
      Top             =   0
      Width           =   735
   End
   Begin VB.Shape Shape14 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   135
      Index           =   1
      Left            =   5640
      Top             =   3000
      Width           =   855
   End
   Begin VB.Shape Shape14 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   135
      Index           =   0
      Left            =   600
      Top             =   3000
      Width           =   855
   End
   Begin VB.Shape Shape13 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      Height          =   855
      Index           =   2
      Left            =   3480
      Top             =   5160
      Width           =   135
   End
   Begin VB.Shape Shape13 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      Height          =   855
      Index           =   0
      Left            =   3480
      Top             =   120
      Width           =   135
   End
   Begin VB.Image Image4 
      Height          =   1320
      Left            =   2760
      Picture         =   "TRAFFI~1.frx":AF11
      Stretch         =   -1  'True
      Top             =   120
      Width           =   615
   End
   Begin VB.Image Image2 
      Height          =   555
      Left            =   6600
      Picture         =   "TRAFFI~1.frx":D887
      Stretch         =   -1  'True
      Top             =   2280
      Width           =   705
   End
   Begin VB.Image Image1 
      Height          =   585
      Left            =   0
      Picture         =   "TRAFFI~1.frx":14933
      Stretch         =   -1  'True
      Top             =   3240
      Width           =   735
   End
   Begin VB.Line Line13 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4320
      X2              =   4320
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line12 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4200
      X2              =   4200
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line11 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   3960
      X2              =   3960
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line10 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   3840
      X2              =   3840
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line9 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   3600
      X2              =   3600
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line8 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   3480
      X2              =   3480
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line7 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   3240
      X2              =   3240
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line6 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   3120
      X2              =   3120
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line5 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   2760
      X2              =   2760
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line2 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   2880
      X2              =   2880
      Y1              =   3960
      Y2              =   4560
   End
   Begin VB.Line Line14 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   2280
      Y2              =   2280
   End
   Begin VB.Line Line30 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   3720
      Y2              =   3720
   End
   Begin VB.Line Line28 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Line Line27 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Line Line25 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Line Line24 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   3000
      Y2              =   3000
   End
   Begin VB.Line Line22 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line21 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line Line19 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   5040
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Line Line18 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   4440
      X2              =   4440
      Y1              =   2160
      Y2              =   3960
   End
   Begin VB.Line Line17 
      BorderColor     =   &H80000005&
      Index           =   1
      X1              =   5040
      X2              =   5040
      Y1              =   2160
      Y2              =   3960
   End
   Begin VB.Line Line14 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   2280
      Y2              =   2280
   End
   Begin VB.Line Line13 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   4320
      X2              =   4320
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line12 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   4200
      X2              =   4200
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line11 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   3960
      X2              =   3960
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line10 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   3840
      X2              =   3840
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line9 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   3600
      X2              =   3600
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line8 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   3480
      X2              =   3480
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line7 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   3240
      X2              =   3240
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line6 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   3120
      X2              =   3120
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line5 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2760
      X2              =   2760
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line3 
      BorderColor     =   &H80000005&
      X1              =   2040
      X2              =   2640
      Y1              =   3840
      Y2              =   3840
   End
   Begin VB.Line Line2 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2880
      X2              =   2880
      Y1              =   1560
      Y2              =   2160
   End
   Begin VB.Line Line30 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   3720
      Y2              =   3720
   End
   Begin VB.Line Line28 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Line Line27 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Line Line25 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Line Line24 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   3000
      Y2              =   3000
   End
   Begin VB.Line Line22 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line21 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line Line19 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2640
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Line Line18 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2040
      X2              =   2040
      Y1              =   2160
      Y2              =   3960
   End
   Begin VB.Line Line17 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2640
      X2              =   2640
      Y1              =   2160
      Y2              =   3960
   End
   Begin VB.Line Line4 
      BorderColor     =   &H80000005&
      Index           =   7
      X1              =   2640
      X2              =   4440
      Y1              =   3960
      Y2              =   3960
   End
   Begin VB.Line Line4 
      BorderColor     =   &H80000005&
      Index           =   4
      X1              =   2640
      X2              =   4440
      Y1              =   4560
      Y2              =   4560
   End
   Begin VB.Line Line4 
      BorderColor     =   &H80000005&
      Index           =   3
      X1              =   2640
      X2              =   4440
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Line Line4 
      BorderColor     =   &H80000005&
      Index           =   0
      X1              =   2640
      X2              =   4440
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000006&
      Index           =   7
      X1              =   4440
      X2              =   4440
      Y1              =   6120
      Y2              =   3960
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000006&
      Index           =   6
      X1              =   4440
      X2              =   4440
      Y1              =   2160
      Y2              =   -120
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000006&
      Index           =   5
      X1              =   2640
      X2              =   2640
      Y1              =   6120
      Y2              =   3960
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000006&
      Index           =   4
      X1              =   2640
      X2              =   2640
      Y1              =   2160
      Y2              =   0
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000006&
      Index           =   3
      X1              =   4440
      X2              =   7080
      Y1              =   3960
      Y2              =   3960
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000006&
      Index           =   2
      X1              =   4440
      X2              =   7080
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000006&
      Index           =   1
      X1              =   0
      X2              =   2640
      Y1              =   3960
      Y2              =   3960
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000006&
      Index           =   0
      X1              =   120
      X2              =   2760
      Y1              =   2160
      Y2              =   2160
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X As Integer
Dim Y As Integer


Private Sub Frame3_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub Image3_Click()
Image1.Left = Image1.Left + 50
End Sub

Private Sub Timer1_Timer()

If X = 1 Then
Shape1.BackColor = &H4000&
Shape6.BackColor = &H4000&
Shape2.BackColor = &H4040&
Shape5.BackColor = &H4040&
Shape3.BackColor = &HFF&
Shape4.BackColor = &HFF&
ElseIf X = 6 Then
Shape1.BackColor = &HFF00&
Shape6.BackColor = &HFF00&
Shape2.BackColor = &H4040&
Shape5.BackColor = &H4040&
Shape3.BackColor = &H40&
Shape4.BackColor = &H40&
ElseIf X = 10 Then
Shape1.BackColor = &H4000&
Shape6.BackColor = &H4000&
Shape2.BackColor = &HFFFF&
Shape5.BackColor = &HFFFF&
Shape3.BackColor = &H40&
Shape4.BackColor = &H40&
End If


X = X + 1
If X = 11 Then
X = 1
End If


End Sub

Private Sub Timer2_Timer()
If Y = 1 Then
Shape7.BackColor = &HFF00&
Shape12.BackColor = &HFF00&
Shape8.BackColor = &H4040&
Shape11.BackColor = &H4040&
Shape9.BackColor = &H40&
Shape10.BackColor = &H40&
ElseIf Y = 5 Then
Shape7.BackColor = &H4000&
Shape12.BackColor = &H4000&
Shape8.BackColor = &HFFFF&
Shape11.BackColor = &HFFFF&
Shape9.BackColor = &H40&
Shape10.BackColor = &H40&
ElseIf Y = 6 Then
Shape7.BackColor = &H4000&
Shape12.BackColor = &H4000&
Shape8.BackColor = &H4040&
Shape11.BackColor = &H4040&
Shape9.BackColor = &HFF&
Shape10.BackColor = &HFF&
End If


Y = Y + 1
If Y = 11 Then
Y = 1
End If

End Sub

Private Sub Timer3_Timer()
If Shape1.BackColor = &HFF00& Then
Image3.Top = Image3.Top - 200
Image4.Top = Image4.Top + 200
    If (Image3.Top <= -600) And (Image4.Top >= 6120) Then
    Image3.Top = 5400
    Image4.Top = -480
    End If
ElseIf (Shape2.BackColor = &HFFFF&) And (Image3.Top <= 4560) And (Image4.Top >= 720) Then
Image4.Top = Image4.Top + 200
Image3.Top = Image3.Top - 200
ElseIf (Shape3.BackColor = &HFF&) And (Image3.Top <= 4560) And (Image4.Top >= 720) Then
Image3.Top = Image3.Top - 200
Image4.Top = Image4.Top + 200
    If (Image3.Top <= -600) And (Image4.Top >= 6120) Then
    Image3.Top = 5400
    Image4.Top = -480
    End If
ElseIf (Shape3.BackColor = &HFF&) And (Image3.Top > 4680) And (Image4.Top < 600) Then
Image3.Top = Image3.Top - 50
Image4.Top = Image4.Top + 70
End If

End Sub

Private Sub Timer4_Timer()

If Shape7.BackColor = &HFF00& Then
Image1.Left = Image1.Left + 100
Image2.Left = Image2.Left - 100
    If (Image1.Left >= 7200) And (Image2.Left <= -600) Then
    Image1.Left = -600
    Image2.Left = 6960
    End If
ElseIf (Shape8.BackColor = &HFFFF&) And (Image1.Left >= 1200) And (Image2.Left <= 5160) Then
Image1.Left = Image1.Left + 100
Image2.Left = Image2.Left - 100
ElseIf (Shape9.BackColor = &HFF&) And (Image1.Left >= 1320) And (Image2.Left <= 2160) Then
Image1.Left = Image1.Left + 100
Image2.Left = Image2.Left - 100
    If (Image1.Left >= 7200) And (Image2.Left <= -600) Then
    Image1.Left = -600
    Image2.Left = 6960
    End If
ElseIf (Shape9.BackColor = &HFF&) And (Image2.Left < 1200) And (Image1.Left > 5160) Then
Image2.Left = Image1.Left + 50
Image1.Left = Image1.Left - 50
End If
End Sub
