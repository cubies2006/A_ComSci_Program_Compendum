/*
 * MainScreen.java
 *
 * Created on November 11, 2003, 12:14 PM
 */

import javax.microedition.lcdui.*;
import java.util.*;
import java.io.*;

/**
 *
 * @author  kobi-kr
 * @version
 */
public class MainScreen extends Canvas implements CommandListener {
    private int x1, x2, x3, x4, y1, y4;
    private int counter = 0, keyStatus = 0;
    private int meX, meY, compX, compY, xBall, yBall, ballDir, ballOwner = 0, xBallOwner = 0, yBallOwner = 0, compMode = 0, BallAfterTimer = 1;
    private int myScore = 0, compScore = 0, clockMinute = 2, clockSecond = 0, compYDirection = 0;
    private int deltaX = 0, oldY = 0, doneY = 0;
    private int timerStatus = 1, delay = 0, freeBallX, freeBallY, case3Mode = 1, delay2 = 0;
    private Timer timer;
    private Timer timerCounter;
    private Image offscreen = null;
    private TestMidletMIDlet parent;
    private Command pauseCommand = new Command("Pause", Command.STOP, 1);
    private Image screenShot, compPlayer, mePlayer, tinyBall;
    int myWidth, myHeight;
    int offsetWidth, offsetHeight;
    private int originalY;
    private int[] deltaY = {0, 2, 5, 7, 9, 11, 12, 14, 15, 16, 17, 18, 19, 19, 20, 20, 20, 20, 20, 20, 19, 18, 17, 17, 15, 14, 13, 11, 9, 7, 5};
    private int finishGame = 0;
        
    /**
     * constructor
     */
    public MainScreen(TestMidletMIDlet parent) {
        this.parent = parent;
        myWidth = 128;
        myHeight = 128;
        meX = myWidth* 3 / 16;
        meY = myHeight * 3 / 4;
        compX = myWidth* 13 / 16;
        compY = myHeight * 3 / 4;
        xBall = meX + 8;
        yBall = 3;
        offsetWidth = (this.getWidth() - myWidth) / 2;
        offsetHeight = (this.getHeight() - myHeight) / 2;
        try {
            screenShot = Image.createImage("/screenShot.png");
        }
        catch(IOException e) {}
        try {
            compPlayer = Image.createImage("/compPlayer.png");
        }
        catch(IOException e) {}
        try {
            mePlayer = Image.createImage("/mePlayer.png");
        }
        catch(IOException e) {}
        try {
            tinyBall = Image.createImage("/tinyBall.png");
        }
        catch(IOException e) {}
        addCommand(pauseCommand);
        setCommandListener(this);
    }
    
    /**
     * Handles command actions
     */
    public void commandAction(Command c, Displayable d) {
        if (c == pauseCommand) {
            stopTimer();
            parent.setCurrent("MainMenu");
            timerStatus = 0;
        }
    }
    
