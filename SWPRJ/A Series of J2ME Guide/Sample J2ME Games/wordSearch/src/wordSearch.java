package wordSearch;
import java.util.*;
import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

/**
 * This is the main class of the wordSearch game.
 *
 * @author Jeremiah McLeod http://www.xdebugx.net
 */
public class wordSearch extends MIDlet implements CommandListener {


   Random myRandom;

  private Command myExitCommand = new Command("Exit", Command.EXIT, 99);

  private Command mySolveCommand = new Command("Solve", Command.SCREEN, 1);

  private Command myNewGameCommand = new Command("New Game", Command.SCREEN, 1);
  
  private Command myGoCommand = new Command ("Go",Command.SCREEN, 1);

   //* the the canvas that all of the game will be drawn on.
   //*/
  mainCanvas myCanvas;

  /**
   * the thread that advances the animation
   */
  GameThread myGameThread;

  //-----------------------------------------------------
  //    initialization and game state changes

  /**
   * Initialize the canvas and the commands.
   */
  public wordSearch() {
    myCanvas = new mainCanvas(this);
    myCanvas.addCommand(myExitCommand);
    myCanvas.addCommand(myGoCommand);
    myCanvas.setCommandListener(this);
    myRandom= new Random();
  }

  void setSolveCommand() {
    myCanvas.removeCommand(myNewGameCommand);
    myCanvas.addCommand(mySolveCommand);

  }

  void setNewGameCommand() {
    myCanvas.removeCommand(mySolveCommand);
    myCanvas.addCommand(myNewGameCommand);
  }

  //----------------------------------------------------------------
  //  implementation of MIDlet

  /**
   * Start the application.
   */
  public void startApp() throws MIDletStateChangeException {
    myGameThread = new GameThread(myCanvas);
    myCanvas.start();
    myGameThread.go();


  }

  /**
   * stop and throw out the garbage.
   */
  public void destroyApp(boolean unconditional)
      throws MIDletStateChangeException {
    myGameThread.requestStop();
    myGameThread = null;
    myCanvas = null;
    System.gc();
  }

  public void pauseApp() {

    myGameThread.pause();
  }

  //----------------------------------------------------------------
  //  implementation of CommandListener

  /*
   * Respond to a command issued on the Canvas.
   */
  public void commandAction(Command c, Displayable s) {
    int p,t;

    if(c == mySolveCommand) {
      myCanvas.removeCommand(mySolveCommand);
      myCanvas.addCommand(myNewGameCommand);
      
      int directionAddition=0;
	  	 	for (p=0;p<10;p++)
	  	 	for (t=0;t<myCanvas.lettersPerWord[p];t++) {
	  	 	if (myCanvas.wordDirection[p]==0) directionAddition = -13;
	  	 	if (myCanvas.wordDirection[p]==1) directionAddition = +13;
	  	 	if (myCanvas.wordDirection[p]==2) directionAddition = -1;
	  	 	if (myCanvas.wordDirection[p]==3) directionAddition = +1;
	  	 	if (myCanvas.wordDirection[p]==4) directionAddition = -14;
	  	 	if (myCanvas.wordDirection[p]==5) directionAddition = -12;
	  	 	if (myCanvas.wordDirection[p]==6) directionAddition = +12;
	  	 	if (myCanvas.wordDirection[p]==7) directionAddition = +14;
	 myCanvas.boardColor[myCanvas.wordPlace[p]+(t*directionAddition)] = true;
			}//t

	      } else if(c == myNewGameCommand) {
      myCanvas.removeCommand(myNewGameCommand);
      myCanvas.addCommand(mySolveCommand);
      
     	myCanvas.myInitialized=false;



    } else if(c == myExitCommand) {
      try {
	destroyApp(false);
	notifyDestroyed();
      } catch (MIDletStateChangeException ex) {
      }
    }
    else if (c==myGoCommand) {
	mainCanvas.go=true;
	myCanvas.removeCommand(myGoCommand);
	myCanvas.addCommand(mySolveCommand);
	}
  }

public int getRandomInt(int upper) {
    int retVal = myRandom.nextInt() % upper;
    if(retVal < 0) {
      retVal += upper;
    }
    return(retVal);
  }


}
