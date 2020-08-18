/*
 * InstructionsForm.java
 *
 * Created on January 18, 2004, 4:29 PM
 */

import javax.microedition.lcdui.*;

/**
 *
 * @author  kobi-kr
 * @version
 */
public class InstructionsForm extends Form implements CommandListener {
    private TestMidletMIDlet parent;
    private Command mainMenu = new Command("Back", Command.BACK, 1);
    
    public InstructionsForm(TestMidletMIDlet parent) {
        super("Instructions");
        addCommand(mainMenu);
        setCommandListener(this);
        
        this.append("The objective of this game is to shoot as many baskets as possible while preventing your opponent shoot to your basket.\n\n");
        this.append("move your player using 4 for moving left, 2 for moving up, 6 for moving right and 8 for moving down.\n\n");
        this.append("press 5 to throw the ball");
        
        this.parent = parent;
    }
    
    public void commandAction(Command c, Displayable d) {
        if (c == mainMenu) {
            parent.setCurrent("MainMenu2");
        }
    }
}
