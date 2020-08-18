//This program illustrates the total sum of odd numbers from 1 to 99,
//even numbers from 2 to 100, and the total sum of the first 100 numbers.

import javax.swing.JOptionPane;

public class Total
{
  public static void main(String[]args)
  {
    int x1 = 2, x2 = 1, x3 = 1, y;
    int sum1 = 0, sum2 = 0, sum3 = 0;
    for (y = 100; y >= 75; y -= 2)
    {
      sum1 = x1 + y;
      sum1 = sum1 * (x1 - 1);
      x1 += 2;
    }
    JOptionPane.showMessageDialog(null, "The total sum of even numbers from 2 to 100 is " + sum1, "Total Sum of Even Numbers from 2 to 100", JOptionPane.INFORMATION_MESSAGE);
    for (y = 99; y >= 74; y -= 2)
    {
      sum2 = x2 + y;
      sum2 = sum2 * x2;
      x2 += 2;
    }
    JOptionPane.showMessageDialog(null, "The total sum of odd numbers from 1 to 99 is " + sum2, "Total Sum of Odd Numbers from 1 to 99", JOptionPane.INFORMATION_MESSAGE);
    for (y = 100; y >= 51; y--)
    {
      sum3 = x3 + y;
      sum3 = sum3 * x3;
      x3++;
    }
    JOptionPane.showMessageDialog(null, "The total sum of the first 100 numbers is " + sum3, "Total Sum of the First 100 Numbers", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}      
