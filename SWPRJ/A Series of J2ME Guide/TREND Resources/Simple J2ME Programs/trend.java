import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;
import java.util.*;

public class HelloWorld extends MIDlet implements CommandListener {
  private Command exitCommand;
  private TextBox tb;
  public HelloWorld() {
    exitCommand = new Command("exit", Command.EXIT, 1);
    tb = new TextBox("HelloWorld", "Hello world!", 15, 0);
    tb.addCommand(exitCommand);
    tb.setCommandListener(this);
  }
  protected void startApp() {Display.getDisplay(this).setCurrent(tb);}
  public void commandAction(Command c, Displayable d) {
    if (c== exitCommand) { destroyApp(false); notifyDestroyed();}
  }
  protected void destroyApp(boolean u) {}
  protected void pauseApp() {}
}
