/*
 * Level.java
 *
 * Created on January 18, 2004, 4:51 PM
 */

import javax.microedition.lcdui.*;

/**
 *
 * @author  kobi-kr
 * @version
 */
public class Level extends List implements CommandListener {
    private static final String[] str = {"Beginner", "Intermidiate", "Advanced"};
    private Command chooseCommand = new Command("Choose", Command.ITEM, 1);
    private TestMidletMIDlet parent;
    
    public Level(TestMidletMIDlet parent) {
        super("Choose Level", List.IMPLICIT, str, null);
        addCommand(chooseCommand);
        setCommandListener(this);
        this.parent = parent;
    }
    
    public void commandAction(Command c, Displayable d) {
        if (c == chooseCommand) {
            switch(this.getSelectedIndex()) {
                case 0:
                    parent.setLevel(50);
                    break;
                case 1:
                    parent.setLevel(30);
                    break;
                case 2:
                    parent.setLevel(20);
                    break;
                default:
                    //
            }
            parent.setCurrent("MainMenu2");
        }
    }
}
