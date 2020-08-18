import javax.swing.JOptionPane; //import class JOptionPane
        //java extension packages

public class Addition
{
  public static void main(String[]args) // main method begins execution of Java application
  {
    String firstnumber;
    String secondnumber;

    int number1;
    int number2;
    int sum;

    firstnumber = JOptionPane.showInputDialog("Enter first number:");
    secondnumber = JOptionPane.showInputDialog("Enter second number:");

    number1 = Integer.parseInt(firstnumber);
    number2 = Integer.parseInt(secondnumber);
    sum = number1 + number2;

    JOptionPane.showMessageDialog(null, "The sum is " + sum, "Result", JOptionPane.PLAIN_MESSAGE);

    System.exit(0); //terminate application
  }
}
