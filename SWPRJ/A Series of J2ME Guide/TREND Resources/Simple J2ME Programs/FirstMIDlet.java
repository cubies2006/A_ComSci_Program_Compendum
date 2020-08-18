/*--------------------------------------------------
* FirstMIDlet.java
*-------------------------------------------------*/
import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;
public class FirstMIDlet extends MIDlet implements CommandListener
{
	private Display display = null; // Reference to Display object
	private TextBox tbMain; // A Textbox to display a message
	private Command cmExit; // A Command to exit the MIDlet
	
	public FirstMIDlet()
	{
	
		// Command to the exit the MIDlet
		cmExit = new Command("Exit", Command.SCREEN, 1);
		// Create a textbox component
		tbMain = new TextBox("TextBox", "Welcome to J2ME and MIDP!", 50, 0);
		// Add the command onto the textbox
		tbMain.addCommand(cmExit);
		// Listen for events
		tbMain.setCommandListener(this);
	}
	
	// Called by application manager to start the MIDlet.
	public void startApp()
	{
		if (display == null)
			display = Display.getDisplay(this);
		display.setCurrent(tbMain);
	}
	
	// A required method
	public void pauseApp()
	{
	}
	
	// A required method
	public void destroyApp(boolean unconditional)
	{
	}
	
	// Check to see if our Exit command was selected
	public void commandAction(Command c, Displayable s)
	{
		if (c == cmExit)
		{
			destroyApp(false);
			notifyDestroyed();
		}
	}
}