//This program illustrates how the constant "e" works, however this program
//is correct to the 12th power only.

import javax.swing.JOptionPane;

public class Constante
{
  public static void main(String[]args)
  {
    float e = 1, y, z, factorial, ctr = 1, deno, nume;
    int x, loop;
    String val;
    val = JOptionPane.showInputDialog("Enter a value for x: (Valid only from the range of -6 to 12)");
    x = Integer.parseInt(val);
    if ((x > 12) || (x < -6))
    {
      JOptionPane.showMessageDialog(null, "INVALID INPUT!!!", "ERROR", JOptionPane.ERROR_MESSAGE);
    }
    else
    {
      for (loop = 1; loop <= 30; loop++)
      {
        y = loop;
        nume = 1;
        factorial = 1;
        deno = 1;
        while (ctr <= loop)
        {
	nume *= x;
	ctr++;
        }
        while (y >= 1)
        {
	factorial *= y;
	y--;
        }
        ctr = 1;
        deno = factorial;
        e += (nume / deno);	
      }
    JOptionPane.showMessageDialog(null, "The value of e raise to " + x + " is " + e + "!!!", "Constant e", JOptionPane.INFORMATION_MESSAGE);
    }
    System.exit(0);
  }
}
