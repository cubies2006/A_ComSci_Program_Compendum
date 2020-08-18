import java.util.Random;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.game.GameCanvas;

// A simple example of a game canvas that displays
// a scrolling star field. Use the UP and DOWN keys
// to speed up or slow down the rate of scrolling.

public class StarField extends GameCanvas
                       implements Runnable {

    private static final int SLEEP_INCREMENT = 10;
    private static final int SLEEP_INITIAL = 150;
    private static final int SLEEP_MAX = 300;

    private Graphics        graphics;
    private Random          random;
    private int             sleepTime = SLEEP_INITIAL;
    private volatile Thread thread;

    public StarField(){
        super( true );

        graphics = getGraphics();
        graphics.setColor( 0,  0, 0 );
        graphics.fillRect( 0, 0, getWidth(), getHeight() );
    }

    // When the game canvas is hidden, stop the thread.

    protected void hideNotify(){
        thread = null;
    }

    // The game loop.

    public void run(){
        int w = getWidth();
        int h = getHeight() - 1;

        while( thread == Thread.currentThread() ){

            // Increment or decrement the scrolling interval
            // based on key presses

            int state = getKeyStates();

            if( ( state & DOWN_PRESSED ) != 0 ){
                sleepTime += SLEEP_INCREMENT;
                if( sleepTime > SLEEP_MAX ) sleepTime = SLEEP_MAX;
            } else if( ( state & UP_PRESSED ) != 0 ){
                sleepTime -= SLEEP_INCREMENT;
                if( sleepTime < 0 ) sleepTime = 0;
            }

            // Repaint the screen by first scrolling the
            // existing starfield down one and painting in
            // new stars...

            graphics.copyArea( 0, 0, w, h, 0, 1,
                               Graphics.TOP | Graphics.LEFT );

            graphics.setColor( 0, 0, 0 );
            graphics.drawLine( 0, 0, w, 1 );
            graphics.setColor( 255, 255, 255 );

            for( int i = 0; i < w; ++i ){
                int test = Math.abs( random.nextInt() ) % 100;
                if( test < 4 ){
                    graphics.drawLine( i, 0, i, 0 );
                }
            }

            flushGraphics();

            // Now wait...

            try {
                Thread.currentThread().sleep( sleepTime );
            }
            catch( InterruptedException e ){
            }
        }
    }

    // When the canvas is shown, start a thread to
    // run the game loop.

    protected void showNotify(){
        random = new Random();

        thread = new Thread( this );
        thread.start();
    }
}
