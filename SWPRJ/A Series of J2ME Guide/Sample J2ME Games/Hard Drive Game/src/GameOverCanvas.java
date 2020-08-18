import javax.microedition.lcdui.*;
import javax.microedition.midlet.MIDlet;

class GameOverCanvas extends Canvas
{
	private HardDriveMIDlet midlet;
	private long time;
	private int score;
	
	GameOverCanvas(HardDriveMIDlet hdmidlet, long gtime, int gscore)
	{
		super();
		this.midlet = hdmidlet;
		this.time = gtime;
		this.score = gscore;
		setFullScreenMode(true);
	}
	
	public void start()
	{
	}
	
	public void paint(Graphics g)
	{
		int width = getWidth();
		int height = getHeight();
		
		// clear screen to black
		g.setColor(0,0,0);
		g.fillRect(0, 0, width, height);
		// clear screen to orange
		g.setColor(255,100,0);
		g.fillRect(0, 0, width - 3, height - 3);
		
		// Write message. We use a trick to make outlined text: we draw it
		// offset one pixel to the top, bottom, left & right in white, then
		// centred in black.
		g.setFont(Font.getFont(Font.FACE_PROPORTIONAL, Font.STYLE_BOLD, Font.SIZE_LARGE));
		
		int centerX = width / 2;
		int centerY = height / 2;
		g.setColor(0x00FFFFFF);   // white
		drawText(g, centerX, centerY - 1);
		drawText(g, centerX, centerY + 1);
		drawText(g, centerX - 1, centerY);
		drawText(g, centerX + 1, centerY);
		g.setColor(0x00000000);   // black
		drawText(g, centerX, centerY);
	}
	
	private void drawText(Graphics g, int centerX, int centerY)
	{
		int fontHeight = g.getFont().getHeight();
		int textHeight = 3 * fontHeight;
		int topY = centerY - textHeight / 2;
		
		g.drawString("GAME OVER", centerX, topY, Graphics.HCENTER | Graphics.TOP);
		g.drawString("Time: " + time + " s", centerX, topY + fontHeight, Graphics.HCENTER | Graphics.TOP);
		g.drawString(("Score: " + score), centerX, topY + 2 * fontHeight, Graphics.HCENTER | Graphics.TOP);
	}
}