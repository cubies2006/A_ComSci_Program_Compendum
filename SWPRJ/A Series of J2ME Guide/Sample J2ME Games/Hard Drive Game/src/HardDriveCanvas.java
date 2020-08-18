import java.io.IOException;
import javax.microedition.midlet.MIDlet;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.game.*;

class HardDriveCanvas extends GameCanvas implements Runnable
{
	private HardDriveMIDlet midlet;
 	private Sprite carSprite;
    	
	private LayerManager layerManager;
	private ObstacleManager obsManager;

	private boolean gameRunning, collision = false;
	
	private int width;
	private int height;

	private long gameDuration;
	
	public HardDriveCanvas(HardDriveMIDlet hdmidlet, String carImageName, String obsImageName) throws IOException 
	{
  		super(true);

		this.midlet = hdmidlet;  //used later

		layerManager = new LayerManager();

		width = getWidth();
		height = getHeight();

		layerManager.setViewWindow(1,1,width - 2, height -2);

		createCar(carImageName);
 
		obsManager = new ObstacleManager( this, layerManager, obsImageName);
		
	} 

	private void createCar(String carImageName) throws IOException 
	{
		Image carImage = Image.createImage(carImageName);
		carSprite = new Sprite(carImage);

		// Put the sprite close to bottom center
		carSprite.setPosition(width/2,height - 30);
	
		layerManager.append(carSprite);
	}

	public void start() 
	{
  		gameRunning = true;
		Thread gameThread = new Thread(this);
		gameThread.start();
	}

	public void stop() 
	{ 
		gameRunning = false; 
	}

	public void run() 
	{
		Graphics g = getGraphics();
		int timeStep = 300;
		obsManager.renderObstacles();
		long startTime = System.currentTimeMillis();
		while (gameRunning) //is true                                    
		{
			tick();
			input();
			render(g);
			
			long endTime = System.currentTimeMillis();
      		long duration = (int)(endTime - startTime);
			gameDuration = duration / 1000;  //game time in seconds

			try
			{
				Thread.sleep(timeStep );//- duration); 
				obsManager.MoveObstacles();
			}
        	catch (InterruptedException ie) 
			{
				stop(); 
			}
		}
	}			

	private void tick() 
	{
		if(!collision)
			checkCollision();
		if (collision) 
		{
			//Game over
			int score = obsManager.getScore();
			midlet.HardDriveCanvasGameOver(gameDuration,score);
			//stop();	 
		}
  	}

	private void input() 
	{    
		int keyStates = getKeyStates();
		int currentY = carSprite.getY();
		int currentX = carSprite.getX( );
		if ((keyStates & LEFT_PRESSED) != 0)      
			carSprite.setPosition(Math.max(0, currentX-5), currentY);    
		if ((keyStates & RIGHT_PRESSED) != 0)      
			carSprite.setPosition(Math.min(170, currentX + 5), currentY);
	}
	
	private void render(Graphics g) 
	{
		g.setColor(0, 0, 0); // black
  		g.fillRect(0, 0,getWidth()-3, getHeight()-3);
  		
		layerManager.paint(g,0,0);
		
		flushGraphics();
	}

	private void checkCollision()
	{
		if (obsManager.hitTest(carSprite))		
			collision = true;
	}
}

	





