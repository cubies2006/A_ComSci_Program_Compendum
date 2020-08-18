import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class anabel2 extends Applet implements ActionListener
{
  Button e1 = new Button("2");
  Button e2 = new Button("4");
  Button e3 = new Button("6");
  Button e4 = new Button("8");
  Button click = new Button("CLICK");
  int sagot = 0;

  public void init()
  {
    setLayout(new FlowLayout());
    add(e1);
    add(e2);
    add(e3);
    add(e4);
    add(click);
    e1.addActionListener(this);
    e2.addActionListener(this);
    e3.addActionListener(this);
    e4.addActionListener(this);
    click.addActionListener(this);
  }

  public void actionPerformed(ActionEvent a)
  {
    if (a.getSource() == e1)
      sagot += 2;
    if (a.getSource() == e2)
      sagot += 4;
    if (a.getSource() == e3)
      sagot += 6;
    if (a.getSource() == e4)
      sagot += 8;
    if (a.getSource() == click)
    {
      sagot = sagot;
      System.out.println("The computed sum is " + sagot);
    }
    invalidate();
    validate();
  }

}