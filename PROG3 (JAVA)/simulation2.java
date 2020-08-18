//This program enables you to analyze numbers in a different way by using the 
//"FOR" statement. You'll notice the sequence of numbers it's difference 
//decreases the value progresses up to the 10th value.

import javax.swing.JOptionPane;

public class simulation2
{
  public static void main(String[]args)
  {
    int x, y = 1, z = 9, sum;
    String output = "";
    for (x = 1; x <= 10; x++)
    {
      sum = x + y;
      output += (sum + "  ");
      y = y + z;
      z--;
    }
    JOptionPane.showMessageDialog(null, output, "Simulation 2 Outputs", JOptionPane.PLAIN_MESSAGE);
    System.exit(0);
  }
}
