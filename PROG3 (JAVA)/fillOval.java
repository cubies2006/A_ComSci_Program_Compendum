import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class fillOval extends JFrame
{
  public fillOval()
  {
    super("Using colored circles: ");
    setSize(920, 600);
    setVisible(true);
  }

  public void paint(Graphics g)
  {
    super.paint(g);
    g.setColor(Color.black);
    g.fillArc(50, 40, 120, 120, 0, 360);

    g.setColor(Color.black);
    g.fillArc(300, 40, 120, 120, -90, 180);
    g.setColor(Color.orange);
    g.fillArc(300, 40, 120, 120, 90, 180);

    g.setColor(Color.black);
    g.fillArc(550, 40, 120, 120, 30, 120);
    g.setColor(Color.orange);
    g.fillArc(550, 40, 120, 120, 150, 120);
    g.setColor(Color.blue);
    g.fillArc(550, 40, 120, 120, 270, 120);

    g.setColor(Color.black);
    g.fillArc(50, 170, 120, 120, 0, 90);
    g.setColor(Color.orange);
    g.fillArc(50, 170, 120, 120, 90, 90);
    g.setColor(Color.blue);
    g.fillArc(50, 170, 120, 120, 180, 90);
    g.setColor(Color.yellow);
    g.fillArc(50, 170, 120, 120, 270, 90);

    g.setColor(Color.black);
    g.fillArc(300, 170, 120, 120, 18, 72);
    g.setColor(Color.orange);
    g.fillArc(300, 170, 120, 120, 90, 72);
    g.setColor(Color.blue);
    g.fillArc(300, 170, 120, 120, 162, 72);
    g.setColor(Color.yellow);
    g.fillArc(300, 170, 120, 120, 234, 72);
    g.setColor(Color.pink);
    g.fillArc(300, 170, 120, 120, 306, 72);

    g.setColor(Color.black);
    g.fillArc(550, 170, 120, 120, 0, 60);
    g.setColor(Color.orange);
    g.fillArc(550, 170, 120, 120, 60, 60);
    g.setColor(Color.blue);
    g.fillArc(550, 170, 120, 120, 120, 60);
    g.setColor(Color.yellow);
    g.fillArc(550, 170, 120, 120, 180, 60);
    g.setColor(Color.pink);
    g.fillArc(550, 170, 120, 120, 240, 60);
    g.setColor(Color.red);
    g.fillArc(550, 170, 120, 120, 300, 60);

    g.setColor(Color.black);
    g.fillArc(50, 310, 120, 120, 12, 51);
    g.setColor(Color.orange);
    g.fillArc(50, 310, 120, 120, 63, 51);
    g.setColor(Color.blue);
    g.fillArc(50, 310, 120, 120, 115, 52);
    g.setColor(Color.yellow);
    g.fillArc(50, 310, 120, 120, 166, 52);
    g.setColor(Color.pink);
    g.fillArc(50, 310, 120, 120, 218, 52);
    g.setColor(Color.red);
    g.fillArc(50, 310, 120, 120, 270, 51);
    g.setColor(Color.magenta);
    g.fillArc(50, 310, 120, 120, 321, 51);

    g.setColor(Color.black);
    g.fillArc(300, 310, 120, 120, 0, 45);
    g.setColor(Color.orange);
    g.fillArc(300, 310, 120, 120, 45, 45);
    g.setColor(Color.blue);
    g.fillArc(300, 310, 120, 120, 90, 45);
    g.setColor(Color.yellow);
    g.fillArc(300, 310, 120, 120, 135, 45);
    g.setColor(Color.pink);
    g.fillArc(300, 310, 120, 120, 180, 45);
    g.setColor(Color.red);
    g.fillArc(300, 310, 120, 120, 225, 45);
    g.setColor(Color.magenta);
    g.fillArc(300, 310, 120, 120, 270, 45);
    g.setColor(Color.gray);
    g.fillArc(300, 310, 120, 120, 315, 45);

    g.setColor(Color.black);
    g.fillArc(550, 310, 120, 120, 10, 40);
    g.setColor(Color.orange);
    g.fillArc(550, 310, 120, 120, 50, 40);
    g.setColor(Color.blue);
    g.fillArc(550, 310, 120, 120, 90, 40);
    g.setColor(Color.yellow);
    g.fillArc(550, 310, 120, 120, 130, 40);
    g.setColor(Color.pink);
    g.fillArc(550, 310, 120, 120, 170, 40);
    g.setColor(Color.red);
    g.fillArc(550, 310, 120, 120, 210, 40);
    g.setColor(Color.magenta);
    g.fillArc(550, 310, 120, 120, 250, 40);
    g.setColor(Color.gray);
    g.fillArc(550, 310, 120, 120, 290, 40);
    g.setColor(Color.green);
    g.fillArc(550, 310, 120, 120, 330, 40);

    g.setColor(Color.black);
    g.fillArc(300, 450, 120, 120, 0, 36);
    g.setColor(Color.orange);
    g.fillArc(300, 450, 120, 120, 36, 36);
    g.setColor(Color.blue);
    g.fillArc(300, 450, 120, 120, 72, 36);
    g.setColor(Color.yellow);
    g.fillArc(300, 450, 120, 120, 108, 36);
    g.setColor(Color.pink);
    g.fillArc(300, 450, 120, 120, 144, 36);
    g.setColor(Color.red);
    g.fillArc(300, 450, 120, 120, 180, 36);
    g.setColor(Color.magenta);
    g.fillArc(300, 450, 120, 120, 216, 36);
    g.setColor(Color.gray);
    g.fillArc(300, 450, 120, 120, 252, 36);
    g.setColor(Color.green);
    g.fillArc(300, 450, 120, 120, 288, 36);
    g.setColor(Color.white);
    g.fillArc(300, 450, 120, 120, 324, 36);

  }

  public static void main(String[]args)
  {
    fillOval application = new fillOval();
    application.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  }
}
