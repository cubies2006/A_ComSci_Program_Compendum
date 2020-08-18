import javax.swing.JOptionPane;

public class Multiplication
{
  public static void main(String[]args)
  {
    String NUM, output = "";
    int num, loop, prod;

    NUM = JOptionPane.showInputDialog("Enter a number: ");
    num = Integer.parseInt(NUM);

    output += ("The Multiplication Table for " + num + " are: \n");
    for (loop = 1; loop <= num; loop++)
    {
      prod = num * loop;
      output += (num + " X " + loop + " = " + prod + "\n");
    }

    JOptionPane.showMessageDialog(null, output, "Multiplication Table", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
