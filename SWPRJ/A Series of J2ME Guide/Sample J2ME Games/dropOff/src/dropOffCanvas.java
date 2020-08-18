//Author Jeremiah McLeod xdebugx
package dropOff;
import java.util.*;
import javax.microedition.lcdui.*;
//import javax.microedition.lcdui.game.*;


public class dropOffCanvas extends Canvas {

  static int CORNER_X;
  static int CORNER_Y;
  static int width;
  static int height;
  static int DISP_WIDTH;
  static int DISP_HEIGHT;
  Display myDisplay;

  dropOff myMiniGames;
  
  static boolean go;
 

  Random myRandom;

  boolean myInitialized;
  
  Font FONT;
  
  public boolean gameOver;
  
  
  private boolean notBuffered;
    
    private Image imgDoubleBuffer;
    
    private Graphics doubleBuffer;

  
  private int ballWidth,ballHeight,holeWidth,ballX,ballY;
  
  private long nextLineTime;
  
  private long gameStartTime,speedUpTime,currentRiseTime;

  private line lines[];  
  
  private int numLines,nextLineHeight;
  
  private int lineWidth,moveWidth;
  
  private boolean moveLeft,moveRight,lineWidthAdd;
  
  private int score,scorePlaceX,scorePlaceY;
  
  
  
 public dropOffCanvas(dropOff midlet) {
    myDisplay = Display.getDisplay(midlet);
    myMiniGames = midlet;
    myInitialized=false;
    go=false;
    notBuffered=false;
  }

  void start() {
    myDisplay.setCurrent(this);
    repaint();
  }
  void reset() {
     }
  void flushKeys() {
  }

  //-------------------------------------------------------
  //  graphics methods

