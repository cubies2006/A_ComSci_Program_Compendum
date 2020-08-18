import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

public class Convert extends MIDlet implements CommandListener
{
	Display display;
	TextField txt1, txt2;
	ChoiceGroup choice;
	Command cmdExit, cmdConvert;
	Form form;
	String str[] = {"Dollar", "Yen", "Euro"};
	
	public Convert()
	{
		display = Display.getDisplay(this);
		txt1 = new TextField("Input", "", 6, TextField.NUMERIC);
		txt2 = new TextField("In Pesos", "", 10, TextField.NUMERIC);
		choice = new ChoiceGroup("choice", Choice.EXCLUSIVE, str, null);
		cmdExit = new Command("Exit", Command.EXIT, 2);
		cmdConvert = new Command("Currency", Command.SCREEN, 1);
		form = new Form("Currency Converter");
		
		form.append(txt1); 
		form.append(choice);
		form.append(txt2);
		form.addCommand(cmdExit); 
		form.addCommand(cmdConvert);
		form.setCommandListener(this);
	}
	public void commandAction(Command c, Displayable d)
	{
		if (c == cmdExit)
			notifyDestroyed();
	}
	
	public void startApp()
	{
		display.setCurrent(form);
	}

	public void pauseApp()
	{
	}

	public void destroyApp(boolean u)
	{
	}
}
	