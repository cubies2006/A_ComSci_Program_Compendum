import javax.swing.JOptionPane;

public class InputOddEven
{
  public static void main(String[]args)
  {
    String NUM, oddoutput = "", evenoutput = "";
    int ctr, odd = 0, even = 0;
    int[] num = new int[10];
    for (ctr = 0; ctr <= 9; ctr++)
    {
      NUM = JOptionPane.showInputDialog("Enter a number: ");
      num[ctr] = Integer.parseInt(NUM);
      if (num[ctr] % 2 == 1)
        odd++;
      else
        even++;
    }
    oddoutput += ("There are " + odd + " odd numbers.\n");
    for (ctr = 0; ctr <= 9; ctr++)
    {
      if (num[ctr] % 2 == 1)
        oddoutput += (num[ctr] + ", ");
    }
    JOptionPane.showMessageDialog(null, oddoutput, "Odd Inputs", JOptionPane.INFORMATION_MESSAGE);
    evenoutput += ("There are " + even + " even numbers.\n");
    for (ctr = 0; ctr <= 9; ctr++)
    {
      if (num[ctr] % 2 == 0)
        evenoutput += (num[ctr] + ", ");
    }
    JOptionPane.showMessageDialog(null, evenoutput, "Even Inputs", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
