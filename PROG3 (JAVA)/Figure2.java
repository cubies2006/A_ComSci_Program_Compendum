//This program is almost the same as the Figure1 program. But it
//will display the * in a Right Triangle Format.

import javax.swing.JOptionPane;

public class Figure2
{
  public static void main(String[]args)
  {
    String output ="";
    stop:
    {
      int x = 5, count, loop;
      count = x;
      for (x = 1; x <= count; x++)
      {
        for (loop = 0; loop < x; loop++)
        {
          output += "*  ";
        }
        output += "\n";
      }
      output += "\nLoops terminated normally";
    }
    JOptionPane.showMessageDialog(null, output, "Right Triangle Format", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}

