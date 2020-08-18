import javax.microedition.midlet.MIDlet;
import javax.microedition.lcdui.*;
import java.util.*;

public class CountdownMIDlet extends MIDlet
{
	private TimerCanvas timerCanvas;

	public CountdownMIDlet()
	{
		timerCanvas = new TimerCanvas();
	}
	
	protected void startApp()
	{
		Display.getDisplay(this).setCurrent(timerCanvas);
	}
	
	protected void pauseApp()
	{
	}
	
	protected void destroyApp(boolean unconditional)
	{
	}
}

class TimerCanvas extends Canvas
{
    private int finishGame, timerMinute = 2, timerSecond = 0;
    private Timer timer;
    private Timer timerCounter;
		
	public void paint(Graphics g) 
	{        
		String timerMinuteStr = new String();
		String timerSecondStr = new String();
        timerMinuteStr = String.valueOf(timerMinute);
        timerSecondStr = String.valueOf(timerSecond);
        if (timerSecondStr.length() == 1)
            timerSecondStr = "0" + timerSecondStr;
		g.setColor(235, 234, 242);
        g.fillRect(0, 0, 240, 300);
		if (timerMinute > 0)
			g.setColor(14, 39, 231);
		else
			g.setColor(254, 4, 10);
		g.setFont(Font.getFont(Font.FACE_SYSTEM, Font.STYLE_BOLD, Font.SIZE_LARGE));
		g.drawString(timerMinuteStr + ":" + timerSecondStr, 13, 40, Graphics.TOP|Graphics.LEFT);
	}
	
    public void startTimer()
    {
        TimerTask myCounter = new TimerTask()  
		{
            public void run() 
			{
                if (timerSecond == 0) 
				{
                    timerMinute--;
					timerSecond = 60;
                }
                timerSecond--;
                if (timerMinute == 0 && timerSecond == 0) 
				{
                    stopTimer();
                    finishGame = 1;
                }
				repaint();	
            }
        };
		timer = new Timer();
        timerCounter = new Timer();
		timerCounter.schedule(myCounter, 1000, 1000);
	}

    public void stopTimer()
    {
        timer.cancel();
        timerCounter.cancel();
    }	
	
	protected void showNotify() 
	{
        startTimer();
    }
	
    protected void hideNotify() 
	{
        if (finishGame == 0) 
		{
        }
        stopTimer();
    }	
}