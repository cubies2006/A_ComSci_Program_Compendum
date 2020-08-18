import java.io.IOException;

import javax.microedition.lcdui.*;
import javax.microedition.midlet.MIDlet;

public class MicroTankMIDlet
    extends MIDlet
    implements CommandListener {
  private MicroTankCanvas mMicroTankCanvas;
  
  public void startApp() {
    if (mMicroTankCanvas == null) {
      try {
        mMicroTankCanvas = new MicroTankCanvas();
        mMicroTankCanvas.start();
        Command exitCommand = new Command("Exit", Command.EXIT, 0);
        mMicroTankCanvas.addCommand(exitCommand);
        mMicroTankCanvas.setCommandListener(this);
      }
      catch (IOException ioe) {
        System.out.println(ioe);
      }
    }
    
    Display.getDisplay(this).setCurrent(mMicroTankCanvas);
  }
  
  public void pauseApp() {}
  
  public void destroyApp(boolean unconditional) {
    if (mMicroTankCanvas != null)
      mMicroTankCanvas.stop();
  }
  
  public void commandAction(Command c, Displayable s) {
    if (c.getCommandType() == Command.EXIT) {
      destroyApp(true);
      notifyDestroyed();
    }
  }
}