    /**
     * paints the screen
     */
    public void paint(Graphics g) {
        
        Graphics saved = g;
        String clockMinuteStr = new String();
        String clockSecondStr = new String();
               
        if (offscreen != null) {
            g = offscreen.getGraphics();
        }
        
        // cleans the screen
        g.setColor(255, 255, 255);
    	g.fillRect(0, 0, this.getWidth(), this.getHeight());
        
        // define corners of field
        x1 = myWidth*3/16;
        x2 = myWidth*13/16;
        x3 = myWidth - 2;
        x4 = 2;
        y1 = myHeight * 1 / 2;
        y4 = myHeight - 1;
        
        // draw solid background
        g.setColor(255, 255, 255);
        g.fillRect(offsetWidth, offsetHeight, myWidth, myHeight);
        g.setColor(0, 0, 0);
        g.drawImage(screenShot, offsetWidth, offsetHeight, 0);
        
        // draw Scores
        g.fillRect(offsetWidth + myWidth / 4, offsetHeight + myHeight / 8, myWidth /  2, myHeight / 4);
        g.setColor(255, 255, 255);
        g.drawRect(offsetWidth + myWidth / 4, offsetHeight + myHeight / 8, myWidth /  2, myHeight / 4);
        clockMinuteStr = String.valueOf(clockMinute);
        clockSecondStr = String.valueOf(clockSecond);
        if (clockMinuteStr.length() == 1)
            clockMinuteStr = "0" + clockMinuteStr;
        if (clockSecondStr.length() == 1)
            clockSecondStr = "0" + clockSecondStr;
        g.drawString(":", offsetWidth + myWidth / 2, offsetHeight + 15, Graphics.TOP|Graphics.LEFT);
        g.drawString(clockMinuteStr, offsetWidth + myWidth / 2 - 15, offsetHeight + 17, Graphics.TOP|Graphics.LEFT);
        g.drawString(clockSecondStr, offsetWidth + myWidth / 2 + 5, offsetHeight + 17, Graphics.TOP|Graphics.LEFT);
        g.drawString(String.valueOf(myScore), offsetWidth + myWidth / 2 - 25, offsetHeight + 32, Graphics.TOP|Graphics.LEFT);
        g.drawString(String.valueOf(compScore), offsetWidth + myWidth / 2 + 20, offsetHeight + 32, Graphics.TOP|Graphics.LEFT);
    
        // paint player me
        g.drawImage(mePlayer, offsetWidth + meX, offsetHeight + meY - 19, 0);
        
        
        // paint Computer Player
        g.drawImage(compPlayer, offsetWidth + compX, offsetHeight + compY - 19, 0);
        
        //paintBall
        g.drawImage(tinyBall, offsetWidth + xBall, offsetHeight + freeBallY - yBall, 0);
        
        
        if (g != saved) {
            saved.drawImage(offscreen, 0, 0, Graphics.LEFT | Graphics.TOP);
        }
                
    }
    
