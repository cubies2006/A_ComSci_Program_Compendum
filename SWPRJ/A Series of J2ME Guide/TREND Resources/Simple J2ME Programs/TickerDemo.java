/*--------------------------------------------------
* TickerDemo.java
*-------------------------------------------------*/
import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

public class TickerDemo extends MIDlet implements CommandListener
	{
	private Display display; // Reference to Display object
	private List lsTasks; // Main Task List
	private Ticker tkAnnounce; // Ticker of what it is today
	private Command cmExit; // Command to exit the MIDlet
	
	public TickerDemo(){
		display = Display.getDisplay(this);
		cmExit = new Command("Exit", Command.SCREEN, 1);
		tkAnnounce = new Ticker("This is our second session.");
		lsTasks = new List("Products", Choice.IMPLICIT);
		lsTasks.append("J2ME Details", null);
		lsTasks.append("Objects and Events", null);
		lsTasks.addCommand(cmExit);
		lsTasks.setCommandListener(this);
		lsTasks.setTicker(tkAnnounce);
	}
public void startApp()
{
display.setCurrent(lsTasks);
}
public void pauseApp()
{
}
public void destroyApp(boolean unconditional)
{
}
public void commandAction(Command c, Displayable s)
{
if (c == cmExit)
{
destroyApp(true);
notifyDestroyed();
}
}
}