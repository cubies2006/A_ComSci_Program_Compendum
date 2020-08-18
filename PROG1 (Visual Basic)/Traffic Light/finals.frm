VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000009&
   ClientHeight    =   5205
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6120
   LinkTopic       =   "Form1"
   ScaleHeight     =   5205
   ScaleWidth      =   6120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   11160
      Top             =   3120
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   11160
      Top             =   3720
   End
   Begin VB.Line Line36 
      BorderStyle     =   2  'Dash
      X1              =   6240
      X2              =   11880
      Y1              =   4440
      Y2              =   8640
   End
   Begin VB.Line Line35 
      BorderStyle     =   2  'Dash
      X1              =   0
      X2              =   5760
      Y1              =   0
      Y2              =   4080
   End
   Begin VB.Shape Shape24 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   5160
      Width           =   255
   End
   Begin VB.Line Line34 
      BorderWidth     =   5
      X1              =   6480
      X2              =   6480
      Y1              =   6120
      Y2              =   5520
   End
   Begin VB.Shape Shape23 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   7680
      Shape           =   3  'Circle
      Top             =   6240
      Width           =   255
   End
   Begin VB.Line Line33 
      BorderWidth     =   5
      X1              =   7800
      X2              =   7800
      Y1              =   7200
      Y2              =   6600
   End
   Begin VB.Shape Shape22 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   7560
      Width           =   255
   End
   Begin VB.Line Line32 
      BorderWidth     =   5
      X1              =   9360
      X2              =   9360
      Y1              =   8520
      Y2              =   7920
   End
   Begin VB.Shape Shape21 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   0
      Shape           =   3  'Circle
      Top             =   5640
      Width           =   255
   End
   Begin VB.Line Line31 
      BorderWidth     =   5
      X1              =   120
      X2              =   120
      Y1              =   6600
      Y2              =   6000
   End
   Begin VB.Shape Shape20 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   6480
      Shape           =   3  'Circle
      Top             =   1680
      Width           =   255
   End
   Begin VB.Line Line30 
      BorderWidth     =   5
      X1              =   6600
      X2              =   6600
      Y1              =   2640
      Y2              =   2040
   End
   Begin VB.Shape Shape19 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   11040
      Shape           =   3  'Circle
      Top             =   240
      Width           =   255
   End
   Begin VB.Line Line29 
      BorderWidth     =   5
      X1              =   11160
      X2              =   11160
      Y1              =   1200
      Y2              =   600
   End
   Begin VB.Shape Shape18 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   9600
      Shape           =   3  'Circle
      Top             =   1440
      Width           =   255
   End
   Begin VB.Line Line28 
      BorderWidth     =   5
      X1              =   9720
      X2              =   9720
      Y1              =   2400
      Y2              =   1800
   End
   Begin VB.Shape Shape17 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   9960
      Shape           =   3  'Circle
      Top             =   -120
      Width           =   255
   End
   Begin VB.Line Line26 
      BorderWidth     =   5
      X1              =   8520
      X2              =   8520
      Y1              =   1440
      Y2              =   840
   End
   Begin VB.Shape Shape16 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape15 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   1920
      Shape           =   3  'Circle
      Top             =   -120
      Width           =   255
   End
   Begin VB.Line Line24 
      BorderWidth     =   5
      X1              =   10080
      X2              =   10080
      Y1              =   5640
      Y2              =   5040
   End
   Begin VB.Shape Shape14 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   9960
      Shape           =   3  'Circle
      Top             =   4680
      Width           =   255
   End
   Begin VB.Line Line23 
      BorderWidth     =   5
      X1              =   3480
      X2              =   3480
      Y1              =   1560
      Y2              =   960
   End
   Begin VB.Shape Shape13 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   600
      Width           =   255
   End
   Begin VB.Line Line22 
      BorderWidth     =   5
      X1              =   8520
      X2              =   8520
      Y1              =   4680
      Y2              =   4080
   End
   Begin VB.Shape Shape12 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   3720
      Width           =   255
   End
   Begin VB.Line Line21 
      BorderWidth     =   5
      X1              =   5280
      X2              =   5280
      Y1              =   2640
      Y2              =   2040
   End
   Begin VB.Shape Shape11 
      BackColor       =   &H00FFFFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   5160
      Shape           =   3  'Circle
      Top             =   1680
      Width           =   255
   End
   Begin VB.Shape Shape10 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   600
      Shape           =   3  'Circle
      Top             =   360
      Width           =   255
   End
   Begin VB.Line Line20 
      BorderWidth     =   5
      X1              =   720
      X2              =   720
      Y1              =   1200
      Y2              =   720
   End
   Begin VB.Shape Shape9 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   8040
      Shape           =   3  'Circle
      Top             =   2880
      Width           =   255
   End
   Begin VB.Line Line19 
      BorderWidth     =   5
      X1              =   8160
      X2              =   8160
      Y1              =   3720
      Y2              =   3120
   End
   Begin VB.Shape Shape8 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   2040
      Shape           =   3  'Circle
      Top             =   1440
      Width           =   255
   End
   Begin VB.Line Line18 
      BorderWidth     =   5
      X1              =   2160
      X2              =   2160
      Y1              =   2400
      Y2              =   1800
   End
   Begin VB.Shape Shape7 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   5280
      Shape           =   3  'Circle
      Top             =   5160
      Width           =   255
   End
   Begin VB.Line Line17 
      BorderWidth     =   5
      X1              =   5400
      X2              =   5400
      Y1              =   6000
      Y2              =   5400
   End
   Begin VB.Shape Shape6 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3480
      Shape           =   3  'Circle
      Top             =   2760
      Width           =   255
   End
   Begin VB.Line Line16 
      BorderWidth     =   5
      X1              =   3600
      X2              =   3600
      Y1              =   3720
      Y2              =   3120
   End
   Begin VB.Shape Shape5 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   6120
      Width           =   255
   End
   Begin VB.Line Line15 
      BorderWidth     =   5
      X1              =   4080
      X2              =   4080
      Y1              =   7200
      Y2              =   6480
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   3840
      Width           =   255
   End
   Begin VB.Line Line8 
      BorderWidth     =   5
      X1              =   3360
      X2              =   3360
      Y1              =   4680
      Y2              =   4200
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H000000C0&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   2280
      Shape           =   3  'Circle
      Top             =   7560
      Width           =   255
   End
   Begin VB.Line Line6 
      BorderWidth     =   5
      X1              =   2400
      X2              =   2400
      Y1              =   8520
      Y2              =   7920
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   1800
      Shape           =   3  'Circle
      Top             =   4560
      Width           =   255
   End
   Begin VB.Line Line1 
      BorderWidth     =   5
      X1              =   1920
      X2              =   1920
      Y1              =   5520
      Y2              =   4920
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00000080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   11520
      Shape           =   3  'Circle
      Top             =   5760
      Width           =   255
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      X1              =   11640
      X2              =   11640
      Y1              =   6600
      Y2              =   6000
   End
   Begin VB.Line Line14 
      BorderColor     =   &H00800000&
      BorderWidth     =   5
      X1              =   5880
      X2              =   10920
      Y1              =   3120
      Y2              =   0
   End
   Begin VB.Line Line13 
      BorderColor     =   &H00800000&
      BorderWidth     =   5
      X1              =   7680
      X2              =   11880
      Y1              =   4200
      Y2              =   600
   End
   Begin VB.Line Line12 
      BorderColor     =   &H00800000&
      BorderWidth     =   5
      X1              =   2400
      X2              =   5880
      Y1              =   8520
      Y2              =   5640
   End
   Begin VB.Line Line11 
      BorderColor     =   &H00800000&
      BorderWidth     =   5
      X1              =   0
      X2              =   4200
      Y1              =   6720
      Y2              =   4200
   End
   Begin VB.Line Line10 
      BorderColor     =   &H00800000&
      BorderWidth     =   5
      X1              =   5880
      X2              =   9360
      Y1              =   5640
      Y2              =   8520
   End
   Begin VB.Line Line9 
      BorderColor     =   &H00800000&
      BorderWidth     =   5
      X1              =   0
      X2              =   4200
      Y1              =   600
      Y2              =   4200
   End
   Begin VB.Line Line7 
      BorderColor     =   &H00800000&
      BorderWidth     =   5
      X1              =   7680
      X2              =   11760
      Y1              =   4200
      Y2              =   6720
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00800000&
      BorderWidth     =   5
      X1              =   960
      X2              =   5880
      Y1              =   0
      Y2              =   3120
   End
   Begin VB.Image Image2 
      Height          =   2160
      Left            =   9360
      Picture         =   "finals.frx":0000
      Stretch         =   -1  'True
      Top             =   6360
      Width           =   2400
   End
   Begin VB.Line Line4 
      BorderStyle     =   2  'Dash
      X1              =   0
      X2              =   11880
      Y1              =   8520
      Y2              =   0
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   11160
      Picture         =   "finals.frx":0479
      Stretch         =   -1  'True
      Top             =   360
      Width           =   480
   End
   Begin VB.Line Line25 
      BorderWidth     =   5
      X1              =   2040
      X2              =   2040
      Y1              =   720
      Y2              =   120
   End
   Begin VB.Line Line27 
      BorderWidth     =   5
      X1              =   10080
      X2              =   10080
      Y1              =   480
      Y2              =   120
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
Form1.Caption = Time & " " & Date  'For the time and date...
End Sub


