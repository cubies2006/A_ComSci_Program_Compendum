/*This program outputs the lists of odd and even numbers from 1 to 50
separately on 2 Message Box.*/

import javax.swing.JOptionPane;

public class OddEvenList
{
  public static void main(String[]args)
  {
    int odd = 1, even = 2; //initialization of both odd and even values
    String oddoutput = "", evenoutput = "";
    oddoutput += "                                   ODD\n";
    while (odd <= 49) //this WHILE loop repeats for 25 times until odd is not equal to 49
    {
      oddoutput += ("                                     " + odd + "\n");
      odd += 2; //the variable odd is incremented by 2
    }
    evenoutput += "                                   EVEN\n";
    while (even <= 50) //this WHILE loop repeats for 25 times until even is not equal to 50
    {
      evenoutput += ("                                     " + even + "\n");
      even += 2; //the variable even is incremented by 2
    }
    JOptionPane.showMessageDialog(null, oddoutput, "Odd Numbers from 1 to 49", JOptionPane.PLAIN_MESSAGE);
    JOptionPane.showMessageDialog(null, evenoutput, "Even Numbers from 2 to 50", JOptionPane.PLAIN_MESSAGE);
    System.exit(0);
  }
}
