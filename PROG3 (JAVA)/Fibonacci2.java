//This program is slightly different from Fibonacci1. In this program. you are asked
//to input 2 numbers and the number of items to be displayed. These 2 numbers will be
//the basis of the Fibonacci Sequence regardless whether it's a positive or a negative
//number.

import javax.swing.JOptionPane;

public class Fibonacci2
{
  public static void main(String[]args)
  {
    int x, y, i, z, display;
    String First, Second, Display, output="";

    First = JOptionPane.showInputDialog("Enter the first number: ");
    Second = JOptionPane.showInputDialog("Enter the second number: ");
    Display = JOptionPane.showInputDialog("Enter the number of items to be displayed: ");

    x = Integer.parseInt(First);
    y = Integer.parseInt(Second);
    display = Integer.parseInt(Display);

    if (display > 0)
    {
      output += (x + "  ");
      display--;
      for (i = 0; i < display; i++)
      {
        output += (y + " ");
        z = x + y;
        x = y;
        y = z;
      }
      JOptionPane.showMessageDialog(null, output, "Number of Items to be Displayed", JOptionPane.INFORMATION_MESSAGE);
    }
    else
      JOptionPane.showMessageDialog(null, "The number of items to be displayed is INVALID!!!", "ERROR", JOptionPane.ERROR_MESSAGE);
  }
  System.exit(0);
}
