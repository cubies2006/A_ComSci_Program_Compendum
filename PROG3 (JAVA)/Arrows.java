/*This program generates an upward and downward arrow with a series
of asterisks.*/
/*The variable x is the overall FOR Loop since both arrows consumes
7 lines. Whenever x is equal to 4 on both arrows, the loop will
undergo in a nested FOR loop. The first FOR loop (with variable y)
ensures that the second FOR loop (with variable z) will occur 3 times.
While the second FOR loop determines the number of spaces to be
displayed. When x is not equal to 4, it will display one asterisk and
a newline for 4 times.*/

public class Arrows
{
  public static void main(String[]args)
  {
    int x, y, z, r = 0, s, ctr = 5; //initialization for the downward arrow
    String output="";
    for (x = 0; x <= 4; x++) //loop for 5 times
    {
      if (x == 4)
      {
        for (y = 2; y >= 0; y--) //an inverted triangle will appear after the loop repeats 3 times
        {
          for (z = 0; z < ctr; z++) //this loop determines how many asterisks to displayed to generate the inverted triangle
          {
            output += "*";
          }
          output += "\n"; //a newline must be displayed after the asterisks had been displayed
          ctr -= 2; //the counter decrements by 2
          s = r;
          while (r > -1) //this while loop determines how many spaces to be displayed
          {
            output += " ";
            r--;
          }
          s++;
          r = s;
        }
        output += "\n";
      }
      else
      {
        output += "  *\n"; //an asterisks and a newline will be displayed as long as x is not equal to 4
      }
    }
    r = 2; //initialization in the number of spaces for the upward arrow
    ctr = 1;  //initialization in the counter for the upward arrow
    for (x = 4; x >= 0; x--) //loop for 5 times
    {
      if (x == 4)
      {
        for (y = 0; y <= 2; y++) //a triangle will appear after the loop repeats 3 times
        {
          s = r;
          while (r > 0) //this loop determines how many spaces will be displayed
          {
            output += " ";
            r--;
          }
          s--;
          r = s;
          for (z = 0; z < ctr; z++) //this loop determines how many asterisks to be displayed to generate a triangle
          {
            output += "*";
          }
          output += "\n"; //a newline will be displayed after the asterisks had been displayed
          ctr += 2; //the counter increments by 2
        }
      }
      else
      {
        output += "  *\n"; //an asterisks and a newline will be displayed as long as x is not equal to 4
      }
    }
    System.out.println(output);
  }
}

