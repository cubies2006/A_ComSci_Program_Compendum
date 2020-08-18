import java.awt.*;
import java.applet.*;

public class HelloWorldApplet2 extends Applet 
{
  public void init() 
  {
    // Initialize the applet by setting it to use blue
    // and yellow as background and foreground colors.
    setBackground(Color.blue);
    setForeground(Color.yellow);
  }
  public void paint(Graphics g) 
  {
    g.drawString("Hello World!", 10, 30);
  }
}  // end of class HelloWorldApplet2
