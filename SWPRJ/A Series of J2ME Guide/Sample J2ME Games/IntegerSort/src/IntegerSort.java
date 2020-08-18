/*--------------------------------------------------
* IntegerSort.java
*-------------------------------------------------*/
import java.io.*;
import javax.microedition.midlet.*;
import javax.microedition.rms.*;

public class IntegerSort extends MIDlet
{
     private RecordStore rs = null;    // Record store
     static final String REC_STORE = "rms3"; // Name of record store

     public IntegerSort()
     {
       openRecStore();   // Create the record store

       writeTestData();  // Write a series of records
       readStream();     // Read back the records

       closeRecStore();  // Close record store
       deleteRecStore(); // Remove the record store
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
         rs = RecordStore.openRecordStore(REC_STORE, true );
       }
       catch (Exception e)
       {
         // We should pay attention to the actual error thrown
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
     * Create arrays to write to record store
     *-------------------------------------------------*/
     public void writeTestData()
     {
       String[] strings = {"Java", "J2ME", "C"};
       int[] integers = {2, 1, 3};

      writeStream(strings, integers);
     }

     /*--------------------------------------------------
     * Write to record store using streams.
     *-------------------------------------------------*/
     public void writeStream(String[] sData, int[] iData)
     {
       try
       {
          // Write data into an internal byte array
         ByteArrayOutputStream strmBytes = new ByteArrayOutputStream();

         // Write Java data types into the above byte array
         DataOutputStream strmDataType = new DataOutputStream(strmBytes);

         byte[] record;

         for (int i = 0; i < sData.length; i++)
         {
           // Write Java data types
           strmDataType.writeUTF(sData[i]);
           strmDataType.writeInt(iData[i]);

           // Clear any buffered data
           strmDataType.flush();

           // Get stream data into byte array and write record
           record = strmBytes.toByteArray();
           rs.addRecord(record, 0, record.length);

           // Toss any data in the internal array so writes
           // starts at beginning (of the internal array)
           strmBytes.reset();
         }

         strmBytes.close();
         strmDataType.close();

       }
       catch (Exception e)
       {
          db(e.toString());
       }
     }

     /*--------------------------------------------------
     * Read from the record store using streams
     *-------------------------------------------------*/
     public void readStream()
     {
       try
       {
         // Array to hold each record
         byte[] recData = new byte[50];

          // Read from the specified byte array
         ByteArrayInputStream strmBytes = new ByteArrayInputStream(recData);

         // Read Java data types from the above byte array
         DataInputStream strmDataType = new DataInputStream(strmBytes);

         if (rs.getNumRecords() > 0)
         {
           // Create instance of the comparator
           ComparatorInteger comp = new ComparatorInteger();

           // Create enumerator, referencing the comparator
           RecordEnumeration re = rs.enumerateRecords(null, comp, false);

           // Loop through all elements in the result set
           int i = 1;
           while (re.hasNextElement())
           {
             // Get data into the byte array
             rs.getRecord(re.nextRecordId(), recData, 0);

             // Read back the data types
             System.out.println("Record #" + i++);

             System.out.println("String: " + strmDataType.readUTF());
             System.out.println("Integer: " + strmDataType.readInt());
             System.out.println("--------------------");

             // Reset so read starts at beginning of array
             strmBytes.reset();
           }

           comp.compareIntClose();

           // Free enumerator
           re.destroy();
         }

         strmBytes.close();
         strmDataType.close();

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

/*--------------------------------------------------
* Compares two integers to determine sort order
* Each record passed in contains multiple Java data
* types - use only the integer data for sorting
*-------------------------------------------------*/
class ComparatorInteger implements RecordComparator
{
     private byte[] recData = new byte[10];

     // Read from a specified byte array
     private ByteArrayInputStream strmBytes = null;

     // Read Java data types from the above byte array
     private DataInputStream strmDataType = null;

     public void compareIntClose()
     {
       try
       {
         if (strmBytes != null)
           strmBytes.close();
         if (strmDataType != null)
           strmDataType.close();
       }
       catch (Exception e)
       {}
     }

     public int compare(byte[] rec1, byte[] rec2)
     {
       int x1, x2;

       try
       {
         // If either record is larger than our buffer, reallocate
         int maxsize = Math.max(rec1.length, rec2.length);
         if (maxsize > recData.length)
           recData = new byte[maxsize];

         // Read record #1
         // We want the integer from the record, which is
         // the second "field" thus we must read the
         // String first to get to the integer value
         strmBytes = new ByteArrayInputStream(rec1);
         strmDataType = new DataInputStream(strmBytes);
         strmDataType.readUTF();       // Read string
         x1 = strmDataType.readInt();  // Read integer

         // Read record #2
         strmBytes = new ByteArrayInputStream(rec2);
         strmDataType = new DataInputStream(strmBytes);
         strmDataType.readUTF();       // Read string
         x2 = strmDataType.readInt();  // Read integer

         // Compare record #1 and #2
         if (x1 == x2)
           return RecordComparator.EQUIVALENT;
         else if (x1 < x2)
           return RecordComparator.PRECEDES;
         else
           return RecordComparator.FOLLOWS;

       }
       catch (Exception e)
       {
         return RecordComparator.EQUIVALENT;
       }
     }
}
