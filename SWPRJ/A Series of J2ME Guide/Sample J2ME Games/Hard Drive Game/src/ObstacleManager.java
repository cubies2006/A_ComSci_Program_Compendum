/*ObstacleManager.java : creates and manages obstacles */

import java.io.IOException;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.game.*;
public class ObstacleManager 
{
	private Sprite [] obstacles;       
	//private boolean [] active;
	//private int [] xpos;
	//private int [] ypos;

	private LayerManager layerManager;
	private GameCanvas hdCanvas;

	private static final int MAX_OBS = 10;   //maximum number of obstacles appearing at a time in car's path, could be changed to any desired number

	private static int Score = 0;

		
	/** Creates a new instance of	ObstacleManager */

	public ObstacleManager(GameCanvas canvas, LayerManager lm, String obsFileName) throws IOException 
	{
		hdCanvas = canvas;
		layerManager = lm;
		createObstacles(obsFileName);
	}

	private void createObstacles(String obsImageName)  throws IOException 
	{
		Image obsImage = Image.createImage(obsImageName);
		obstacles = new Sprite[MAX_OBS];
	
		//active = new boolean[MAX_OBS];
		
		//xpos = new int[MAX_OBS];
		//ypos = new int[MAX_OBS];
		
		for (int i=0; i < MAX_OBS; i++) 
		{
			obstacles[i] = new Sprite(obsImage);
			obstacles[i].setVisible(false);
		
			layerManager.append(obstacles[i]);
		}
	}

	//private int lastRendered = 0;
	public void renderObstacles() 
	{
		for (int i=0; i < MAX_OBS; i++)
		{
			//obstacles[i].setPosition(locations[i], 0);
			ReSetObstaclesPosition();
			obstacles[i].setVisible(true);
		}		
	}

	public void MoveObstacles() 
	{
		for (int i=0; i < obstacles.length; i++) 
		{
			int currentX = obstacles[i].getX( );
			int newY = obstacles[i].getY( ) + 14; // 14 is image height
			
			if (newY >= 177)
			{
				//obstacles[i].setVisible(false);
				Score+=1;
				java.util.Random random = new java.util.Random(); 
				int yPos = (random.nextInt()>>>1) % 170;
				int xPos = (random.nextInt()>>>1) % 170;

				//obstacles[i].setPosition(currentX , - yPos);
				obstacles[i].setPosition(xPos , - yPos);
			}
			else
			{
				obstacles[i].setPosition(currentX, newY);
			}						
		}
	}

	public void ReSetObstaclesPosition() 
	{
		java.util.Random random = new java.util.Random(); 
		for( int i = 0; i < 10 ; i++)
		{
			int nyPos = (random.nextInt()>>>1) % 170;
			int nxPos = (random.nextInt()>>>1) % 170;
			obstacles[i].setPosition(nxPos, -nyPos );
		}
	}

	public boolean hitTest(Sprite carSprite) 
	{
		boolean retval = false;
		for (int i=0; i < obstacles.length; i++) 
		{
			if (carSprite.collidesWith(obstacles[i], true)) 
			{
					retval = true;
					break;
			}
		}	
		return retval;
	}
	public int getScore()
	{
		return Score;
	}
}
