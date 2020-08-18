//This program computes for the average of inputted numbers. This program
//should not stop until the user input -1.

import java.text.DecimalFormat;

import javax.swing.JOptionPane;

public class Average
{
  public static void main(String[]args)
  {
    int gradeCounter, gradeValue, total;
    double average;
    String input;


    total = 0; gradeCounter = 0;

    input = JOptionPane.showInputDialog("Enter Integer Grade, -1 to Quit:");
    gradeValue = Integer.parseInt(input);

    while (gradeValue != -1)
    {
      total += gradeValue;
      gradeCounter++;

      input = JOptionPane.showInputDialog("Enter Integer Grade, -1 to Quit:");
      gradeValue = Integer.parseInt(input);
    }

      DecimalFormat twoDigits = new DecimalFormat("0.00");

      if (gradeCounter != 0)
      {
        average = (double) total / gradeCounter;
        JOptionPane.showMessageDialog(null, "The class average is " + twoDigits.format(average), "Class Average", JOptionPane.INFORMATION_MESSAGE);
      }
      else
        JOptionPane.showMessageDialog(null, "No grades were entered!!!", "Class Average", JOptionPane.INFORMATION_MESSAGE);
      System.exit(0);
  }
}        

