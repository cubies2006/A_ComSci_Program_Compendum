/*--------------------------------------------------
* DateFieldTest.java
*-------------------------------------------------*/

import java.util.*;
import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;
import java.util.Timer;
import java.util.TimerTask;

public class DateFieldTest extends MIDlet implements ItemStateListener, CommandListener
{
	
	private Display display; // Reference to display object
	private Form fmMain; // Main form
	private Command cmExit; // Exit MIDlet
	private DateField dfAlarm; // DateField component
	
	public DateFieldTest()
	{
		display = Display.getDisplay(this);

		// The main form
		fmMain = new Form("DateField Test");

		// DateField with todays date as a default
		dfAlarm = new DateField("Set Alarm Time", DateField.DATE_TIME);
		dfAlarm.setDate(new Date());

		// All the commands/buttons
		cmExit = new Command("Exit", Command.EXIT, 1);

		// Add to form and listen for events
		fmMain.append(dfAlarm);
		fmMain.addCommand(cmExit);
		fmMain.setCommandListener(this);
		fmMain.setItemStateListener(this);
	}

	public void startApp ()
	{
		display.setCurrent(fmMain);
	}

	public void pauseApp()
	{ }

	public void destroyApp(boolean unconditional)
	{ }

	public void itemStateChanged(Item item)
	{
		System.out.println("Date field changed.");
	}

	public void commandAction(Command c, Displayable s)
	{
		if (c == cmExit)
		{
			destroyApp(false);
			notifyDestroyed();
		}
	}
}