Private Sub Timer1_Timer()
For b = 255 To 1 Step -1
Form1.Caption = d
Image1.Height = Image1.Height + 5 ' for the size of the image 1
Image1.Width = Image1.Width + 5
Image1.Top = Image1.Top + 25 'for the movement ng image 1
Image1.Left = Image1.Left - 38
Image2.Height = Image2.Height - 5 'for the size ng image 2
Image2.Width = Image2.Width - 5
Image2.Top = Image2.Top - 25 'movement ng image 2
Image2.Left = Image2.Left - 35
Form1.BackColor = RGB(b, b, b) ' for the background to fade...
Shape1.FillColor = RGB(255, 255, b) ' for the color of the street lights
Shape2.FillColor = RGB(255, 255, b) ' about this... redundancy ... it can be omitted ... thru ... arrays
Shape3.FillColor = RGB(255, 255, b)
Shape4.FillColor = RGB(255, 255, b)
Shape5.FillColor = RGB(255, 255, b)
Shape6.FillColor = RGB(255, 255, b)
Shape7.FillColor = RGB(255, 255, b)
Shape8.FillColor = RGB(255, 255, b)
Shape9.FillColor = RGB(255, 255, b)
Shape10.FillColor = RGB(255, 255, b)
Shape11.FillColor = RGB(255, 255, b)
Shape12.FillColor = RGB(255, 255, b)
Shape13.FillColor = RGB(255, 255, b)
Shape14.FillColor = RGB(255, 255, b)
Shape15.FillColor = RGB(255, 255, b)
Shape16.FillColor = RGB(255, 255, b)
Shape17.FillColor = RGB(255, 255, b)
Shape18.FillColor = RGB(255, 255, b)
Shape19.FillColor = RGB(255, 255, b)
Shape20.FillColor = RGB(255, 255, b)
Shape21.FillColor = RGB(255, 255, b)
Shape22.FillColor = RGB(255, 255, b)
Shape23.FillColor = RGB(255, 255, b)
Shape24.FillColor = RGB(255, 255, b)


