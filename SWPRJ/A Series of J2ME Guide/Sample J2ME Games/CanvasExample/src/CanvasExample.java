import javax.microedition.lcdui.*;
import javax.microedition.midlet.MIDlet;

public class CanvasExample extends MIDlet
{
	Canvas myCanvas;
	
	public CanvasExample()
	{
		myCanvas = new MyCanvas();
	}
	
	public void startApp()
	{
		Display.getDisplay(this).setCurrent(myCanvas);
		myCanvas.repaint();
	}
	
	public void pauseApp()
	{
	}
	
	public void destroyApp(boolean unconditional)
	{
	}
}

class MyCanvas extends Canvas
{
	private int x = getWidth()/2 - 10;
	private int y = getHeight()/2 - 10;
	private int dx = 20;
	private int dy = 20;
	
	public void paint(Graphics g)
	{
		g.setColor(0xffffff);
		g.fillRect(0, 0, getWidth(), getHeight());
		g.setColor(0x000000);
		g.fillRect(x, y, 20, 20);
	}
	
	public void keyPressed(int keyCode)
	{
		int gameAction = getGameAction(keyCode);
		if (gameAction == LEFT)
			x -= dx;
		else if (gameAction == RIGHT)
			x += dx;
		else if (gameAction == UP)
			y -= dy;
		else if (gameAction == DOWN)
			y += dy;
		repaint();
	}	
}	
	
	