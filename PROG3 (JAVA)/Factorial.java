//This program illustrates how factorial works by using the
//formula N! = N * (N – 1) * (N – 2) * (N – 3)…….

import javax.swing.JOptionPane;

public class Factorial
{
  public static void main(String[]args)
  {
    int x, num, loop = 1, factorial = 1;
    String NUM;

    NUM = JOptionPane.showInputDialog("Enter a number: ");
    x = Integer.parseInt(NUM);

    if (x > 0)
    {
      for (num = x; num >= loop; num--)
      {
        factorial = factorial * num;
      }
      JOptionPane.showMessageDialog(null, "The factorial of " + x + " is " + factorial + "!!!", "Factorial", JOptionPane.INFORMATION_MESSAGE);
    }
    else if (x == 0)
      JOptionPane.showMessageDialog(null, "The factorial of " + x + " is " + factorial + "!!!", "Factorial", JOptionPane.INFORMATION_MESSAGE);
    else
      JOptionPane.showMessageDialog(null, "You've inputted an INVALID number!!! Please Try Again!!!", "ERROR", JOptionPane.ERROR_MESSAGE);
    System.exit(0);
  }
}

