Public Class Form1

    Dim SRight As Boolean 'variable for moving shooter right
    Dim SLeft As Boolean 'variable for moving shooter left
    Dim ShooterSpeed As Integer = 3 'speed at which shooter is moved
    Dim ShotSpeed As Integer = 6 'speed at which bullet is moved
    Dim InvaderSpeed As Integer 'speed at which invader moves
    Dim InvaderDrop As Integer 'amount invader drops when reaches edge of canvas
    Dim IRight(NumberOfInvaders) As Boolean  'determines if invaders are moving to the right or left
    Dim Score As Integer = 0 'keeps track of number of downed invaders
    Const NumberOfInvaders As Integer = 8 'constant integer of the number of invaders
    Dim Invaders(NumberOfInvaders) As PictureBox 'array for storing invaders
    Dim x As Integer 'counter for going through invader array
    Dim BombSpeed As Integer 'speed for bombs 
    Dim DownCount As Integer = 0

    'each sub is called every tick of the timer
    'the tick interval is set to 1
    Private Sub TimerMain_Tick(sender As Object, e As EventArgs) Handles TimerMain.Tick
        MoveShooter() 'call function to move the shooter
        FireShot() 'call function to check if shot is fired
        MoveInvader() 'call function to move invader 
        CheckCollision() 'check if there is a collision
        GameOver() 'check if invaders reached bottome of canvas
        DropBomb() 'moves bomb
    End Sub

    'function to make shooter move
    'gets input from left and right keyboard keys
    Private Sub Form1_KeyDown(sender As Object, e As KeyEventArgs) Handles MyBase.KeyDown
        If e.KeyValue = Keys.Right Then 'if right key is pressed
            SRight = True 'move right is true
            SLeft = False 'move left is false - otherwise it's stuck
        End If
        If e.KeyValue = Keys.Left Then 'if left key is pressed
            SLeft = True 'move left is true
            SRight = False 'move right is false - otherwise it's conflicted and stuck
        End If

        If e.KeyValue = Keys.Space And Shot.Visible = False Then 'if space key is pressed and shot is off the screen
            Shot.Top = Shooter.Top 'origin of shot is top of shooter
            Shot.Visible = True 'shot picture box is visible
            Shot.Left = Shooter.Left + (Shooter.Width / 2) - (Shot.Width / 2) 'center the shot on the shooter's picture box

            If PictureBox3.Visible = True Then
                Bomb.Top = PictureBox3.Top 'set location of bomb on y axis
                Bomb.Left = PictureBox3.Left + (PictureBox3.Width / 2) - (Bomb.Width / 2) 'set location for x axis to be aligned with invader
                Bomb.Visible = True 'make bomb visible
            End If
            If PictureBox7.Visible = True Then
                Bomb2.Top = PictureBox7.Top 'set location of bomb on y axis
                Bomb2.Left = PictureBox7.Left + (PictureBox7.Width / 2) - (Bomb2.Width / 2) 'set location for x axis to be aligned with invader
                Bomb2.Visible = True 'make bomb visible
            End If
        End If

            If Shot.Top + Shot.Height < Me.ClientRectangle.Top Then 'if shot is less than canvas dimension
            Shot.Visible = False 'make it invisible
        End If
    End Sub

    'function for having shooter stop when no key is pressed
    'otherwise shooter keeps moving in left or right direction
    Private Sub Form1_KeyUp(sender As Object, e As KeyEventArgs) Handles MyBase.KeyUp
        If e.KeyValue = Keys.Right Then 'if right key was pressed
            SRight = False 'have it stop moving
        End If
        If e.KeyValue = Keys.Left Then 'if left key was pressed
            SLeft = False 'have it stop moving
        End If
    End Sub

    'MoveShooter() moves the shooter
    Private Sub MoveShooter()
        If SRight = True And Shooter.Left + Shooter.Width < Me.ClientRectangle.Width Then 'if move right is true and within boundaries
            Shooter.Left += ShooterSpeed 'then move shooter at set speed
        End If
        If SLeft = True And Shooter.Left > Me.ClientRectangle.Left Then 'if move left is true and within boundaries
            Shooter.Left -= ShooterSpeed 'then move shooter - subtract speed so it goes backwards (left)
        End If
    End Sub

    'load settings with form
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        LoadSettings()
        LoadInvaders()
    End Sub

    'LoadSettings() sets program variables
    Private Sub LoadSettings()
        ShotSpeed = 7
        ShooterSpeed = 4
        Shot.Visible = False
        For Me.x = 1 To NumberOfInvaders 'loop through array of Invaders
            IRight(x) = True 'set all invaders to move right at beginning
        Next
        InvaderSpeed = 5
        InvaderDrop = 50
        BombSpeed = 5
        Score = 0
    End Sub

    'FireShot() checks if shot is fired
    'move shot to speed value
    Private Sub FireShot()
        If Shot.Visible = True Then
            Shot.Top -= ShotSpeed
        End If
    End Sub

    'MoveInvader() moves each invader
    Private Sub MoveInvader()
        For Me.x = 1 To NumberOfInvaders
            If IRight(x) = True Then 'if moving right
                Invaders(x).Left += InvaderSpeed 'move invader at speed towards right
            Else
                Invaders(x).Left -= InvaderSpeed 'else if it's moving left, move at speed towards left
            End If

            If Invaders(x).Left + Invaders(x).Width > Me.ClientRectangle.Width Then 'if invader reached right side of canvas
                IRight(x) = False 'set direction variable to move left
                Invaders(x).Top += InvaderDrop 'drop the invader one level
            End If

            If Invaders(x).Left < Me.ClientRectangle.Left Then 'if invader reaches left side of canvas
                IRight(x) = True 'set direction variable to move right
                Invaders(x).Top += InvaderDrop 'drop the invader one level
            End If
        Next

    End Sub

    'GameOver() checks if invaders reached the bottom of the canvas
    Private Sub GameOver()
        For Me.x = 1 To NumberOfInvaders 'loop to go through invader array
            If Invaders(x).Bottom >= Shooter.Top And Invaders(x).Visible = True Then 'if invaders have reached earth
                TimerMain.Enabled = False 'stop game
                MsgBox("GAME OVER") 'output win message
            End If
        Next
        'For Me.x = 1 To NumberOfInvaders
        'If Invaders(x).Visible = False Then
        'DownCount += 1
        'End If
        'Next
        'If DownCount = 8 Then
        'TimerMain.Enabled = False
        'MsgBox("YOU WIN")
        'End If
        If NumberOfInvaders = Score Then 'if all invaders have been eliminated
            TimerMain.Enabled = False 'stop game
            MsgBox("YOU WIN")
        End If
    End Sub

    'CheckCollision() checks if the shot hit an invader
    Private Sub CheckCollision()
        'checking collision for shots to invaders
        For Me.x = 1 To NumberOfInvaders
            If Shot.Top <= Invaders(x).Top And Shot.Visible = True And Invaders(x).Visible = True Then 'if the shot's top and invaders bottom equal
                If (Shot.Left <= Invaders(x).Left) And (Shot.Right >= Invaders(x).Left) Then 'logic for hitting left edge of invader
                    Invaders(x).Visible = False 'make invader invisible
                    Shot.Visible = False 'make shot invisible
                    Score += 1 'increment score
                End If
                If (Shot.Left <= Invaders(x).Right) And (Shot.Right >= Invaders(x).Right) Then 'logic for hitting right edge of invader
                    Invaders(x).Visible = False
                    Shot.Visible = False
                    Score += 1
                End If
                If (Shot.Left >= Invaders(x).Left) And (Shot.Right <= Invaders(x).Right) Then 'logic for hitting middle of invader
                    Invaders(x).Visible = False
                    Shot.Visible = False
                    Score += 1
                End If
            End If
        Next
        If Shot.Top <= Me.ClientRectangle.Y Then 'if shot is off the screen
            ' Me.Controls.Remove(Shot)
            Shot.Visible = False 'make it invisible - otherwise causes conflict in CheckCollision()
        End If

        'checking collision for bomb1 to player
        If Bomb.Bottom >= Shooter.Top And Bomb.Visible = True Then
            If (Bomb.Right >= Shooter.Left) And (Bomb.Left <= Shooter.Left) Then 'check if bomb hits left corner of shooter
                TimerMain.Enabled = False
                MsgBox("gg n00b")
            End If
            If (Bomb.Right <= Shooter.Right) And (Bomb.Left >= Shooter.Left) Then 'check if bomb hits middle of shooter
                TimerMain.Enabled = False
                MsgBox("gg n00b")
            End If
            If (Bomb.Left <= Shooter.Right) And (Bomb.Right >= Shooter.Right) Then 'check if bomb hits right corner of shooter
                TimerMain.Enabled = False
                MsgBox("gg n00b")
            End If
        End If

        If Bomb.Top > Me.ClientRectangle.Height Then 'if bomb1 is off the screen
            Bomb.Visible = False
        End If

        'checking collision for bomb1 to player
        If Bomb2.Bottom >= Shooter.Top And Bomb2.Visible = True Then
            If (Bomb2.Right >= Shooter.Left) And (Bomb2.Left <= Shooter.Left) Then 'check if bomb hits left corner of shooter
                TimerMain.Enabled = False 'stop the game
                MsgBox("gg n00b") 'output game over messsage
            End If
            If (Bomb2.Right <= Shooter.Right) And (Bomb2.Left >= Shooter.Left) Then 'check if bomb hits middle of shooter
                TimerMain.Enabled = False
                MsgBox("gg n00b")
            End If
            If (Bomb2.Left <= Shooter.Right) And (Bomb2.Right >= Shooter.Right) Then 'check if bomb2 hits right corner of shooter
                TimerMain.Enabled = False
                MsgBox("gg n00b")
            End If
        End If

        If Bomb2.Top > Me.ClientRectangle.Height Then ' if bomb2 is off the screen
            Bomb2.Visible = False 'turn it off
        End If

    End Sub

    'LoadInvaders() assigns each PictureBox to an invader in array: Invaders
    Private Sub LoadInvaders()
        Invaders(1) = PictureBox1
        Invaders(2) = PictureBox2
        Invaders(3) = PictureBox3
        Invaders(4) = PictureBox4
        Invaders(5) = PictureBox5
        Invaders(6) = PictureBox6
        Invaders(7) = PictureBox7
        Invaders(8) = PictureBox8
    End Sub

    'DropBomb() drops bombs on the shooter
    'if bomb is visible
    'then keep dropping it down canvas
    Private Sub DropBomb()
        If Bomb.Visible = True Then
            Bomb.Top += BombSpeed 'move bomb
        End If
        If Bomb2.Visible = True Then
            Bomb2.Top += BombSpeed 'move bomb
        End If
    End Sub

End Class
