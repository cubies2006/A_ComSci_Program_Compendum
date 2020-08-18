//This program is the combination of 3 programs namely: Fibonacci, simulation2,
//and simulation3.

import javax.swing.JOptionPane;

public class simulationtrio
{
  public static void main(String[]args)
  {
    int x1 = 1, y1 = 0, z1 = 1, ctr = 0, loop = 0, x2 = 1, y2 = 1, z2 = 9, sum2, x3 = 1, y3 = 3, sum3;
    String output = "";
    while (loop < 10)
    {
       while (ctr <= 9)
       {
          output += "           ";
          if(z1 < 10)
              output += (z1 + "    ");
          else if (z1 < 100)
              output += (z1 + "  ");
          else if (z1 < 1000)
              output += (z1); 
          x1 = y1;
          y1 = z1;
          z1 = x1 + y1;
          ctr++;
          break;
       }
       output += "                  ";
       while (x2 <= 10)
       {
          sum2 = x2 + y2;
          if(sum2 < 10)
              output += (sum2 + "    ");
          else if (sum2 < 100)
              output += (sum2 + "  ");
          else if (sum2 < 1000)
              output += (sum2); 
          y2 += z2;
          z2--;
          x2++;
          break;
       }
       output += "                  ";
       while (x3 <= 8)
       {
         sum3 = x3 + y3;
          if(sum3 < 10)
              output += (sum3 + "    ");
          else if (sum3 < 100)
              output += (sum3 + "  ");
          else if (sum3 < 1000)
              output += (sum3); 
         y3 *= 3;
         x3++;
         break;
       }
       output += "\n";
       loop++;
    }
    JOptionPane.showMessageDialog(null, output, "Simulation 3 Outputs", JOptionPane.PLAIN_MESSAGE);
    System.exit(0);
  }
}
