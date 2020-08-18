import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;
import javax.microedition.rms.*;


/**
 * An example MIDlet with simple "Hello" text and an Exit command.
 * Refer to the startApp, pauseApp, and destroyApp
 * methods so see how each handles the requested transition.
 *
 * @author  kobi-kr
 * @version
 */
public class TestMidletMIDlet extends MIDlet implements CommandListener {
    
    private Command exitCommand; // The exit command
    private Display display;
    private MainScreen main2;
    private Menu menu;
    private AboutForm aboutForm;
    private InstructionsForm instructionsForm;
    private YouWin youWin;
    private IWin iWin;
    private Splash splash;
    private int level = 50;
    private Level chooseLevel;
    private RecordStore rs = null;
    private boolean enableSound = true;
    
    public TestMidletMIDlet() {
        display = Display.getDisplay(this);
        main2 = new MainScreen(this);
        menu = new Menu(this);
        aboutForm = new AboutForm(this);
        instructionsForm = new InstructionsForm(this);
        chooseLevel = new Level(this);
        youWin = new YouWin(this);
        iWin = new IWin(this);
        splash = new Splash(this);
        
        exitCommand = new Command("Exit", Command.SCREEN, 2);
    }
    
    /**
     * Start up the Hello MIDlet by creating the TextBox and associating
     * the exit command and listener.
     */
    public void startApp() {
        //deleteRMS();
        if (RecordStore.listRecordStores() != null) {
            main2.setStatus(readRMS());
            if (main2.getCompMode() != 0) {
                menu.addContinue();
            }
        }
        splash.startTimer();
        display.setCurrent(splash);
    }
    
    /**
     * Pause is a no-op since there are no background activities or
     * record stores that need to be closed.
     */
    public void pauseApp() {
        
    }
    
    /**
     * Destroy must cleanup everything not handled by the garbage collector.
     * In this case there is nothing to cleanup.
     */
    public void destroyApp(boolean unconditional) {
        writeRMS(main2.getStatus());
        main2.stopTimer();
        exitMIDlet();
    }
    
    /**
     * Respond to commands, including exit
     * On the exit command, cleanup and notify that the MIDlet has been destroyed.
     */
    public void commandAction(Command c, Displayable d) {
        if (c == exitCommand) {
            writeRMS(main2.getStatus());
            destroyApp(false);
            notifyDestroyed();
        }
    }
    
    public void exitMIDlet() {
        if (main2.getCompMode() != 0) {
            writeRMS(main2.getStatus());
        }
        notifyDestroyed();
    }
    
    public void setCurrent(String d) {
        if (d == "MainScreen") {
        	main2.startGame();
            main2.setCompMode(4);
            display.setCurrent(main2);
        }
        else if (d == "MainMenu") {
            menu.addContinue();
            display.setCurrent(menu);
        }
        else if (d == "MainMenu2") {
            display.setCurrent(menu);
        }
        else if (d == "AboutForm") {
            display.setCurrent(aboutForm);
        }
        else if (d == "InstructionsForm") {
            display.setCurrent(instructionsForm);
        }
        else if (d == "ChooseLevel") {
            display.setCurrent(chooseLevel);
        }
        else if (d == "Continue") {
            //main2.startTimer();
            display.setCurrent(main2);
        }
        else if (d == "YouWin") {
            main2.setCompMode(0);
            display.setCurrent(youWin);
        }
        else if (d == "IWin") {
            main2.setCompMode(0);
            display.setCurrent(iWin);
        }
        else if (d == "FinishGame") {
            main2.startGame();
            menu.deleteContinue();
            display.setCurrent(menu);
        }
    }
    
    public void setLevel(int level) {
        this.level = level;
    }
    
    public int getLevel() {
        return level;
    }
    
    /**
     * Writes all the game data into recordstore
     * @param rec
     */
    public void writeRMS(byte[] rec) {
        try {
            rs = RecordStore.openRecordStore("pocket", true);
            if (rs.getNumRecords() > 0)
                rs.setRecord(1, rec, 0, 31);
            else
                rs.addRecord(rec, 0, 31);
            rs.closeRecordStore();
        }
        catch (Exception e) {}
    }
    
    /**
     * Reads the data from the recordstore 
     * @return
     */
    public byte[] readRMS() {
        byte[] rec = new byte[31];
        try {
            rs = RecordStore.openRecordStore("pocket", true);
            rec = rs.getRecord(1);
            rs.closeRecordStore();
        }
        catch (Exception e) {}
        return rec;
    }
    
    /**
     * 
     * Deletes all the record stores
     */
    public void deleteRMS() {
        if (RecordStore.listRecordStores() != null) {
            try {
                RecordStore.deleteRecordStore("pocket");
            }
            catch (Exception e) {}
        }
    }
    
    public void setCompMode(int i) {
        main2.setCompMode(i);
    }
    
    public int getCompmode() {
        return main2.getCompMode();
    }
    
    public void setSoundEnable(boolean bool) {
        enableSound = bool;
    }
    
    public boolean getSoundEnable() {
        return enableSound;
    }
}
