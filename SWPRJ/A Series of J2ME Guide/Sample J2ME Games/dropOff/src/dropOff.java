package dropOff;
import java.util.*;
import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

/**
 * This is the main class of the mini games.
 *
 * @author Jeremiah McLeod
 */
public class dropOff extends MIDlet implements CommandListener {



  private Command myExitCommand = new Command("Exit", Command.EXIT, 99);

  private Command myPauseCommand = new Command("Pause", Command.SCREEN, 1);
  
  private Command myGoCommand = new Command ("Go",Command.SCREEN, 1);
  
  private Command myNewGameCommand = new Command ("New Game",Command.SCREEN,1);
  
  private long pauseTime;
  
  
   //* the the canvas that all of the game will be drawn on.
   //*/
  dropOffCanvas myDropOffCanvas;
  
  /**
   * the thread that advances the animation
   */
  GameThread myGameThread;

  //-----------------------------------------------------
  //    initialization and game state changes

  /**
   * Initialize the canvas and the commands.
   */
  public dropOff () {
    pauseTime=0;
    myDropOffCanvas = new dropOffCanvas(this);
	myDropOffCanvas.addCommand(myExitCommand);
	    myDropOffCanvas.addCommand(myGoCommand);
	    myDropOffCanvas.setCommandListener(this);
	   
  }

  
  
  //----------------------------------------------------------------
  //  implementation of MIDlet

  /**
   * Start the application.
   */
  public void startApp() throws MIDletStateChangeException {
     myGameThread = new GameThread(myDropOffCanvas);
     myDropOffCanvas.start();
    
    myGameThread.go();


  }

  /**
   * stop and throw out the garbage.
   */
  public void destroyApp(boolean unconditional)
      throws MIDletStateChangeException {
    myGameThread.requestStop();
    myGameThread = null;
    myDropOffCanvas = null;
    System.gc();
  }

  public void pauseApp() {

    myGameThread.pause();
  }

public void setMyPauseCommand () {

}


public void setMyGoCommand () {
myDropOffCanvas.removeCommand (myPauseCommand);
myDropOffCanvas.addCommand (myGoCommand);


}

public void setMyNewGameCommand () {



}
  //----------------------------------------------------------------
  //  implementation of CommandListener

  /*
   * Respond to a command issued on the Canvas.
   */
  public void commandAction(Command c, Displayable s) {
    int p,t;

  

   if (c == myExitCommand) {
      try {
	destroyApp(false);
	notifyDestroyed();
      } catch (MIDletStateChangeException ex) {
      }
    }
   
    else if (c==myGoCommand) {
		myDropOffCanvas.go=true;
	if (myDropOffCanvas.gameOver==true) myDropOffCanvas.newGame();
	
	myDropOffCanvas.removeCommand(myGoCommand);
	myDropOffCanvas.addCommand(myPauseCommand);
	
	
		
	}
	
	else if (c==myPauseCommand) {
	pauseTime=System.currentTimeMillis();
		myDropOffCanvas.go=false;
		myDropOffCanvas.removeCommand (myPauseCommand);
		myDropOffCanvas.addCommand (myGoCommand);

	
  }
}//commandlistener


}
