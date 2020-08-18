import javax.swing.JOptionPane;

public class Xmas
{
  public static void main(String[]args)
  {
    int day;
    String DAY, output="";

    DAY = JOptionPane.showInputDialog("Enter a day for the X-Mas song (12 Days of Christmas):");
    day = Integer.parseInt(DAY);
    if ((day >= 1) && (day <= 12))
    {
      if (day == 1)
        output += ("On the " + day + "st day of Christmas, my true love sent to me\n\n");
      else if (day == 2)
        output += ("On the " + day + "nd day of Christmas, my true love sent to me\n\n");
      else if (day == 3)
        output += ("On the " + day + "rd day of Christmas, my true love sent to me\n\n");
      else if ((day >= 4) && (day <= 12))
        output += ("On the " + day + "th day of Christmas, my true love sent to me\n\n");

      switch (day)
      {
        case 12:
          output += ("Twelve drummers drumming\n");
        case 11:
          output += ("Eleven pipers piping\n");
        case 10:
          output += ("Ten lords a-leaping\n");
        case 9:
          output += ("Nine ladies dancing\n");
        case 8:
          output += ("Eight maids a-milking\n");
        case 7:
          output += ("Seven swans a-swimming\n");
        case 6:
          output += ("Six geese a-laying,\n");
        case 5:
          output += ("Five golden rings,\n");
        case 4:
          output += ("Four calling birds,\n");
        case 3:
          output += ("Three French hens,\n");
        case 2:
          output += ("Two turtle doves, and\n");
        case 1:
          output += (" A partridge in a pear tree."); 
      }

     JOptionPane.showMessageDialog(null, output, "12 Days of Christmas", JOptionPane.INFORMATION_MESSAGE);
    }
    else
     JOptionPane.showMessageDialog(null, "Hey! You didn't input the correct days in the said Christmas song!!!", "ERROR", JOptionPane.ERROR_MESSAGE);
     System.exit(0);
  }
}

