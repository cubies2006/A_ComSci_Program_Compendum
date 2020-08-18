import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

public class Convert1 extends MIDlet
{
	Display display;
	TextField txt1,txt2;
	ChoiceGroup choice;
	Command cmdExit, cmdConvert;
	Form form;
	String str[]={"Dollar","Yen","Euro"};

	public Convert1()
	{
		display=Display.getDisplay(this);
		txt1=new TextField("Input","", 6, TextField.NUMERIC);
		txt2=new TextField("In Peso","", 10, TextField.NUMERIC);
		choice=new ChoiceGroup("choice", Choice.EXCLUSIVE, str, null);
		
		cmdExit=new Command("Exit", Command.EXIT, 5);
		cmdConvert=new Command("Convert", Command.SCREEN, 2);
		
		form=new Form("Currency Converter");
		form.append(txt1);
		form.append(choice);
		form.append(txt2);
		
		form.addCommand(cmdExit); 
		form.addCommand(cmdConvert);
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