    // calculate move
    private void myMove2()
    {
        //BallAfterTimer++;
        Random rnd = new Random();
        delay++;
        //delay2++;
        
        // define me Coordinates
        switch(keyStatus) {
            // up
            case Canvas.KEY_NUM2:
                meY--;
                if (meY < y1)
                    meY = y1;
                break;
            // down
            case Canvas.KEY_NUM8:
                meY++;
                if (meY > y4)
                    meY = y4;
                break;
            // right
            case Canvas.KEY_NUM6:
                meX++;
                if ((x2 + x3) / 2 < meX) {
                    meX = (x2 + x3) / 2;
                }
                if (ballOwner == 0 && compMode != 5)
                    xBall = meX + 8;
                break;
            // left
            case Canvas.KEY_NUM4:
                meX--;
                if ((x1 + x4) / 2 > meX) {
                    meX = (x1 + x4) / 2;
                }
                if (ballOwner == 0 && compMode != 5)
                    xBall = meX + 8;
                break;
            // fire
            case Canvas.KEY_NUM5:
                if (compMode == 2) {
                    originalY = freeBallY;
                    compMode = 5;
                }
                break;
            default:
                /////
        }
        
        //compMode = compMode;
        switch (compMode) {
            /* 
             *free ball jumps
             */
            case 1:
                ballJump();
                
                // decides who gets the ball
                // computer gets the ball
                if (Math.abs(xBall - compX) <= 21 && Math.abs(freeBallY - compY) <= 5) {
                    case3Mode = 1;
                    compMode = 3;
                    delay = 0;
                }
                // me kidnaps the ball
                if (Math.abs(meX - xBall) <= 21 && Math.abs(meY - freeBallY) <= 5) {
                    compMode = 2;
                    delay = 0;
                    delay2 = 0;
                }                
                
                // calculate comp moves
                if (compY > freeBallY) {
                    compY--;
                }
                if (compY < freeBallY) {
                    compY++;
                }
                if (compX > xBall) {
                    compX--; 
                }
                if (compX < xBall) {
                    compX++;
                }
                compCheckBorders();
                break;
            /*
             *the ball is at me player
             */
            case 2:
                xBall = meX + 6;
                freeBallY = meY;
                ballOwner = 0;
                delay2++;
                ballJump();
                // computer kidnap the ball
                if (Math.abs(meX - compX) <= 21 && Math.abs(meY - compY) <= 5 && delay >= 10) {
                    case3Mode = 1;
                    compMode = 3;
                    delay = 0;
                    delay2 = 0;
                }
                if (delay2 > 30) {
                    if (Math.abs(meX + 20 - compX) > Math.abs(meY - compY)) {
                        if (compX > meX + 20) 
                            compX--;
                        else
                            compX++;
                    }
                    else {
                        if (compY > meY)
                            compY--;
                        else
                            compY++;
                    }
                    // check borders for comp players
                    compCheckBorders();
                }
                break;
            /*
             *the ball is at computer player
             */
            case 3:
                xBall = compX - 3;
                freeBallY = compY;
                ballOwner = 1;
                ballJump();
                // me kidnaps the ball
                if (Math.abs(meX - compX) <= 21 && Math.abs(meY - compY) <= 5 && delay >= 5) {
                    compMode = 2;
                    delay = 0;
                    delay2 = 0;
                }
                // computes computer player
                switch (case3Mode)
                {
                // go back from player
                case 1:
                    compX++;
                    if (compX > meX + 29) {
                        case3Mode = 2;
                    }
                    break;
                // go side from player
                case 2:
                    if (compY < myHeight * 3 / 4) {
                        compY++;
                        compYDirection = 1;
                        case3Mode = 3;
                    }
                    else {
                        compY--;
                        compYDirection = 0;
                        case3Mode = 3;
                    }
                    break;
                // continue go side
                case 3:
                    if (compYDirection == 1 && compY <= meY + 15) {
                        compY++;
                        if (compY > y4)
                            compY = y4;
                    }
                    else if (compYDirection == 0 && compY >= meY - 15) {
                        compY--;
                        if (compY < y1)
                            compY = y1;
                    }
                    else {
                        case3Mode = 4;
                    }
                    break;
                // go forward
                case 4:
                    if (compX > myWidth * 11 / 32) {
                        compX--;
                    }
                    else if (compX < myWidth * 1 / 4 - 3) {
                        compX++;
                    }
                    else {
                        originalY = freeBallY;
                        compMode = 6;
                    }
                    break;
                // finaly throw the ball
                case 5:
                    case3Mode = 1;
                    originalY = freeBallY;
                    compMode = 6;
                    yBall = 9;
                    deltaX = 1;
                    break;
                default:
                    //
                }
                
                if (compX - meX <= 15 && Math.abs(compY - meY) <= 10) {
                    case3Mode = 1;
                }
                // check borders for comp player
                compCheckBorders();
                break;
            /*
             *kadoor beinaim
             */
            case 4:
                int x = deltaX + 6;
                // initilaize palers and ball position
                meX = myWidth / 2 - 11;
                meY = myHeight * 3 / 4;
                compX = myWidth / 2 + 11;
                compY = myHeight * 3 / 4;
                xBall =  myWidth / 2;
                freeBallY = myHeight * 3 / 4 - 12;
                yBall = 0;
                
                // throws ball
                deltaX++;
                if (deltaX >= 9) {
                    //temp = Math.abs(rnd.nextInt()) % 2;
                    deltaX = 1;
                    if (Math.abs(rnd.nextInt()) % 2 == 0) {
                        compMode = 2;
                    }
                    else {
                        compMode = 3;
                    }
                }
                freeBallY = freeBallY - (-x*x*1/8 - 6*x*1/8) - 37;
                break;
            /*
             *me throws the ball
             */
            case 5:
                //freeBallY = freeBallY - (-deltaX*deltaX*10/11 - 6*deltaX*10/11) - 37;
                freeBallY = originalY - deltaY[deltaX];
                deltaX++;
                xBall++;
                
                // checks if the ball hits the basket
                //if (xBall > (x2 + x3) / 2 - 10 && freeBallY > (y1 + y4) / 2 && freeBallY > oldY) {
                if (deltaX >= 29 && (xBall >= (x2 + x3) / 2 - 10 && xBall <= (x2 + x3) / 2 + 10)) {
                    myScore += 2;
                    oldY = 0;
                    compMode = 3;
                    
                    // reset player and the balls
                    meX = myWidth * 3 / 16;
                    meY = myHeight * 3 / 4;
                    compX = myWidth * 13 / 16;
                    compY = myHeight * 3 / 4;
                    xBall = compX - 8;
                    yBall = 3;
                    deltaX = 0;
                }
                // if the ball reaches the floor
                else if (deltaX >= 29 && (xBall < (x2 + x3) / 2 - 10 || xBall > (x2 + x3) / 2 + 10)) {
                    freeBallY = meY;
                    compMode = 1;
                    oldY = 0;
                    deltaX = 0;
                }
                else {
                    oldY = freeBallY;
                }
                break;
            /*
             *comp throws the ball
             */
            case 6:
                freeBallY = originalY - deltaY[deltaX];
                deltaX++;
                xBall--;
                
                // checkes if the ball hits the basket
                if (deltaX >= 29) {
                    compScore += 2;
                    oldY = 0;
                    compMode = 2;
                    
                    // reset player and the balls
                    meX = myWidth * 3 / 16;
                    meY = myHeight * 3 / 4;
                    compX = myWidth * 13 / 16;
                    compY = myHeight * 3 / 4;
                    xBall = meX + 8;
                    yBall=  3;
                    deltaX = 0;
                }
                else {
                    oldY = freeBallY;
                }
                break;
            default:
                //sdfgsdfgsdgf
        }
                
        repaint();
    }
    
