import javax.swing.*;

public class Histogram
{
  public static void main(String args[])
  {
    int array[] = {19, 3, 15, 7, 11, 9, 13, 5, 17, 1};
    String output = "Element\tValue\tHistogram";

    for (int counter = 0; counter < array.length; counter++)
    {
      output += "\n" + counter + "\t" + array[counter] + "\t";
      for (int stars = 0; stars < array[counter]; stars++)
        output += "*";
    }

    JTextArea outputArea = new JTextArea();
    outputArea.setText(output);

    JOptionPane.showMessageDialog(null, outputArea, "Histogram Printing Program", JOptionPane.INFORMATION_MESSAGE);
    System.exit(0);
  }
}
