/*--------------------------------------------------
* StringSearch.java
*
* Display a Form and TextField for searching records
*-------------------------------------------------*/
import java.io.*;
import javax.microedition.midlet.*;
import javax.microedition.rms.*;
import javax.microedition.lcdui.*;

public class StringSearch extends MIDlet implements CommandListener
{
     private Display display;		    // Reference to Display object
     private Form fmMain;         // Main form
     private Command cmFind;      // Command to search record store
     private Command cmExit;      // Command to exit
     private TextField tfFind;    // Search text
     private RecordStore rs = null;          // Record store
     static final String REC_STORE = "rms4"; // Name of record store

     public StringSearch()
     {
       display = Display.getDisplay(this);

       // Define textfield, stringItem and commands
       tfFind = new TextField("Find", "", 12, TextField.ANY);
       cmExit = new Command("Exit", Command.EXIT, 1);
       cmFind = new Command("Find", Command.SCREEN, 2);

       // Create the form, add commands
       fmMain = new Form("Record Search");
       fmMain.addCommand(cmExit);
       fmMain.addCommand(cmFind);

       // Append textfield and stringItem
       fmMain.append(tfFind);

       // Capture events
       fmMain.setCommandListener(this);

       //--------------------------------
       // Open and write to record store
       //--------------------------------
       openRecStore();   // Create the record store
       writeTestData();  // Write a series of records
     }

     public void destroyApp(boolean unconditional)
     {
       closeRecStore();  // Close record store
       deleteRecStore(); // Remove record store
     }

     public void startApp()
     {
       display.setCurrent(fmMain);
     }

     public void pauseApp()
     {
     }

     public void openRecStore()
     {
       try
       {
         // The second parameter indicates that the record store
       		 // should be created if it does not exist
         rs = RecordStore.openRecordStore(REC_STORE, true );
       }
       catch (Exception e)
       {
         db(e.toString());
       }
     }

     public void closeRecStore()
     {
       try
       {
         rs.closeRecordStore();
       }
       catch (Exception e)
       {
         db(e.toString());
       }
     }

     public void deleteRecStore()
     {
       if (RecordStore.listRecordStores() != null)
       {
         try
         {
           RecordStore.deleteRecordStore(REC_STORE);
         }
         catch (Exception e)
         {
           db(e.toString());
         }
       }
     }

     /*--------------------------------------------------
     * Create array of data to write into record store
     *-------------------------------------------------*/
     public void writeTestData()
     {
       String[] strs = {
                       "I think this would be a good time for a beer. (FDR)",
                       "I'll make it a felony to drink small beer. (Shakespeare)",
                       "They who drink beer will think beer. (Washington Irving)",
                       "I would give all my fame for a pot of ale. (Shakespeare)"};
       writeRecords(strs);
     }

     /*--------------------------------------------------
     * Write to record store.
     *-------------------------------------------------*/
     public void writeRecords(String[] sData)
     {
       byte[] record;

       try
       {
         // Only add the records once
         if (rs.getNumRecords() > 0)
           return;

         for (int i = 0; i < sData.length; i++)
         {
           record = sData[i].getBytes();
           rs.addRecord(record, 0, record.length);
         }
       }
       catch (Exception e)
       {
         db(e.toString());
       }
     }

     /*--------------------------------------------------
     * Search using enumerator and record filter
     *-------------------------------------------------*/
     private void searchRecordStore()
     {
       try
       {
         // Record store is not empty
         if (rs.getNumRecords() > 0)
         {
           // Setup the search filter with the user requested text
           SearchFilter search = new SearchFilter(tfFind.getString());

           RecordEnumeration re = rs.enumerateRecords(search, null, false);

           // Remove any previous record entries displayed on the form
           clearForm();

           // A match was found using the filter
           if (re.numRecords() > 0)
           {
             // Show match in the stringItem on the form
             while (re.hasNextElement())
               fmMain.append(new String(re.nextRecord()));
           }

           re.destroy();   // Release enumerator
         }
       }
       catch (Exception e)
       {
         db(e.toString());
       }
     }

     private void clearForm()
     {
       // Delete all items on the form, except the textfield
       int x = fmMain.size();

       while (--x >= 1)
         fmMain.delete(x);
     }

     public void commandAction(Command c, Displayable s)
     {
       if (c == cmFind)
       {
         searchRecordStore();
       }
       else if (c == cmExit)
       {
         destroyApp(false);
         notifyDestroyed();
       }
     }

     /*--------------------------------------------------
     * Simple message to console for debug/errors
     *-------------------------------------------------*/
     private void db(String str)
     {
       System.err.println("Msg: " + str);
     }
}

/*--------------------------------------------------
* Search for text within a record
* Each record passed in contains only text (String)
*-------------------------------------------------*/
class SearchFilter implements RecordFilter
{
     private String searchText = null;

     public SearchFilter(String searchText)
     {
       // Text to find
       this.searchText = searchText.toLowerCase();
     }

     public boolean matches(byte[] candidate)
     {
       String str = new String(candidate).toLowerCase();

       // Look for text
       if (searchText != null && str.indexOf(searchText) != -1)
         return true;
       else
         return false;
     }
}
