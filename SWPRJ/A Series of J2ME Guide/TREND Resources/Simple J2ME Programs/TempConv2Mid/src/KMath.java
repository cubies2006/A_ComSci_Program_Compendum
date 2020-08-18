public final class KMath {

  protected static int MAX_FIELD_WIDTH = 10;
 
  private KMath() {
  }

  public static void setMaxFieldWidth(int width) {
    MAX_FIELD_WIDTH = width;
  }

  public static String add(String s1, String s2) 
      throws KMathException {
    QuasiScientificNotation qsn1 =
      new QuasiScientificNotation(s1);
    QuasiScientificNotation qsn2 =
      new QuasiScientificNotation(s2);
    qsn1.add(qsn2);
    return qsn1.toString();
  }

  public static String subtract(String s1, String s2) 
      throws KMathException {
    QuasiScientificNotation qsn1 =
      new QuasiScientificNotation(s1);
    QuasiScientificNotation qsn2 =
      new QuasiScientificNotation(s2);
    qsn1.subtract(qsn2);
    return qsn1.toString();
  }

  public static String multiply(String s1, String s2) 
      throws KMathException {
    QuasiScientificNotation qsn1 =
      new QuasiScientificNotation(s1);
    QuasiScientificNotation qsn2 =
      new QuasiScientificNotation(s2);
    qsn1.multiply(qsn2);
    return qsn1.toString();
  }

  public static String divide(String s1, String s2) 
      throws KMathException {
    QuasiScientificNotation qsn1 =
      new QuasiScientificNotation(s1);
    QuasiScientificNotation qsn2 =
      new QuasiScientificNotation(s2);
    qsn1.divide(qsn2);
    return qsn1.toString();
  }
}
