package wordSearch;

/**
 * This class contains the loop that keeps the game running.
 *
 * @author Jeremiah McLeod xdebugx http://www.xdebugx.net
 */
public class GameThread extends Thread {

  //---------------------------------------------------------
  //   fields

  /**
   * Whether or not this thread has been started.
   */
  boolean myAlreadyStarted;

  /**
   * A handle back to the graphical components.
   */
  mainCanvas myMainCanvas;

  //----------------------------------------------------------
  //   initialization

  /**
   * standard constructor.
   */
  GameThread(mainCanvas canvas) {
    myMainCanvas = canvas;
  }

  //----------------------------------------------------------
  //   actions

  /**
   * start or pause or unpause the game.
   */
  void go() {
    if(!myAlreadyStarted) {
      myAlreadyStarted = true;
      start();
    } else {
    }
  }

  /**
   * pause the game.
   */
  void pause() {
  }

  /**
   * stops the game.
   */
  static void requestStop() {
  }

  /**
   * start the game..
   */
  public void run() {
    // flush any keystrokes that occurred before the
    // game started:
   // myMainCanvas.flushKeys();
    while(true) {
   //   if(myShouldStop) {
//	break;
   //   }
   //myMainCanvas.checkKeys();
   myMainCanvas.advance();
       }
  }

}
