import javax.swing.JOptionPane;

public class AveOddEven
{
  public static void main(String[]args)
  {
    String NUM, oddoutput = "", evenoutput = "";
    float sumodd = 0, sumeven = 0, aveodd, aveeven;
    int countodd = 0, counteven = 0, ctr;
    int[] num = new int[20];
    for (ctr = 0; ctr <= 19; ctr++)
    {
      NUM = JOptionPane.showInputDialog("Enter a number: ");
      num[ctr] = Integer.parseInt(NUM);
      if (num[ctr] % 2 == 1)
      {
        countodd++;
        sumodd += num[ctr];
      }
      else
      {
        counteven++;
        sumeven += num[ctr];
      }
    }
    aveodd = sumodd / countodd;
    aveeven = sumeven / counteven;
    oddoutput += ("The average of all odd numbers is " + aveodd + ".");
    evenoutput += ("The average of all even numbers is " + aveeven + ".");
    JOptionPane.showMessageDialog(null, oddoutput, "Average of All Odd", JOptionPane.INFORMATION_MESSAGE);
    JOptionPane.showMessageDialog(null, evenoutput, "Average of All Even", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}

      
    
