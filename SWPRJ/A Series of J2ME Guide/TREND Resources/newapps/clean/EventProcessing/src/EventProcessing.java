/*--------------------------------------------------
* EventProcessing.java
*-------------------------------------------------*/

import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

public class EventProcessing extends MIDlet implements

	ItemStateListener, CommandListener

{

	private Display display; 	// Reference to Display object for this MIDlet
	private Form fmMain; 		// Main Form
	private Command cmExit; 	// Command to exit the MIDlet
	private TextField tfText; 	// TextField component (item)

	public EventProcessing()
	{
		display = Display.getDisplay(this);
			
		tfText = new TextField("First Name:", "", 10, TextField.ANY);
	
		cmExit = new Command("Exit", Command.EXIT, 1);
						
		fmMain = new Form("Event Processing Example");

		fmMain.addCommand(cmExit);
		fmMain.append(tfText);

		fmMain.setCommandListener(this); 	// Capture Command events (cmExit)
		fmMain.setItemStateListener(this); 	// Capture Item events (dfDate)
	}

	// Called by application manager to start the MIDlet.
	public void startApp()
	{
		display.setCurrent(fmMain);
	}

	public void pauseApp()
	{ }

	public void destroyApp(boolean unconditional)
	{ }

	public void commandAction(Command c, Displayable s)
	{
		System.out.println("Inside commandAction()");
		if (c == cmExit)
		{
			destroyApp(false);
			notifyDestroyed();
		}
	}

	public void itemStateChanged(Item item)
	{
		System.out.println("Inside itemStateChanged()");
	}
}