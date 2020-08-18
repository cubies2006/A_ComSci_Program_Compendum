import java.awt.Graphics;
import javax.swing.*;
import java.applet.Applet;

public class Animation2 extends JApplet
{
  int choice;
  public void init()
  {
    String input;
    input = JOptionPane.showInputDialog("Enter 1 to draw line\n" + "Enter 2 to draw circle");
    choice = Integer.parseInt(input);
  }

  public void paint(Graphics g)
  {
    super.paint(g);
    int a = 150, b = 50, c = 150, d = 300;
    switch(choice)
    {
      case 1:
        for (int bc = 15; bc > 0; bc--)
        {
          g.drawLine(a, b, c, d);
          c += 10;
          a -= 10;
        }
        break;
      case 2:
        a = 210; b = 0;
        for (int bc = 10; bc > 0; bc--)
        {
          g.drawOval(10 + b * 10, 150, 60 + bc * 10, 60 + bc * 10);
          b += 2;
        }
        for (int bc = 0; bc < 10; bc++)
        {
          g.drawOval(a + bc * 10, 150, 60 + bc * 10, 60 + bc * 10);
        }
        break;
      default:
        g.drawString("Invalid value entered", 10, 20 + c * 15);
    }
  }
}
