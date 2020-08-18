import javax.swing.JOptionPane;

public class OddEven
{
  public static void main(String[]args)
  {
    int ctr, odd, even, num;
    String NUM, output = "";

    for (ctr = 0; ctr < 10; ctr++)
    {
      NUM = JOptionPane.showInputDialog("Enter no. : ");
      num = Integer.parseInt(NUM);
      if (num % 2 == 0)
      {
          if (num < 10)
            output += (num + "   even\n");
          else if (num < 100)
            output += (num + "  even\n");
          else if (num < 1000)
            output += (num + " even\n");
      }
      else
      {
          if (num < 10)
            output += (num + "   odd\n");
          else if (num < 100)
            output += (num + "  odd\n");
          else if (num < 1000)
            output += (num + " odd\n");
      }
    }
    JOptionPane.showMessageDialog(null, output, "Odd or Even", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}

