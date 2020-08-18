//This program shows you the length, the reversed form, and the character
//array of a string.

import javax.swing.*;

public class StringMiscellaneous
{
  public static void main(String[]args)
  {
    String s1, output;
    char charArray[];

    s1 = new String("Park Yong Ha");
    charArray = new char[4];

    output = "s1: " + s1;
    output += "\nLength of s1: " + s1.length();
    output += "\nThe string reversed is: ";
    for (int count = s1.length() - 1; count >= 0; count--)
      output += s1.charAt(count) + " ";
    s1.getChars(0, 4, charArray, 0);
    output += "\nThe character array is: ";
    for (int count = 0; count < charArray.length; count++)
      output += charArray[count];
    JOptionPane.showMessageDialog(null, output, "Demonstrating String Class Constructors", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}    
