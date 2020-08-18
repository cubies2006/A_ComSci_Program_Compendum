import java.awt.Graphics;
import javax.swing.JApplet;
public class Animation1 extends JApplet
{
  public void paint(Graphics g)
  {
    super.paint(g);
    g.drawString("Welcome to", 25, 25);
    g.drawString("OOPLA Programming", 25, 40);
    g.drawString("First Java applet", 25, 70);
  }
}
 
