//This program displays * in a 4 by 5 square format.

import javax.swing.JOptionPane;

public class Figure1
{
  public static void main(String[]args)
  {
    String output = "";
    stop:
    {
      for (int row = 1; row <= 15; row++)
      {
        for (int column = 1; column <= 5; column++)
        {
          if (row == 5)
            break stop;
          output += "*  ";
        }
        output += "\n";
      }
      output += "\nLoops terminated normally";
    }
    JOptionPane.showMessageDialog(null, output, "Square Format", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