    private void compCheckBorders()
    {
        if (compY < y1) {
            compY = y1;
        }
        if (compY > y4) {
            compY = y4;
        }
        if (compX > (x2 + x3) / 2) {
            compX = (x2 + x3) / 2;
        }
        if (compX < (x1 + x4) / 2) {
            compX = (x1 + x4) / 2;
        }
    }
    
    private void ballJump()
    {
        if (ballDir == 0) {
            yBall--;
            if (yBall < 3) {
                ballDir = 1;
            }
        }
        else {
            yBall++;
            if (yBall > 9) {
                ballDir = 0;
            }
        }
    }
    
    public void startGame()
    {
        myScore = 0;
        compScore = 0;
        clockMinute = 2;
        clockSecond = 0;
        compYDirection = 0;
        meX = myWidth* 3 / 16;
        meY = myHeight * 3 / 4;
        compX = myWidth* 13 / 16;
        compY = myHeight * 3 / 4;
        xBall = meX + 8;
        yBall = 3;
        yBallOwner = 0;
        //compMode = 4;
        BallAfterTimer = 1;
        timerStatus = 1;
        delay = 0;
        case3Mode = 1;
        delay2 = 0;
        counter = 0;
        keyStatus = 0;
        //startTimer();
    }
    
    public void startTimer()
    {
        TimerTask mover = new TimerTask()  {
            public void run() {
                myMove2();
            }
        };
        TimerTask myCounter = new TimerTask()  {
            public void run() {
                counter++;
                if (clockSecond == 0) {
                    clockMinute--;
                    clockSecond = 59;
                }
                clockSecond--;
                if (clockMinute == 0 && clockSecond == 0) {
                    compMode = 0;
                    parent.deleteRMS();
                    stopTimer();
                    finishGame = 1;
                    if (myScore >= compScore) {
                        parent.setCurrent("YouWin");
                    }
                    else {
                        parent.setCurrent("IWin");
                    }
                }
            }
        };
        timer = new Timer();
        timerCounter = new Timer();
        try {
        	timer.schedule(mover, parent.getLevel(), parent.getLevel());
        }
        catch (IllegalArgumentException e) {
        	timer.schedule(mover, 50, 50);
        }
        timerCounter.schedule(myCounter, 1000, 1000);
    }
    
    public void stopTimer()
    {
        timer.cancel();
        timerCounter.cancel();
    }
    
