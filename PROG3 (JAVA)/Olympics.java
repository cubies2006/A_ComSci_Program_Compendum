import javax.swing.JOptionPane;

public class Olympics
{
  public static void main(String[]args)
  {
    int year;
    String YEAR, output = "";
    YEAR = JOptionPane.showInputDialog("Enter a year for the Modern Olympic Games (1896 to 2008 only): ");
    year = Integer.parseInt(YEAR);
    if (year == 1896)
      JOptionPane.showMessageDialog(null, "Athens 1896 - The Games of the I Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1900)
      JOptionPane.showMessageDialog(null, "Paris 1900 - The Games of the II Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1904)
      JOptionPane.showMessageDialog(null, "St. Louis 1904 - The Games of the III Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1908)
      JOptionPane.showMessageDialog(null, "London 1908 - The Games of the IV Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1912)
      JOptionPane.showMessageDialog(null, "Stockholm 1912 - The Games of the V Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1916)
      JOptionPane.showMessageDialog(null, "WORLD WAR I", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1920)
      JOptionPane.showMessageDialog(null, "Antwerp 1920 - The Games of the VII Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1924)
      JOptionPane.showMessageDialog(null, "Paris 1924 - The Games of the VIII Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1928)
      JOptionPane.showMessageDialog(null, "Amsterdam 1928 - The Games of the IX Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1932)
      JOptionPane.showMessageDialog(null, "Los Angeles 1932 - The Games of the X Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1936)
      JOptionPane.showMessageDialog(null, "Berlin 1936 - The Games of the XI Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1940)
      JOptionPane.showMessageDialog(null, "WORLD WAR II", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1944)
      JOptionPane.showMessageDialog(null, "WORLD WAR II", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1948)
      JOptionPane.showMessageDialog(null, "London 1948 - The Games of the XIV Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1952)
      JOptionPane.showMessageDialog(null, "Helsinki 1952 - The Games of the XV Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1956)
      JOptionPane.showMessageDialog(null, "Melbourne 1956 - The Games of the XVI Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1960)
      JOptionPane.showMessageDialog(null, "Rome 1960 - The Games of the XVII Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1964)
      JOptionPane.showMessageDialog(null, "Tokyo 1964 - The Games of the XVIII Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1968)
      JOptionPane.showMessageDialog(null, "Mexico City 1968 - The Games of the XIX Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1972)
      JOptionPane.showMessageDialog(null, "Munich 1972 - The Games of the XX Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1976)
      JOptionPane.showMessageDialog(null, "Montreal 1976 - The Games of the XXI Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1980)
      JOptionPane.showMessageDialog(null, "Moscow 1980 - The Games of the XXII Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1984)
      JOptionPane.showMessageDialog(null, "Los Angeles 1984 - The Games of the XXIII Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1988)
      JOptionPane.showMessageDialog(null, "Seoul 1988 - The Games of the XXIV Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1992)
      JOptionPane.showMessageDialog(null, "Barcelona 1992 - The Games of the XXV Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 1996)
      JOptionPane.showMessageDialog(null, "Atlanta 1996 - The Centennial Games of the XXVI Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 2000)
      JOptionPane.showMessageDialog(null, "Sydney 2000 - The New Milllenium Games of the XXVII Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 2004)
      JOptionPane.showMessageDialog(null, "Athens 2004 - The Games of the XXVIII Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);
    else if (year == 2008)
      JOptionPane.showMessageDialog(null, "Beijing 2008 - The Games of the XXIX Olympiad", "Olympics", JOptionPane.INFORMATION_MESSAGE);     
    else
      JOptionPane.showMessageDialog(null, "ERROR!!!", "Olympics", JOptionPane.ERROR_MESSAGE);
    System.exit(0);
  }
}