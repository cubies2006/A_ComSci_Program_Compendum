//This program shows you how String Concatenation works!!!

import javax.swing.*;

public class StringConcatenation
{
  public static void main(String args[])
  {
    String s1 = new String("Anakin "), s2 = new String("Skywalker");
    String output = "s1 = " + s1 + "\ns2 = " + s2;

    output += "\n\nResult of s1.concat(s2) = " + s1.concat(s2);
    output += "\ns1 after concatenation = " + s1;

    JOptionPane.showMessageDialog(null, output, "Demonstrating String Method Concatenation", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
