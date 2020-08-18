/*This JOptionPane program enables the user to input a number and
will display its corresponding Multiplication Table based on the
number inputted.*/

import javax.swing.JOptionPane;

public class MultiplicationTable
{
  public static void main(String[]args)
  {
    int num, loop, product;
    String NUM, output ="";
    NUM = JOptionPane.showInputDialog("Enter a number: ");
    num = Integer.parseInt(NUM);
    output += ("The Multiplication Table for " + num + " are:\n");
    for (loop = 1; loop <= num; loop++)
    {
       product = num * loop;
       output += (num + " X " + loop + " = " + product + "\n");
    }
    JOptionPane.showMessageDialog(null, output, "Multiplication Table", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}


