/*
 * Splash.java
 *
 * Created on 27 אפריל 2004, 14:43
 */

import javax.microedition.lcdui.*;
import java.io.*;
import java.util.*;

/**
 *
 * @author  Krasnoff
 * @version
 */
public class Splash extends Canvas implements CommandListener {
    private Image screenshot;
    private TestMidletMIDlet parent;
    private Timer timer;
    
    /**
     * constructor
     */
    public Splash(TestMidletMIDlet parent) {
        this.parent = parent;
        try {
            // Set up this canvas to listen to command events
            setCommandListener(this);
            // Add the Exit command
            addCommand(new Command("Go to Menu", Command.EXIT, 1));
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        try {
            screenshot = Image.createImage("/splash.png");
        }
        catch(IOException e) {}
        startTimer();
    }
    
    public void startTimer() {
        TimerTask gotoMenu = new TimerTask()  {
            public void run() {
            	timer.cancel();
            	parent.setCurrent("MainMenu2");
            }
        };
        timer = new Timer();
        timer.schedule(gotoMenu, 3000);
    }
    
    /**
     * paint
     */
    public void paint(Graphics g) {
    	g.setColor(255, 255, 255);
    	g.fillRect(0, 0, this.getWidth(), this.getHeight());
    	g.drawImage(screenshot, (this.getWidth() - 128) / 2, (this.getHeight() - 128) / 2, Graphics.TOP|Graphics.LEFT);
    }
    
    /**
     * Called when action should be handled
     */
    public void commandAction(Command command, Displayable displayable) {
        timer.cancel();
        parent.setCurrent("MainMenu2");
    }
    
}
