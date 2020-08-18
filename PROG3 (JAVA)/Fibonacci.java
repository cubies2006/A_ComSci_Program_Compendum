//This program displays the first 10 numbers in a Fibonacci Sequence

import javax.swing.JOptionPane;

public class Fibonacci
{
  public static void main(String[]args)
  {
    int x = 1, y = 0, z = 1, ctr;
    String output = "";
    for (ctr = 0; ctr <= 9; ctr++)
    {
      output += (z + "  ");
      x = y;
      y = z;
      z = x + y;
    }
    JOptionPane.showMessageDialog(null, "The First 10 Fibonacci Sequence are\n" + output, "The 1st 10 Fibonacci Sequence", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
