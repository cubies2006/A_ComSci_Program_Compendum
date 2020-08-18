import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class fillRect extends JFrame
{
  public fillRect()
  {
    super("Using colored rectangles");
    setSize(920, 600);
    setVisible(true);
  }

  public void paint(Graphics g)
  {
    super.paint(g);
    g.setColor(Color.red);
    g.fillRect(25, 50, 500, 40);
    g.setColor(Color.black);
    g.drawString("Red = 500", 535, 75);

    g.setColor(Color.blue);
    g.fillRect(25, 100, 250, 40);
    g.setColor(Color.black);
    g.fillRect(275, 100, 250, 40);
    g.drawString("Blue = 250, Black = 250", 535, 125);

    g.setColor(Color.green);
    g.fillRect(25, 150, 167, 40);
    g.setColor(Color.yellow);
    g.fillRect(192, 150, 166, 40);
    g.setColor(Color.magenta);
    g.fillRect(358, 150, 167, 40);
    g.setColor(Color.black);
    g.drawString("Green = 167, Yellow = 166, Magenta = 167", 535, 175);

    g.setColor(Color.red);
    g.fillRect(25, 200, 125, 40);
    g.setColor(Color.orange);
    g.fillRect(150, 200, 125, 40);
    g.setColor(Color.black);
    g.fillRect(275, 200, 125, 40);
    g.setColor(Color.blue);
    g.fillRect(400, 200, 125, 40);
    g.setColor(Color.black);
    g.drawString("Red = 125, Orange = 125, ", 535, 215);
    g.drawString("Black = 125, Blue = 125", 535, 235);

    g.setColor(Color.green);
    g.fillRect(25, 250, 100, 40);
    g.setColor(Color.magenta);
    g.fillRect(125, 250, 100, 40);
    g.setColor(Color.pink);
    g.fillRect(225, 250, 100, 40);
    g.setColor(Color.gray);
    g.fillRect(325, 250, 100, 40);
    g.setColor(Color.cyan);
    g.fillRect(425, 250, 100, 40);
    g.setColor(Color.black);
    g.drawString("Green = 100, Magenta = 100, Pink = 100, ", 535, 265);
    g.drawString("Gray = 100, Cyan = 100", 535, 285);

    g.setColor(Color.yellow);
    g.fillRect(25, 300, 84, 40);
    g.setColor(Color.black);
    g.fillRect(109, 300, 83, 40);
    g.setColor(Color.white);
    g.fillRect(192, 300, 83, 40);
    g.setColor(Color.orange);
    g.fillRect(275, 300, 83, 40);
    g.setColor(Color.red);
    g.fillRect(358, 300, 83, 40);
    g.setColor(Color.blue);
    g.fillRect(441, 300, 84, 40);
    g.setColor(Color.black);
    g.drawString("Yellow = 84, Black = 83, White = 83, ", 535, 315);
    g.drawString("Orange = 83, Red = 83, Blue = 84", 535, 335);

    g.setColor(Color.orange);
    g.fillRect(25, 350, 72, 40);
    g.setColor(Color.gray);
    g.fillRect(97, 350, 72, 40);
    g.setColor(Color.red);
    g.fillRect(169, 350, 71, 40);
    g.setColor(Color.cyan);
    g.fillRect(240, 350, 71, 40);
    g.setColor(Color.magenta);
    g.fillRect(311, 350, 71, 40);
    g.setColor(Color.black);
    g.fillRect(382, 350, 72, 40);
    g.setColor(Color.pink);
    g.fillRect(453, 350, 72, 40);
    g.setColor(Color.black);
    g.drawString("Orange = 72, Gray = 72, Red = 71, Cyan = 71, ", 535, 365);
    g.drawString("Magenta = 71, Black = 72, Pink = 72", 535, 385);

    g.setColor(Color.pink);
    g.fillRect(25, 400, 63, 40);
    g.setColor(Color.cyan);
    g.fillRect(88, 400, 63, 40);
    g.setColor(Color.magenta);
    g.fillRect(151, 400, 62, 40);
    g.setColor(Color.green);
    g.fillRect(213, 400, 62, 40);
    g.setColor(Color.white);
    g.fillRect(275, 400, 62, 40);
    g.setColor(Color.orange);
    g.fillRect(337, 400, 62, 40);
    g.setColor(Color.black);
    g.fillRect(399, 400, 63, 40);
    g.setColor(Color.blue);
    g.fillRect(462, 400, 63, 40);
    g.setColor(Color.black);
    g.drawString("Pink = 63, Cyan = 63, Magenta = 62, Green = 62, ", 535, 415);
    g.drawString("White = 62, Orange = 62, Black = 63, Blue = 63", 535, 435);

    g.setColor(Color.red);
    g.fillRect(25, 450, 55, 40);
    g.setColor(Color.yellow);
    g.fillRect(80, 450, 55, 40);
    g.setColor(Color.blue);
    g.fillRect(135, 450, 56, 40);
    g.setColor(Color.white);
    g.fillRect(191, 450, 56, 40);
    g.setColor(Color.pink);
    g.fillRect(247, 450, 56, 40);
    g.setColor(Color.cyan);
    g.fillRect(303, 450, 56, 40);
    g.setColor(Color.magenta);
    g.fillRect(359, 450, 56, 40);
    g.setColor(Color.green);
    g.fillRect(415, 450, 55, 40);
    g.setColor(Color.gray);
    g.fillRect(470, 450, 55, 40);
    g.setColor(Color.black);
    g.drawString("Red = 55, Yellow = 55, Blue = 56, White = 56, ", 535, 458);
    g.drawString("Pink = 56, Cyan = 56, Magenta = 56, Green = 55, ", 535, 474);
    g.drawString("Gray = 55", 535, 488);

    g.setColor(Color.darkGray);
    g.fillRect(25, 500, 50, 40);
    g.setColor(Color.cyan);
    g.fillRect(75, 500, 50, 40);
    g.setColor(Color.yellow);
    g.fillRect(125, 500, 50, 40);
    g.setColor(Color.blue);
    g.fillRect(175, 500, 50, 40);
    g.setColor(Color.orange);
    g.fillRect(225, 500, 50, 40);
    g.setColor(Color.pink);
    g.fillRect(275, 500, 50, 40);
    g.setColor(Color.red);
    g.fillRect(325, 500, 50, 40);
    g.setColor(Color.green);
    g.fillRect(375, 500, 50, 40);
    g.setColor(Color.magenta);
    g.fillRect(425, 500, 50, 40);
    g.setColor(Color.black);
    g.fillRect(475, 500, 50, 40);
    g.drawString("darkGray = 50, Cyan = 50, Yellow = 50, ", 535, 515);
    g.drawString("Blue = 50, Orange = 50, Pink = 50, Red = 50, ", 535, 531);
    g.drawString("Green = 50, Magenta = 50, Black = 50", 535, 545);
  }

  public static void main(String[]args)
  {
    fillRect application = new fillRect();
    application.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  }
}
