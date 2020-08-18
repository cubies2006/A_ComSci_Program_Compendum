/*  This applet draws a red-and-black checkerboard.
It is assumed that the size of the applet is 
160 by 160 pixels. */

import java.awt.*;
import java.applet.*;
    
public class Checkerboard extends Applet 
{
	public void paint(Graphics g) 
	{
		int row;   // Row number, from 0 to 7
		int col;   // Column number, from 0 to 7
		int x,y;   // Top-left corner of square
		
		for (row = 0; row < 8; row++) 
		{
            for ( col = 0;  col < 8;  col++) 
			{
				x = col * 20;
                y = row * 20;
                if ((row % 2) == (col % 2))
                   g.setColor(Color.red);
                else
                   g.setColor(Color.black);
                g.fillRect(x, y, 20, 20);
            }
		} // end for row
	}  // end paint()
}  // end class
