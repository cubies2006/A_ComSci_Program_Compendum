/*--------------------------------------------------
* ReadWrite.java
*
* Read and write to the record store.
*
* No GUI interface, all output is to the console
*-------------------------------------------------*/
import javax.microedition.rms.*;
import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;
import javax.microedition.io.*;

public class ReadWrite extends MIDlet
{
     private RecordStore rs = null;
     static final String REC_STORE = "rms1";

     public ReadWrite()
     {
       openRecStore();   // Create the record store

       // Write a few records and read them back
       writeRecord("developerWorks");
       writeRecord("www.IBM.com/developerWorks");
       readRecords();

       closeRecStore();  // Close record store
       deleteRecStore(); // Remove record store
     }

     public void destroyApp(boolean unconditional)
     {
     }

     public void startApp()
     {
       // There is no user interface, go ahead and shutdown
       destroyApp(false);
       notifyDestroyed();
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
         rs = RecordStore.openRecordStore(REC_STORE, true);
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

     public void writeRecord(String str)
     {
       byte[] rec = str.getBytes();

       try
       {
         rs.addRecord(rec, 0, rec.length);
       }
       catch (Exception e)
       {
         db(e.toString());
       }
     }

     public void readRecords()
     {
       try
       {
         byte[] recData = new byte[10];
         int len;

         for (int i = 1; i <= rs.getNumRecords(); i++)
         {
           // Re-allocate if necessary
           if (rs.getRecordSize(i) > recData.length)
             recData = new byte[rs.getRecordSize(i)];

           len = rs.getRecord(i, recData, 0);
           System.out.println("Record #" + i + ": " + newString(recData, 0, len));
           System.out.println("------------------------------");
         }
       }
       catch (Exception e)
       {
         db(e.toString());
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
