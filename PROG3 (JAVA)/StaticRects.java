 import java.awt.*;
   import java.applet.Applet;
   
   public class StaticRects extends Applet {
      
      public void paint(Graphics g) {
   
            // Draw a set of nested black rectangles on a red background.
            // Each nested rectangle is separated by 15 pixels on
            // all sides from the rectangle that encloses it.
            
         int inset;    // Gap between borders of applet 
                       //        and one of the rectangles.
                       
         int rectWidth, rectHeight;   // The size of one of the rectangles.
                       
         g.setColor(Color.red);
         g.fillRect(0,0,300,160);  // Fill the entire applet with red.
         
         g.setColor(Color.black);  // Draw the rectangles in black.
                                          
         inset = 0;
         
         rectWidth = 299;    // Set size of first rect to size of applet.
         rectHeight = 159;
         
         while (rectWidth >= 0 && rectHeight >= 0) {
            g.drawRect(inset, inset, rectWidth, rectHeight);
            inset += 15;       // Rects are 15 pixels apart.
            rectWidth -= 30;   // Width decreases by 15 pixels 
                               //             on left and 15 on right.
            rectHeight -= 30;  // Height decreases by 15 pixels 
                               //             on top and 15 on bottom.
         }
         
      }  // end paint()
   
   }  // end class StaticRects
