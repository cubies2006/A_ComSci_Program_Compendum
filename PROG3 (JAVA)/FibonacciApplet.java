import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class FibonacciApplet extends Applet implements ActionListener
{
  Label caption = new Label("Enter 2 numbers respectively: ");
  TextField input1 = new TextField("");
  TextField input2 = new TextField("");
  Button Fibonacci = new Button("Fibonacci");
  TextField result = new TextField("                           ");

  public void init()
  {
    setLayout(new FlowLayout());
    setBackground(Color.black);
    setSize(200, 200);
    add(caption);
    add(input1);
    add(input2);
    add(Fibonacci);
    add(result);
    Fibonacci.addActionListener(this);
    result.addActionListener(this);
  }

  public void actionPerformed(ActionEvent a)
  {
    int x, y, z, loop;
    String NUM1, NUM2, output = "";
    NUM1 = input1.getText();
    NUM2 = input2.getText(); 
    y = Integer.parseInt(NUM1);
    z = Integer.parseInt(NUM2);

    if (a.getSource() == Fibonacci)
    {
      output += (y + " ");
      for (loop = 1; loop <= 9; loop++)
      {
        output += (z + " ");
        x = y;
        y = z;
        z = x + y;
      }
      result.setText(" " + output);
    }
    invalidate();
    validate();
  }
}


