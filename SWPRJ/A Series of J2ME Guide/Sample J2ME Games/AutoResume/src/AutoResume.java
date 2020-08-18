import javax.microedition.lcdui.*; 
import javax.microedition.midlet.MIDlet; 
import javax.microedition.midlet.MIDletStateChangeException; 

public class AutoResume extends MIDlet
{
	private Form mainForm; 
	private StringItem message; 
	private int nPause; 
	public boolean isPaused; 
	
	public AutoResume() 
	{
		super();
		mainForm = new Form("Auto-Resume"); 
		message = new StringItem("Message:", "Message here"); 
		mainForm.append(message); 
		nPause = 0; 
		isPaused = true; 
	} 
	
	protected void startApp() throws MIDletStateChangeException 
	{
		isPaused = false; 
		System.out.println("startApp"); 
		Display.getDisplay(this).setCurrent(mainForm); 
		message.setText("Paused " + nPause + " times"); 
	}
	
	protected void pauseApp() 
	{
		nPause++; 
		isPaused = true; 
		System.out.println("pauseApp"); 
		AutoResumeThread t = new AutoResumeThread(this); 
		t.start(); 
	} 
	
	protected void destroyApp(boolean arg0) throws MIDletStateChangeException 
	{ 
		System.out.println("destroyApp"); 
	} 
} 