/* HardDriveMIDlet.java : Container MIDlet */

import java.io.IOException;
import javax.microedition.midlet.MIDlet;
import javax.microedition.lcdui.*;

public class HardDriveMIDlet extends MIDlet implements CommandListener
{
	private Display dgDisplay;
	private HardDriveCanvas hdCanvas;
	private GameOverCanvas goCanvas;

	static final Command ExitCommand = new Command("Exit", Command.EXIT, 0); 
	
	public HardDriveMIDlet( ) 
	{ 
		// Create the main Display 
		dgDisplay = Display.getDisplay(this); 
	} 

	protected void startApp() //throws MIDletStateChangeException 
	{
		try
		{
			hdCanvas = new HardDriveCanvas(this, "/car.png", "/obstacle.png");
			hdCanvas.start();
			hdCanvas.addCommand(ExitCommand);
			hdCanvas.setCommandListener(this);
		}
		catch (IOException ioe) 
		{
			System.err.println("Problem loading image "+ioe);
		}
		//Set newly created canvas as current canvas
		dgDisplay.setCurrent(hdCanvas);
	}

	public void pauseApp() 
	{
	}

	public void destroyApp(boolean unconditional) 
	{
			hdCanvas.stop();
	}
	
	public void commandAction(Command c, Displayable s)
	{
		if (c.getCommandType() == Command.EXIT) 
		{
			destroyApp(true);
			notifyDestroyed();
		}
	}

	public void HardDriveCanvasGameOver(long time, int score)
	{
		hdCanvas.stop();
		try
		{
			goCanvas = new GameOverCanvas(this, time, score);
			goCanvas.start();
            //Command quitCommand = new Command("Quit", Command.EXIT, 1); 
			goCanvas.addCommand(ExitCommand);
			goCanvas.setCommandListener(this);	
		}
		catch (Exception exp) 
		{
			System.err.println("Problem loading image "+exp);
		}
		dgDisplay.setCurrent(goCanvas);
	}	

}  
//end of class HardDriveMIDlet

/*Creating project "HardDriveGame" Place Java source files in "C:\WTK21\apps\HardDriveGame\src" Place *application resource files in "C:\WTK21\apps\HardDriveGame\res" Place application library files in *"C:\WTK21\apps\HardDriveGame\lib" Settings updated Project settings saved*/
