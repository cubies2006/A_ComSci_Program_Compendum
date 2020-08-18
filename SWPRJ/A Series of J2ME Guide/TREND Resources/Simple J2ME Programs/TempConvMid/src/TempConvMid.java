import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;


public class TempConvMid extends MIDlet 
    implements CommandListener {

  private Display display;
  private Command cmdExit;
  private Command cmdConvert;
  private Command cmdOK;
  private Form form1;
  private Form form2;
  private TextField tempField;
  private StringItem convertedTemp; // for labels

    public void startApp() {
      display = Display.getDisplay(this);

      cmdConvert = new Command("Convert",Command.SCREEN,1);
      cmdExit = new Command("Exit",Command.SCREEN,1);
      cmdOK = new Command("OK",Command.SCREEN,1);

      form1 = new Form("TmpCnv");
      tempField = new TextField("Temp:",null,10,TextField.ANY);
      form1.addCommand(cmdConvert);
      form1.addCommand(cmdExit);
      form1.setCommandListener(this);
      form1.append(tempField);

      form2 = new Form("Result");
      convertedTemp = new StringItem(null, null);
      form2.append(convertedTemp);
      form2.addCommand(cmdOK);
      form2.setCommandListener(this);

      display.setCurrent(form1);
    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }

    public void commandAction(Command cmd, Displayable d) {
        
      String displayString = null;
      
      if (cmd == cmdExit) {
        destroyApp(false);
        notifyDestroyed();
      }
      else if (cmd == cmdConvert) {
        String s = tempField.getString();
        displayString = convertTemp(s);
        convertedTemp.setText(displayString);
        display.setCurrent(form2);
      }
      else if (cmd == cmdOK) {
        tempField.setString(null);
        display.setCurrent(form1);
      }
    }

    private String convertTemp(String s) {
      char c = s.charAt(s.length() - 1);
      StringBuffer tsb = new StringBuffer();
      try {
        switch (c) {
          case 'C':
          case 'c':
            tsb.append(cToF(s.substring(0,s.length() - 1)));
            tsb.append('F');
            break;
          case 'F':
          case 'f':
            tsb.append(fToC(s.substring(0,s.length() - 1)));
            tsb.append('C');
            break;
          default:
            tsb.append("**ERROR**");
        }
      }
      catch(KMathException e) {
        tsb.append("**ERROR**");
      }
      finally {
        return tsb.toString();
      }
    }

    private String cToF(String c) throws KMathException {
      String cx9 = KMath.multiply(c,"9");
      String temp = KMath.divide(cx9,"5");
      String f = KMath.add(temp,"32");
      return f;
    }

    private String fToC(String f) throws KMathException {
      String fm32 = KMath.subtract(f,"32");
      String temp = KMath.multiply(fm32,"5");
      String c = KMath.divide(temp,"9");
      return c;
    }
}
