import javax.microedition.midlet.MIDlet;
import javax.microedition.lcdui.Display;
import javax.microedition.lcdui.Displayable;
import javax.microedition.lcdui.TextBox;

public class Hello extends MIDlet
{
	private Display display = null; // Reference to Display object
	
	public Hello() {
		display = Display.getDisplay(this);
	}


	public void startApp(){
		TextBox t = new TextBox("Hello MIDlet", "Hello Rommel Yaya!", 256, 0);
		display.setCurrent(t);
	}

	public void pauseApp(){ 
	}

	public void destroyApp(boolean unconditional){ 
	}

}