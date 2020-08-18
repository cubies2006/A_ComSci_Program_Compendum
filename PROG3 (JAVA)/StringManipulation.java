/*This program illustrates the different String manipulations in
Java programming.*/

public class StringManipulation
{
  public static void main(String[]args)
  {
    String str1 = "Kwon", str2 = "Sang", str3 = "Woo";
    System.out.println("Is str1 equal to Kwon? " + str1.equals("Kwon"));
    System.out.println("What is the length of characters in str3? " + str3.length());
    System.out.println("What is the letter at index 2 in str2? " + str2.charAt(2));
    System.out.println("What will be the uppercase form of str1? " + str1.toUpperCase());
  }
}
