import java.applet.*;
import java.awt.*;
import java.awt.event.*;
import java.util.Vector;

public class Keyboard2 extends Applet
   implements KeyListener, MouseListener, MouseMotionListener {

   int width, height;
   int N = 25;
   Color[] spectrum;
   Vector listOfPositions;
   String s = "";
   int skip = 0;

   public void init() {
      width = getSize().width;
      height = getSize().height;
      setBackground( Color.black );

      spectrum = new Color[ N ];
      for ( int i = 0; i < N; ++i ) {
         spectrum[i] = new Color( Color.HSBtoRGB(i/(float)N,1,1) );
      }

      listOfPositions = new Vector();

      addKeyListener( this );
      addMouseListener( this );
      addMouseMotionListener( this );
   }

   public void keyPressed( KeyEvent e ) { }
   public void keyReleased( KeyEvent e ) { }
   public void keyTyped( KeyEvent e ) {
      char c = e.getKeyChar();
      if ( c != KeyEvent.CHAR_UNDEFINED ) {
         s = s + c;
         repaint();
         e.consume();
      }
   }

   public void mouseEntered( MouseEvent e ) { }
   public void mouseExited( MouseEvent e ) { }
   public void mouseClicked( MouseEvent e ) {
      s = "";
      repaint();
      e.consume();
   }
   public void mousePressed( MouseEvent e ) { }
   public void mouseReleased( MouseEvent e ) { }
   public void mouseMoved( MouseEvent e ) {

      // only process every 5th mouse event
      if ( skip > 0 ) {
         -- skip;  // this is shorthand for "skip = skip-1;"
         return;
      }
      else skip = 5;

      if ( listOfPositions.size() >= N ) {
         // delete the first element in the list
         listOfPositions.removeElementAt( 0 );
      }

      // add the new position to the end of the list
      listOfPositions.addElement( new Point( e.getX(), e.getY() ) );

      repaint();
      e.consume();
   }
   public void mouseDragged( MouseEvent e ) { }

   public void paint( Graphics g ) {
      if ( s != "" ) {
         for ( int j = 0; j < listOfPositions.size(); ++j ) {
            g.setColor( spectrum[ j ] );
            Point p = (Point)(listOfPositions.elementAt(j));
            g.drawString( s, p.x, p.y );
         }
      }
   }
}


