import java.awt.*;
import java.applet.Applet;

public class ILoveJava extends Applet
{
  public void paint(Graphics g)
  {
    g.drawString("I Love Java", 70, 70);
    g.setColor(Color.red);
    g.drawRect(50, 50, 100, 30);
  }
}
