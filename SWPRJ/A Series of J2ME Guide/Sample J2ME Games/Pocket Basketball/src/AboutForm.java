/*
 * aboutForm.java
 *
 * Created on January 18, 2004, 3:54 PM
 */

import javax.microedition.lcdui.*;


/**
 *
 * @author  kobi-kr
 * @version
 */
public class AboutForm extends Form implements CommandListener {
    private TestMidletMIDlet parent;
    private Command mainMenu = new Command("Back", Command.BACK, 1);
    
    public AboutForm(TestMidletMIDlet parent) {
        super("About Form");
        addCommand(mainMenu);
        setCommandListener(this);
        
        this.append("Pocket Basketball\nBy Kobi Krasnoff\n\n");
        this.append("All rights reserved.");
        
        this.parent = parent;
    }
    
    public void commandAction(Command c, Displayable d) {
        if (c == mainMenu) {
            parent.setCurrent("MainMenu2");
        }
    }
}
