import javax.swing.*;

public class RollDie
{
  public static void main(String args[])
  {
    int face, frequency[] = new int[7];
    for (int roll = 1; roll <= 6000; roll++)
    {
      face = 1 + (int)(Math.random() * 6);
      ++frequency[face];
    }
    String output = "Face\tFrequency";
    for (face = 1; face < frequency.length; face++)
      output += "\n" + face + "\t" + frequency[face];
    JTextArea outputArea = new JTextArea();
    outputArea.setText(output);
    JOptionPane.showMessageDialog(null, outputArea, "Rolling a Die for 6000 Times", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
