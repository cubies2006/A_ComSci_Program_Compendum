import java.awt.*;
import java.applet.*;
         
public class HelloWorldApplet extends Applet
{        
    // An applet that simply displays the string Hello World!
            
    public void paint(Graphics g) {
    g.drawString("Hello World!", 10, 30);
  }
}  // end of class HelloWorldApplet
