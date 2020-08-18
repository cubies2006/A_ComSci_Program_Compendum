/*
 * YouWin.java
 *
 * Created on 2 מרץ 2004, 21:46
 */

import javax.microedition.lcdui.*;
import java.io.*;

/**
 *
 * @author  Krasnoff
 * @version
 */
public class YouWin extends Canvas implements CommandListener {
    private TestMidletMIDlet parent;
    private Image screenshot; 
    private Command exitCommand = new Command("Exit", Command.EXIT, 1);
    private Command restartCommand = new Command("Restart Game", Command.OK, 2);
    private int offsetWidth, offsetHeight;
    private int myWidth, myHeight;
    
    /**
     * constructor
     */
    public YouWin(TestMidletMIDlet parent) {
        this.parent = parent;
        try {
            // Set up this canvas to listen to command events
            setCommandListener(this);
            // Add the Exit command
            addCommand(exitCommand);
            addCommand(restartCommand);
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        try {
            screenshot = Image.createImage("/YouWon.png");
        }
        catch(IOException e) {}
        
        myWidth = 128;
        myHeight = 128;
        
        offsetWidth = (this.getWidth() - myWidth) / 2;
        offsetHeight = (this.getHeight() - myHeight) / 2;
    }
    
    /**
     * paint
     */
    public void paint(Graphics g) {
        g.setColor(255, 255, 255);
        g.fillRect(0, 0, 128, 128);
        g.drawImage(screenshot, offsetWidth, offsetHeight, Graphics.TOP|Graphics.LEFT);
    }
    
    /**
     * Called when a key is pressed.
     */
    protected  void keyPressed(int keyCode) {
    }
    
    /**
     * Called when a key is released.
     */
    protected  void keyReleased(int keyCode) {
    }
    
    /**
     * Called when a key is repeated (held down).
     */
    protected  void keyRepeated(int keyCode) {
    }
    
    /**
     * Called when the pointer is dragged.
     */
    protected  void pointerDragged(int x, int y) {
    }
    
    /**
     * Called when the pointer is pressed.
     */
    protected  void pointerPressed(int x, int y) {
    }
    
    /**
     * Called when the pointer is released.
     */
    protected  void pointerReleased(int x, int y) {
    }
    
    /**
     * Called when action should be handled
     */
    public void commandAction(Command command, Displayable displayable) {
        if (command == exitCommand) {
            parent.setCurrent("FinishGame");
        }
        else if (command == restartCommand) {
            parent.setCurrent("MainScreen");
        }
    }
    
}
