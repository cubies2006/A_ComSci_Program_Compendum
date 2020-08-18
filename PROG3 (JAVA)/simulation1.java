//This simple program enables you to simulate variables in transferring the 
//value to a variable and performing the necessary operations to combine it 
//with another variable. This program below has a "FOR" Statement which
//enables you to test the condition whether it's true or false. As long as the 
//condition is true, you'll continuously perform the output. Otherwise, the 
//program ends.

import javax.swing.JOptionPane;

public class simulation1
{
  public static void main(String[]args)
  {
    int ctr, x = 2, y = 3, z = 4, val;
    String output="";
    for (ctr = 0; ctr <= 9; ctr++)
    {
      val = x * y - z;
      output += (val + "  ");
      x += 2;
      y = z;
      z = x + y * 3;
    }
    JOptionPane.showMessageDialog(null, output, "Simulation 1 Results", JOptionPane.PLAIN_MESSAGE);
    System.exit(0);
  }
}