If b = 1 Then
Timer1.Enabled = False ' for the reverse effect
Timer2.Enabled = True
End If

Next
End Sub

Private Sub Timer2_Timer()

For c = 1 To 255

Form1.Caption = d
Image1.Height = Image1.Height - 5
Image1.Width = Image1.Width - 5
Image1.Top = Image1.Top - 25
Image1.Left = Image1.Left + 38
Image2.Height = Image2.Height + 5
Image2.Width = Image2.Width + 5
Image2.Top = Image2.Top + 25
Image2.Left = Image2.Left + 35
Form1.BackColor = RGB(c, c, c)
Shape1.FillColor = RGB(255, 255, c)
Shape2.FillColor = RGB(255, 255, c)
Shape3.FillColor = RGB(255, 255, c)
Shape4.FillColor = RGB(255, 255, c)
Shape5.FillColor = RGB(255, 255, c)
Shape6.FillColor = RGB(255, 255, c)
Shape7.FillColor = RGB(255, 255, c)
Shape8.FillColor = RGB(255, 255, c)
Shape9.FillColor = RGB(255, 255, c)
Shape10.FillColor = RGB(255, 255, c)
Shape11.FillColor = RGB(255, 255, c)
Shape12.FillColor = RGB(255, 255, c)
Shape13.FillColor = RGB(255, 255, c)
Shape14.FillColor = RGB(255, 255, c)
Shape15.FillColor = RGB(255, 255, c)
Shape16.FillColor = RGB(255, 255, c)
Shape17.FillColor = RGB(255, 255, c)
Shape18.FillColor = RGB(255, 255, c)
Shape19.FillColor = RGB(255, 255, c)
Shape20.FillColor = RGB(255, 255, c)
Shape21.FillColor = RGB(255, 255, c)
Shape22.FillColor = RGB(255, 255, c)
Shape23.FillColor = RGB(255, 255, c)
Shape24.FillColor = RGB(255, 255, c)

If c = 255 Then
Timer2.Enabled = False
Timer1.Enabled = True
End If

Next

End Sub