    /**
     * Called when a key is pressed.
     */
    protected  void keyPressed(int keyCode) {
    	if (this.getGameAction(keyCode) == UP) {
    		keyStatus = KEY_NUM2;
    	}
    	else if (this.getGameAction(keyCode) == DOWN) {
    		keyStatus = KEY_NUM8;
    	}
    	else if (this.getGameAction(keyCode) == LEFT) {
    		keyStatus = KEY_NUM4;
    	}
    	else if (this.getGameAction(keyCode) == RIGHT) {
    		keyStatus = KEY_NUM6;
    	}
    	else if (this.getGameAction(keyCode) == FIRE) {
    		keyStatus = KEY_NUM5;
    	}
    	else {
    		keyStatus = keyCode;
    	}
    	
    	
    }
    
    /**
     * Called when a key is released.
     */
    protected  void keyReleased(int keyCode) {
        keyStatus = 0;
    }
    
    public void setStatus(byte[] rec) {
        myScore = (int)rec[0];
        compScore = (int)rec[1];
        clockMinute = (int)rec[2];
        clockSecond = (int)rec[3];
        compYDirection = (int)rec[4];
        meX = (int)rec[5];
        meY = (int)rec[6];
        compX = (int)rec[7];
        compY = (int)rec[8];
        xBall = (int)rec[9];
        yBall = (int)rec[10];
        yBallOwner = (int)rec[11];
        compMode = (int)rec[12];
        BallAfterTimer = (int)rec[13];
        timerStatus = (int)rec[14];
        delay = (int)rec[15];
        case3Mode = (int)rec[16];
        delay2 = (int)rec[17];
        counter = (int)rec[18];
        keyStatus = (int)rec[19];
        ballDir = (int)rec[20];
        ballOwner = (int)rec[21];
        xBallOwner = (int)rec[22];
        deltaX = (int)rec[23];
        oldY = (int)rec[24];
        doneY = (int)rec[25];
        freeBallX = (int)rec[26];
        freeBallY = (int)rec[27];
        originalY = (int)rec[28];
        parent.setLevel((int)rec[29]);
        if ((int)rec[30] == 1)
            parent.setSoundEnable(true);
        else
            parent.setSoundEnable(false);
    }
    
    public byte[] getStatus() {
        byte[] rec = new byte[31];
        rec[0] = (byte)myScore;
        rec[1] = (byte)compScore;
        rec[2] = (byte)clockMinute;
        rec[3] = (byte)clockSecond;
        rec[4] = (byte)compYDirection;
        rec[5] = (byte)meX;
        rec[6] = (byte)meY;
        rec[7] = (byte)compX;
        rec[8] = (byte)compY;
        rec[9] = (byte)xBall;
        rec[10] = (byte)yBall;
        rec[11] = (byte)yBallOwner;
        rec[12] = (byte)compMode;
        rec[13] = (byte)BallAfterTimer;
        rec[14] = (byte)timerStatus;
        rec[15] = (byte)delay;
        rec[16] = (byte)case3Mode;
        rec[17] = (byte)delay2;
        rec[18] = (byte)counter;
        rec[19] = (byte)keyStatus;
        rec[20] = (byte)ballDir;
        rec[21] = (byte)ballOwner;
        rec[22] = (byte)xBallOwner;
        rec[23] = (byte)deltaX;
        rec[24] = (byte)oldY;
        rec[25] = (byte)doneY;
        rec[26] = (byte)freeBallX;
        rec[27] = (byte)freeBallY;
        rec[28] = (byte)originalY;
        rec[29] = (byte)parent.getLevel();
        if (parent.getSoundEnable())
            rec[30] = (byte)1;
        else
            rec[30] = (byte)0;
        return rec;
    }
    
    public int getCompMode() {
        return compMode;
    }
    
    public void setCompMode(int i) {
        compMode = i;
    }
    
    /**
     * called when the screen disapear
     */
    protected void hideNotify() {
        if (finishGame == 0) {
            parent.setCurrent("MainMenu");
        }
        stopTimer();
    }
    
    /**
     * called when the screen reapear
     */
    protected void showNotify() {
        startTimer();
    }
}
