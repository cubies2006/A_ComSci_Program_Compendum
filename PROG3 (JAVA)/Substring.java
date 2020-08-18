import javax.swing.*;

public class Substring
{
  public static void main(String args[])
  {
    String letters = "abcdefghijklmabcdefghijklm";
    String output = "Substring from index 20 to end is " + "\"" + letters.substring(20) + "\"\n";
    output += "Substring from index 0 up to 6 is " + "\"" + letters.substring(0, 6) + "\"";
    JOptionPane.showMessageDialog(null, output, "Demonstrating String Class Substring Methods", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
