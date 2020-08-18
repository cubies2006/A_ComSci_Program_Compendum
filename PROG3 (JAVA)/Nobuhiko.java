//On the first birthday of Nobuhiko Akizuki, his father Soichiro opened a savings account
//with 1000.00 Php. On each birthday, starting with the second, the bank added an additional 
//5% of the balance, and Soichiro added 500 Php to his account. 
//This program will accept a positive integer representing Nobuhiko's target age, and
//determine how much money is in the account before his target age. It should be noted
//that his target age be less than or equal to 70. 

import javax.swing.JOptionPane;

public class Nobuhiko
{
  public static void main(String[]args)
  {
    int age, num, x, val = 0, bal = 0, amt = 1000;
    String AGE;

    AGE = JOptionPane.showInputDialog("Enter a target age for Nobuhiko Akizuki: ");
    age = Integer.parseInt(AGE);

    if ((age <= 0) || (age > 70))
      JOptionPane.showMessageDialog(null, "INVALID TARGET AGE!!!", "ERROR", JOptionPane.ERROR_MESSAGE);
    else
    {
      num = age - 1;
      if (num > 0)
      {
        val = bal + amt;
        for (x = 1; x < num; x++)
        {
          bal = val * 5 / 100 + 500;
          val += bal;
        }
        JOptionPane.showMessageDialog(null, "His account before the age of " + age + " is " + val, "Target Age of Nobuhiko", JOptionPane.INFORMATION_MESSAGE);
      }
      else
        JOptionPane.showMessageDialog(null, "His account before the age of " + age + " is " + val, "Target Age of Nobuhiko", JOptionPane.INFORMATION_MESSAGE);
    }
    System.exit(0);
  }
}
