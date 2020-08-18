import javax.swing.JOptionPane;

public class Pythagorean
{
  public static void main(String[]args)
  {
    int x, y, r;
    String side1, side2, hypotenuse;

    side1 = JOptionPane.showInputDialog("Enter a value for side 1:");
    side2 = JOptionPane.showInputDialog("Enter a value for side 2:");
    hypotenuse = JOptionPane.showInputDialog("Enter a value for the hypotenuse:");

    x = Integer.parseInt(side1);
    y = Integer.parseInt(side2);
    r = Integer.parseInt(hypotenuse);

    if (r == Math.sqrt(x * x + y * y))
      JOptionPane.showMessageDialog(null, "They are Pythagorean Triple!!!", "PYTHAGOREAN TRIPLE", JOptionPane.INFORMATION_MESSAGE);
    else if (x == Math.sqrt(r * r - y * y))
      JOptionPane.showMessageDialog(null, "They are Pythagorean Triple!!!", "PYTHAGOREAN TRIPLE", JOptionPane.INFORMATION_MESSAGE);
    else if (y == Math.sqrt(r * r - x * x))
      JOptionPane.showMessageDialog(null, "They are Pythagorean Triple!!!", "PYTHAGOREAN TRIPLE", JOptionPane.INFORMATION_MESSAGE);
    else
      JOptionPane.showMessageDialog(null, "They are NOT Pythagorean Triple!!!", "INVALID", JOptionPane.ERROR_MESSAGE);
    System.exit(0);
  }
}
