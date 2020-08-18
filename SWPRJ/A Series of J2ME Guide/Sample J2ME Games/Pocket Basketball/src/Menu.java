/*
 * Menu.java
 *
 * Created on January 15, 2004, 4:36 PM
 */

import javax.microedition.lcdui.*;

/**
 *
 * @author  kobi-kr
 * @version
 */

public class Menu extends List implements CommandListener {
    private static final String[] str = {"Start Game", "Choose Level", "Instructions", "About"};
    private TestMidletMIDlet parent;
    private Command chooseCommand = new Command("Exit", Command.ITEM, 1);
    private Command exitCommand = new Command("Choose", Command.EXIT, 2);
    
    public Menu(TestMidletMIDlet parent) {
        super("Main Menu", List.IMPLICIT, str, null);
        addCommand(chooseCommand);
        addCommand(exitCommand);
        setCommandListener(this);
        this.parent = parent;
        
    }    
    
    public void commandAction(Command c, Displayable d) {
        if (c == chooseCommand) {
            parent.exitMIDlet();
        }
        else if (c == exitCommand) {
            if (this.getString(this.getSelectedIndex()) == "Start Game") {
                parent.setCurrent("MainScreen");
            }
            else if (this.getString(this.getSelectedIndex()) == "About") {
                parent.setCurrent("AboutForm");
            }
            else if (this.getString(this.getSelectedIndex()) == "Instructions") {
                parent.setCurrent("InstructionsForm");
            }
            else if (this.getString(this.getSelectedIndex()) == "Choose Level") {
                parent.setCurrent("ChooseLevel");
            }
            else if (this.getString(this.getSelectedIndex()) == "Continue") {
                parent.setCurrent("Continue");
            }
        }
    }
    
    public void addContinue() {
        if (this.getString(0) != "Continue") {
            this.insert(0, "Continue", null);
            this.setSelectedIndex(0, true);
        }
    }
    
    public void deleteContinue() {
        if (this.getString(0) == "Continue") {
            this.delete(0);
        }
    }
    
    
}
