import java.io.*;
import java.util.*;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.game.*;
import javax.microedition.midlet.*;

public class GameCanvasTest extends MIDlet
                 implements CommandListener {

    private Display display;

    public static final Command exitCommand =
                         new Command( "Exit",
                                      Command.EXIT, 1 ); 

    public GameCanvasTest(){
    }

    public void commandAction( Command c,
                               Displayable d ){
        if( c == exitCommand ){
            exitMIDlet();
        }
    }

    protected void destroyApp( boolean unconditional )
                       throws MIDletStateChangeException {
        exitMIDlet();
    }

    public void exitMIDlet(){
        notifyDestroyed();
    }

    public Display getDisplay(){ return display; }

    protected void initMIDlet(){
	GameCanvas c = new StarField();
        c.addCommand( exitCommand );
        c.setCommandListener( this );

        getDisplay().setCurrent( c );
    }

    protected void pauseApp(){
    }

    protected void startApp()
                      throws MIDletStateChangeException {
        if( display == null ){ 
            display = Display.getDisplay( this );
            initMIDlet();
        }
    }
}
