import javax.swing.JOptionPane;

public class ConvertNumbertoWords
{
  private static final String[] others = {"", "Thousand ", "Million "};
  private static final String[] tens = {"", "Ten ", "Twenty ", "Thirty ", "Forty ", "Fifty ", "Sixty ", "Seventy ", "Eighty ", "Ninety "};
  private static final String[] unit = {"", "One ", "Two ", "Three ", "Four ", "Five ", "Six ", "Seven ", "Eight ", "Nine ", "Ten ", "Eleven ", "Twelve ", "Thirteen ", "Fourteen ", "Fifteen ", "Sixteen ", "Seventeen ", "Eighteen ", "Nineteen "};

  private String convertLessThanOneThousand(int number)
  {
    String x;
    if (number % 100 < 20)
    {
      x = unit[number % 100];
      number /= 100;
    }
    else
    {
      x = unit[number % 10];
      number /= 10;
      x = tens[number % 10] + x;
      number /= 10;
    }
    if (number == 0)
      return x;
    return unit[number] + "Hundred " + x;
  }

  public String convert(int number)
  {
    if (number == 0)
    {
      return "Zero";
    }

    String prefix = "";

    if (number < 0)
    {
      number = -number;
      prefix = "Negative ";
    }

    String x = "";
    int place = 0;

    do
    {
      int n = number % 1000;
      if (n != 0)
      {
        String s = convertLessThanOneThousand(n);
        x = s + others[place] + x;
      }
      place++;
      number /= 1000;
    } while (number > 0);

    return (prefix + x).trim();
  }

  public static void main(String[]args)
  {
    convert c = new convert();
    String INPUT;
    int number;
    INPUT = JOptionPane.showInputDialog("Enter a number: ");
    number = Integer.parseInt(INPUT);
    if (number < -9000000 || number > 9000000)
      JOptionPane.showMessageDialog(null, "The limit is from -9000000 to 9000000 only!!!", "INVALID INPUT", JOptionPane.ERROR_MESSAGE);
    else
      JOptionPane.showMessageDialog(null, "Its conversion in words is: " + c.convert(number), "Conversion", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