  /**
   * paint the game graphic on the screen.
   */
  public void paint(Graphics g) {
    int p,t;
    
    Graphics saved=null;
    
    // perform the calculations if necessary:
    if(!myInitialized) {
	if( !isDoubleBuffered()) notBuffered=true;
	//notBuffered=true;
	
	
	  moveLeft=false;
  	  moveRight=false;
	  FONT = g.getFont();
      CORNER_X = g.getClipX();
      CORNER_Y = g.getClipY();
      width = g.getClipWidth();
      height = g.getClipHeight();
   //  width=120;
   //  height=75;
      DISP_WIDTH=width;
      DISP_HEIGHT=height;
    //  g.setFont (FONT.SIZE_SMALL);
      FONT=Font.getFont(FONT.getFace(),FONT.getStyle(),Font.SIZE_SMALL);
   g.setFont (FONT);
      
     ballWidth=floatReg (width,180,20);
     ballHeight=floatReg (height,177,20);
     
     holeWidth=floatReg (width,180,55);
     
     lineWidth=floatReg (height,177,3);
     moveWidth=floatReg (width,180,4);
     if (moveWidth<1) moveWidth=1;
     if (lineWidth<1) lineWidth=1;
     
	 lines=new line [15];    
	 
	 scorePlaceX=width-FONT.stringWidth ("Score: 555555");
	 scorePlaceY=FONT.getHeight();
	 
      
      
      if (notBuffered==true) {
	  			imgDoubleBuffer=Image.createImage (width,height);
	  			doubleBuffer=imgDoubleBuffer.getGraphics ();
			}
      
      myRandom = new Random(System.currentTimeMillis());
      
      
	 newGame();
	  	  		
    

      myInitialized = true;
    }
    
    else 
    {
   g.setFont (FONT);
       if (notBuffered==true) {
	saved=g;
	g=imgDoubleBuffer.getGraphics();
	g.setFont (FONT);
	}
    
    if (go==false && gameOver==false) {
	g.setColor (0xffffffff);
	g.fillRect (0,0,width,height);
	g.setColor (0x00000000);
	g.drawString ("Drop Off",(width/2)-(FONT.stringWidth ("Drop Off")/2),(FONT.getHeight()*1),CORNER_X|CORNER_Y);
	g.drawString ("Use Left & Right",(width/2)-(FONT.stringWidth ("Use Left & Right")/2),(FONT.getHeight()*2),CORNER_X|CORNER_Y);
	g.drawString ("Or 4 & 6 Keys",(width/2)-(FONT.stringWidth ("Or 4 & 6 Keys")/2),(FONT.getHeight()*3),CORNER_X|CORNER_Y);
	g.drawString ("To Move Ball",(width/2)-(FONT.stringWidth ("To Move Ball")/2),(FONT.getHeight()*4),CORNER_X|CORNER_Y);
	g.drawString ("Stay Below the Top",(width/2)-(FONT.stringWidth ("Stay Below the Top")/2),(FONT.getHeight()*5),CORNER_X|CORNER_Y);
	g.drawString ("Go to Start",(width/2)-(FONT.stringWidth ("Go to Start")/2),(FONT.getHeight()*6),CORNER_X|CORNER_Y);
	}
	
	if (gameOver==true) {
	g.setColor (0xffffffff);
		g.fillRect (0,0,width,height);
		g.setColor (0x00000000);
		g.drawString ("Drop Off",(width/2)-(FONT.stringWidth ("Drop Off")/2),(FONT.getHeight()*1),CORNER_X|CORNER_Y);
		g.drawString ("Your Score: "+score,(width/2)-(FONT.stringWidth ("Your Score: "+score)/2),(FONT.getHeight()*2),CORNER_X|CORNER_Y);
		g.drawString ("Go To Restart",(width/2)-(FONT.stringWidth ("Go To Restart")/2),(FONT.getHeight()*3),CORNER_X|CORNER_Y);
	
	}

	if (go==true) {
	g.setColor (0xffffffff);
	g.fillRect (0,0,width,height);
	g.setColor (0x00000000);
	for (p=0;p<numLines;p++) {
	g.drawLine (lines[p].line1X,lines[p].y,lines[p].line1X+lines[p].line1Width,lines[p].y);
	g.drawLine (lines[p].line2X,lines[p].y,lines[p].line2X+lines[p].line2Width,lines[p].y);
	}// p
	g.fillRoundRect (ballX,ballY,ballWidth,ballHeight,(ballWidth),(ballHeight));
	g.drawString ("Score: "+score,scorePlaceX,scorePlaceY,CORNER_X|CORNER_Y);
	
	}//else
	
	if (notBuffered==true) saved.drawImage (imgDoubleBuffer,0,0,CORNER_X|CORNER_Y);
	

	}//else
    } //paint

  //  game movements
  

  

  void advance() {
int p,x1,x2,width1,width2;
      try {
       repaint();
    } catch(Exception e) {
    }
    
  if (go==true && gameOver==false) {
	  if (ballY<0-(ballHeight/2)) {
		  gameOver=true;
		  myMiniGames.setMyGoCommand();
		  go=false;
	  }
  	  score=score+(19-((int) (currentRiseTime)));
  
    ballY=ballY+lineWidth;
    if (ballY+ballHeight>height) ballY=height-ballHeight;
    for (p=0;p<numLines;p++) {
	if (((ballX+ballWidth>=lines[p].line1X && ballX<lines[p].line1X+lines[p].line1Width) || (ballX+ballWidth>lines[p].line2X && ballX<lines[p].line2X+lines[p].line2Width)) && ballY<=lines[p].y && ballY+ballHeight>=lines[p].y) {
	ballY=lines[p].y-ballHeight-1;
	}
	}
	
	if (moveRight==true) ballX=ballX+moveWidth;
	if (moveLeft==true) ballX=ballX-moveWidth;
	
	if (ballX+ballWidth>width) ballX=width-ballWidth;
	if (ballX<0) ballX=0;
  	
    
    if (System.currentTimeMillis()-gameStartTime>speedUpTime) {
	speedUpTime=speedUpTime-70;
	if (speedUpTime<800 && lineWidthAdd==false) {
		lineWidth=lineWidth+(lineWidth/6)+1;
		lineWidthAdd=true;
	}
	if (speedUpTime<1) speedUpTime=1;
	gameStartTime=System.currentTimeMillis();
	currentRiseTime=currentRiseTime-1;
	if (currentRiseTime<0) currentRiseTime=0;
	nextLineHeight=nextLineHeight+(lineWidth/2)+1;
	if (nextLineHeight>height-(ballHeight*3)) nextLineHeight=height-(ballHeight*4)-2;
	}
    
    	
    
    for (p=0;p<numLines;p++) {
					if (lines[p].y<=nextLineHeight && lines[p].lineSpawned==false) {
											x1=0;
											  width1=getRandomInt (width-holeWidth);
											  x2=x1+width1+holeWidth;
											  width2=width-x2;
											  
											  lines [numLines]= new line (x1,x2,width1,width2,height);	  
											  numLines++;
								  				lines[p].lineSpawned=true;
										}

		
		if (System.currentTimeMillis()-lines[p].riseTime>currentRiseTime) {
			lines[p].y=lines[p].y-lineWidth;
	
			lines[p].riseTime=System.currentTimeMillis();
			}
			
		if (lines[p].y<1) removeLine (p);
	}
	

}
    

	
    // we do a very short pause to allow the other thread
    // to update the information about which keys are pressed:
    synchronized(this) {
      try {
	wait(1);
      } catch(Exception e) {}
    }
  
}

