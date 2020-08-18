//This program is almost similar to how simulation2 program works. Here's
//the hint. If you'll gonna split each number into 2 values say 4 into 1 and 3,
//11 into 2 and 9, 30 into 3 and 27, and so on. You'll notice that in every 
//number, the first value increases by 1 in every number. While the second
//value increases by thrice of its previous value. 

import javax.swing.JOptionPane;

public class simulation3
{
  public static void main(String[]args)
  {
    int x, y = 3, sum;
    String output = "";
    for (x = 1; x <= 8; x++)
    {
      sum = x + y;
      output += (sum + "  ");
      y *= 3;
    }
    JOptionPane.showMessageDialog(null, output, "Simulation 3 Outputs", JOptionPane.PLAIN_MESSAGE);
    System.exit(0);
  }
}
