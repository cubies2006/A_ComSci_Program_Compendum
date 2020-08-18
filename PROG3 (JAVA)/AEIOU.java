import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class AEIOU extends Applet implements ActionListener
{
  Label caption = new Label("          Enter a string:      ");
  TextField input = new TextField("");
  Button vowel = new Button("VOWEL");
  Label space1 = new Label("            ");
  Label a = new Label("a / A");
  Label e = new Label("e / E");
  Label i = new Label("i / I");
  Label o = new Label("o / O");
  Label u = new Label("u / U");
  Label space2 = new Label("                    ");
  TextField aoutput = new TextField(" ");
  TextField eoutput = new TextField(" ");
  TextField ioutput = new TextField(" ");
  TextField ooutput = new TextField(" ");
  TextField uoutput = new TextField(" ");

  public void init()
  {
    setLayout(new FlowLayout());
    setSize(300, 150);
    setBackground(Color.magenta);
    add(caption);
    add(input);
    add(vowel);
    add(space1);
    add(a);
    add(e);
    add(i);
    add(o);
    add(u);
    add(space2);
    add(aoutput);
    add(eoutput);
    add(ioutput);
    add(ooutput);
    add(uoutput);
    vowel.addActionListener(this);
    aoutput.addActionListener(this);
    eoutput.addActionListener(this);
    ioutput.addActionListener(this);
    ooutput.addActionListener(this);
    uoutput.addActionListener(this);
  }

  public void actionPerformed(ActionEvent z)
  {
    String INPUT = input.getText();
    int x, loop, acount = 0, ecount = 0, icount = 0, ocount = 0, ucount = 0;
    if (z.getSource() == vowel)
    {
      loop = INPUT.length() - 1;
      for (x = 0; x <= loop; x++)
      {
        if (INPUT.charAt(x) == 'a' || INPUT.charAt(x) == 'A')
          acount++;
        if (INPUT.charAt(x) == 'e' || INPUT.charAt(x) == 'E')
          ecount++;
        if (INPUT.charAt(x) == 'i' || INPUT.charAt(x) == 'I')
          icount++;
        if (INPUT.charAt(x) == 'o' || INPUT.charAt(x) == 'O')
          ocount++;
        if (INPUT.charAt(x) == 'u' || INPUT.charAt(x) == 'U')
          ucount++;  
      }
    }
    aoutput.setText(" " + acount);
    eoutput.setText(" " + ecount);
    ioutput.setText(" " + icount);
    ooutput.setText(" " + ocount);
    uoutput.setText(" " + ucount);
    invalidate();
    validate();
  }
}     