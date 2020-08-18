//This program shows you the uppercase, lowercase, and trimmed form
//of different strings.

import javax.swing.*;

public class StringMiscellaneous2
{
  public static void main(String[]args)
  {
    String s1 = new String("hello"), s2 = new String("GOOD BYE"), s3 = new String("   spaces   ");
    String output = "s1 = " + s1 + "\ns2 = " + s2 + "\ns3 = " + s3;

    output += "\n\nReplace 'l' with 'L' in s1: " + s1.replace('l', 'L');
    output += "\n\ns1.toUpperCase() = " + s1.toUpperCase() + "\ns2.toLowerCase() = " + s2.toLowerCase();
    output += "\n\ns3 after trim = \"" + s3.trim() + "\"";
    output += "\n\ns1 = " + s1.toString();
    char charArray[] = s1.toCharArray();
    output += "\n\ns1 as a character array = ";
    for (int count = 0; count < charArray.length; ++count)
      output += charArray[count];
    JOptionPane.showMessageDialog(null, output, "Demonstrating String Class Constructors", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}    