  /**
   * Respond to keystrokes.
   */
   
   
   private void removeLine (int x) {
   int p;
   for (p=x;p<numLines-1;p++) {
	lines[p]=lines[p+1];   
  }
  lines[numLines-1]=null;
  numLines--;
  }
   
  
  public void keyReleased (int keyCode) {
  if (keyCode ==-4 || keyCode==RIGHT || keyCode==KEY_NUM6) {
  	moveRight=false;
	
  }
  
  if (keyCode==-3 || keyCode==LEFT || keyCode==KEY_NUM4)   {
  		moveLeft=false;
	}

}//keyReleased
	
  
  public void keyPressed (int keyCode) {

  	
	
  	
	
  	if (keyCode ==-4 || keyCode==RIGHT  || keyCode==KEY_NUM6) {
	moveRight=true;
	
	}
	
	
  	if (keyCode==-3 || keyCode==LEFT || keyCode==KEY_NUM4)   {
		moveLeft=true;
	}
  	 
  	 
  	 
  	 	 
  	
  	
}

   
  public void newGame () {
  int p,x1,x2,width1,width2;
  
  lineWidthAdd=false;
  score=0;
  nextLineTime=System.currentTimeMillis();
  x1=0;
  width1=getRandomInt (width-holeWidth);
  x2=x1+width1+holeWidth;
  width2=width-x2;
  for (p=0;p<15;p++) lines[p]=null;
  lines [0]= new line (x1,x2,width1,width2,height);	  
  numLines=1;
  
  gameStartTime=System.currentTimeMillis();
  
  nextLineHeight=lineWidth+5;
  currentRiseTime=18;
  speedUpTime=3300;
  ballX=width/2-(ballWidth/2);
  ballY=0;
  gameOver=false;
 
  }
  
  private int floatReg (int org, int div, int mul) {
      int x=0;int oldX=0;
      
      org=org*10000;
      x=org/div;
      x=x*mul;
       x=x/10000;
      
      
      return (x);
      }
    
 
public int getRandomInt(int upper) {
    int retVal = myRandom.nextInt() % upper;
    if(retVal < 0) {
      retVal += upper;
    }
    return(retVal);
  }
  
}

class line {
public int line1X,line2X,line1Width,line2Width,y;
public long riseTime;
public boolean lineSpawned;

public line (int l1X,int l2X,int l1Width,int l2Width,int lY)
{

line1X=l1X;
line2X=l2X;
line1Width=l1Width;
line2Width=l2Width;
y=lY;
riseTime=System.currentTimeMillis();
lineSpawned=false;
}

}//class line

