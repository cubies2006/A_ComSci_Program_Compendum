//Author Jeremiah McLeod xdebugx http://www.xdebugx.net
package wordSearch;
import javax.microedition.rms.*;
import java.io.*;
import java.util.*;
import javax.microedition.lcdui.*;
//import javax.microedition.lcdui.game.*;


public class mainCanvas extends Canvas {

  static int CORNER_X;
  static int CORNER_Y;
  static int DISP_WIDTH;
  static int DISP_HEIGHT;
  Display myDisplay;

  wordSearch myWordSearch;
  
  static boolean go;

  Random myRandom = new Random();

  boolean myInitialized;
   
    int wordDirection[] = new int [10];
     int wordPlace[] = new int [10];
     int boardXOffset = 42;
     int boardLength;
     final int boardYOffset = 5;
     final int numWords=10;
     
    String backwards="",forwards="";
  
 Font FONT;
 String wordsRead[] = new String [10];
 int lettersSel;
  int lastPlaceX=0;
  int lastPlaceY=0;
   int firstPlaceX=0;
   int firstPlaceY=0;
   int secPlaceX=0;
   int secPlaceY=0;
  char board[] = new char [150];
  boolean boardLetSel[]= new boolean [150];
  boolean boardColor[] = new boolean [150];
  //boolean tempBoardColor[] = new boolean [150];
    boolean wordFound[] = new boolean[25];
  char Cwords[] [] = new char [10] [25];
  String words[] = new String [112];
   int lettersPerWord [] = new int [14];
   
   int letWidth,letHeight;
   
   int squareX,squareY;
   
    private boolean notBuffered;
       
       private Image imgDoubleBuffer;
       
       private Graphics doubleBuffer;



 public mainCanvas(wordSearch midlet) {
  //  super(false);
    myDisplay = Display.getDisplay(midlet);
    myWordSearch = midlet;
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
 
  //-------------------------------------------------------
  //  graphics methods

  /**
   * paint the game graphic on the screen.
   */
  public void paint(Graphics g) {
	  Graphics saved=null;
	  int index;
	  String letter;
	  String word;
	  int gg;
	  int directionAddition;
	  boolean foundPlace;
	  Class c = this.getClass();
	   
	  		int p,t,h,i;
    // perform the calculations if necessary:
    if(!myInitialized) {
		if( !isDoubleBuffered()) notBuffered=true;
		//notBuffered=true;
	squareX=0;
	squareY=0;
	  FONT = g.getFont();
	  letWidth=FONT.charWidth ('w')+1;
	  boardXOffset=((letWidth) * 4)-4;
	  letHeight=FONT.getHeight();
	  CORNER_X = g.getClipX();
      CORNER_Y = g.getClipY();
      DISP_WIDTH = g.getClipWidth();
      DISP_HEIGHT = g.getClipHeight();
      boardLength=DISP_HEIGHT;
      
       if (notBuffered==true) {
	  	  			imgDoubleBuffer=Image.createImage (DISP_WIDTH,DISP_HEIGHT);
	  	  			doubleBuffer=imgDoubleBuffer.getGraphics ();
			}
     
     setWords();
     for (p=0;p<150;p++) boardLetSel[p]=false;
     lettersSel=0;
     
     int wordsToRead[] = new int [14];
	 for (p=0;p<10;p++) {
	 		wordsToRead[p]=getRandomInt (111);
	 	    for (t=0;t<p;t++)
	 			if (wordsToRead[t]==wordsToRead[p])
	 				p-=1;
	 }

for (p=0;p<10;p++) {
	wordsRead[p]=words[wordsToRead[p]];
		for (t=0;t<words[wordsToRead[p]].length();t++) Cwords [p] [t] = words[wordsToRead[p]].charAt(t);
		lettersPerWord[p]=words[wordsToRead[p]].length();
		} // p
		
		boolean killer=false;
		do {
			killer=false;
		for (p=0;p<150;p++) board[p]= ( (char) (getRandomInt(25)+97));
		// set color of chars
		for (p=0;p<150;p++) boardColor[p]=false;
		// put words to board ///////////////////////////////////////////////
		directionAddition=0;
// find place to put words

for (p=0;p<10;p++) {
	int k=0;
	foundPlace=false;
	while (foundPlace==false) {
	wordDirection[p]=getRandomInt (7);
	if (wordDirection[p]==2) wordDirection[p]=3;
	wordPlace[p] = getRandomInt (130);
	if (wordDirection[p]==0 && (int) (wordPlace[p]/13)-lettersPerWord[p]>=0) foundPlace=true; //up
	if (wordDirection[p]==1 && (int) (wordPlace[p]/13)+lettersPerWord[p]<=11) foundPlace=true;  //down
	if (wordDirection[p]==2 && wordPlace[p]%13-lettersPerWord[p]>=0) foundPlace=true; // left
	if (wordDirection[p]==3 && wordPlace[p]%13+lettersPerWord[p]<=12) foundPlace=true; // right
    if (wordDirection[p]==4 && (int) (wordPlace[p]/13)-lettersPerWord[p]>=0)
    if (wordPlace[p]%13-lettersPerWord[p]>=0) foundPlace=true; // up left
	if (wordDirection[p]==5 && (int) (wordPlace[p]/13)-lettersPerWord[p]>=0)
	if (wordPlace[p]%13+lettersPerWord[p]<=12) foundPlace=true; //up right
    if (wordDirection[p]==6 && (int) (wordPlace[p]/13)+lettersPerWord[p]<=11)
    if (wordPlace[p]%13-lettersPerWord[p]>=0) foundPlace=true; //down left
	if (wordDirection[p]==7 && (int) (wordPlace[p]/13)+lettersPerWord[p]<=11)
	if (wordPlace[p]%13+lettersPerWord[p]<=12) foundPlace=true; //down right
    //check if char already written doesnt match
    if (foundPlace==true) for (gg=0;gg<lettersPerWord[p];gg++)  {
		if (wordDirection[p]==0) directionAddition = -13;
		if (wordDirection[p]==1) directionAddition = +13;
		if (wordDirection[p]==2) directionAddition = -1;
		if (wordDirection[p]==3) directionAddition = +1;
		if (wordDirection[p]==4) directionAddition = -14;
		if (wordDirection[p]==5) directionAddition = -12;
		if (wordDirection[p]==6) directionAddition = +12;
		if (wordDirection[p]==7) directionAddition = +14;
		if ((boardColor[wordPlace[p]+(gg*directionAddition)] == true) && (board[wordPlace[p]+(gg*directionAddition)])!= ((char) Cwords[p] [gg])) foundPlace=false;
       }//for g
       k=k+1;

	   		if (k>13000) {
	   		killer=true;
	   		p=9;
	   		foundPlace=true;
		}
    } // while
    
    //put word chars to board array of chars
	if (killer==false) {
	for (t=0;t<lettersPerWord[p];t++) {
	if (wordDirection[p]==0) directionAddition = -13;
	if (wordDirection[p]==1) directionAddition = +13;
	if (wordDirection[p]==2) directionAddition = -1;
	if (wordDirection[p]==3) directionAddition = +1;
	if (wordDirection[p]==4) directionAddition = -14;
	if (wordDirection[p]==5) directionAddition = -12;
	if (wordDirection[p]==6) directionAddition = +12;
	if (wordDirection[p]==7) directionAddition = +14;
	board[wordPlace[p]+(t*directionAddition)]=(char) Cwords[p] [t];
	boardColor[wordPlace[p]+(t*directionAddition)] = true;
	}//t
	}// if killler
	}// p
	} while (killer==true); // while killer
	
	for (p=0;p<150;p++) {
	boardColor[p]=false;
	}
	
	for (p=0;p<20;p++) wordFound[p]=false;



      myInitialized = true;
    }
    
     if (notBuffered==true) {
			saved=g;
			g=imgDoubleBuffer.getGraphics();
			}
    
    
    if (go==true) {

	g.setColor(0x4321abf2);
    
	g.fillRect (CORNER_X,CORNER_Y,DISP_WIDTH,DISP_HEIGHT);
	
	g.setColor (0x88888888);
	
	g.fillRect (0,0,boardXOffset,boardLength);
	
	for (p=0;p<10;p++) {
		word="";
			for (t=0;t<lettersPerWord [p];t++)
				word = word + Cwords[p] [t];
	
		if (wordFound[p]==true) g.setColor(0xffffffff);
		else g.setColor(0x00000000);
		g.drawString (word,2,(p*13)+12,g.TOP|g.LEFT);
		
		
	}
		
		index=0;
		for (p=0;p<11;p++)
			for (t=0;t<13;t++) {
				if (boardLetSel[t+(p*13)]==true) {
				g.setColor (0x00ff0000);
				//g.fillRect (boardXOffset+(t*letWidth)-4,boardYOffset+(p*letHeight),letWidth+3,letHeight);
				g.fillRect (boardXOffset+(t*letWidth)-(letWidth/2)-1+4,boardYOffset+(p*letHeight)+1,letWidth-1,letHeight-1);	

				}
				if (boardColor[(p*13)+t]==true) g.setColor (0xffffffff);
				else g.setColor (0x00000000);
				letter = "" + board[index++];
				int msgWidth = FONT.stringWidth(letter);
		 		//g.drawString (letter,boardXOffset + (t * letWidth),boardYOffset + (p *letHeight),g.TOP|g.LEFT);
		 		g.drawString (letter,boardXOffset + (t * letWidth)+4,boardYOffset + (p *letHeight),g.TOP|g.HCENTER);
		 		
			} // for t
	g.setColor (0x00ff0000);
	g.drawRect (boardXOffset+(squareX*letWidth)-(letWidth/2)-2+4,boardYOffset+(squareY*letHeight),letWidth,letHeight);	

}

else {
 g.setColor (0x00000000); 
	  g.drawString ("Word Search" ,(DISP_WIDTH/2)-32,(DISP_HEIGHT/3)-6,g.TOP|g.LEFT);
	  g.drawString ("by XdebugX",(DISP_WIDTH/2)-30,(DISP_HEIGHT/2)-6,g.TOP|g.LEFT);	                
	  g.drawString ("www.xdebugx.net",(DISP_WIDTH/2)-45,(DISP_HEIGHT/2)+20,g.TOP|g.LEFT);	                
	
	  g.drawString ("Press Go to Start",(DISP_WIDTH/2)-43,(DISP_HEIGHT-(DISP_HEIGHT/10))-6,g.TOP|g.LEFT);
	  
}

 if (notBuffered==true) saved.drawImage (imgDoubleBuffer,0,0,CORNER_X|CORNER_Y);


    } //paint

  //  game movements

  void advance() {
    try {
    repaint ();
    } catch(Exception e) {
    //  errorMsg(e);
    }

    // we do a very short pause to allow the other thread
    // to update the information about which keys are pressed:
    synchronized(this) {
      try {
	wait(100);
      } catch(Exception e) {}
    }
  }

  /**
   * Respond to keystrokes.
   */
public void keyPressed (int keyCode) {
 int p,t,directionAddition;
      directionAddition=0;
     
      if (go==true) {
      if(keyCode==-3 || keyCode==KEY_NUM4) {
		  squareX-=1;
		if (squareX<0) squareX=0;
	//handle left
	}
      if(keyCode==-4 || keyCode==KEY_NUM6) {
		squareX+=1;
		if (squareX>12) squareX=12;
	//handle right
	}
      if(keyCode==-1 || keyCode==KEY_NUM2) {
		squareY-=1;
		if (squareY<0) squareY=0;
	//handle up
	 }
	   if(keyCode==-2 || keyCode==KEY_NUM8) {
		squareY+=1;
		if (squareY>10) squareY=10;
		//handle down
	 }
	 
	 if (keyCode==-5 || keyCode==KEY_NUM5) {
		
	if (boardLetSel[squareX+(squareY*13)]==false) {
		boardLetSel[squareX+(squareY*13)]=true;
		
		lettersSel++;
		if (lettersSel==1) {
			firstPlaceX=squareX;
			firstPlaceY=squareY;
			
		}
		
		if (lettersSel==2) {
			if (squareX-firstPlaceX>1 || squareX-firstPlaceX<-1 || squareY-firstPlaceY>1 || squareY-firstPlaceY<-1) {
			lettersSel--;
			boardLetSel[squareX+(squareY*13)]=false;
			} else {
					secPlaceX=squareX;
					secPlaceY=squareY;
					lastPlaceX=squareX;
					lastPlaceY=squareY;
		}//else 
		}//letterSel==2
		
		if (lettersSel>2) {
		if (squareX-lastPlaceX!=secPlaceX-firstPlaceX || squareY-lastPlaceY!=secPlaceY-firstPlaceY) {
		boardLetSel[squareX+(squareY*13)]=false;
		lettersSel--;
		}
		else {
			lastPlaceX=squareX;
			lastPlaceY=squareY;
		}
		}// let2
		
	}
		
	
	else  {
		for (p=0;p<143;p++) boardLetSel[p]=false;
		lettersSel=0;
}
	if (lettersSel>1) {
     for (p=0;p<10;p++) {
		 String tempWord="";
		 String tempWord2="";
		 int x,y;
		 x=firstPlaceX;
		 y=firstPlaceY;
		 if (squareX!=x || squareY!=y){
		 while (x!=lastPlaceX || y!=lastPlaceY) {
		 tempWord=tempWord+board[x+(y*13)];
		 x=x+(secPlaceX-firstPlaceX);
		 y=y+(secPlaceY-firstPlaceY);
		 }
		 tempWord=tempWord+board[x+(y*13)];
	 }
		 
		 for (t=tempWord.length();t>0;t--) {
		 tempWord2=tempWord2+tempWord.substring (t-1,t);
		 }
		
		 if (wordsRead[p].equals(tempWord) || wordsRead[p].equals(tempWord2)) {
			 wordFound[p]=true;
			for (t=0;t<150;t++) 
			boardLetSel[t]=false;
			lettersSel=0;
			
			for (t=0;t<lettersPerWord[p];t++) {
				  	 	if (wordDirection[p]==0) directionAddition = -13;
				  	 	if (wordDirection[p]==1) directionAddition = +13;
				  	 	if (wordDirection[p]==2) directionAddition = -1;
				  	 	if (wordDirection[p]==3) directionAddition = +1;
				  	 	if (wordDirection[p]==4) directionAddition = -14;
				  	 	if (wordDirection[p]==5) directionAddition = -12;
				  	 	if (wordDirection[p]==6) directionAddition = +12;
				  	 	if (wordDirection[p]==7) directionAddition = +14;
				 boardColor[wordPlace[p]+(t*directionAddition)] = true;
			}//t
						
		 }
		}//p
		int howMany=0;
		for (p=0;p<10;p++) {
			if (wordFound[p]==true) howMany++;
			
		}
		if (howMany==10) {
			myWordSearch.setNewGameCommand();
		}
		
 }// letterSel>1


	 }// fireSelected
	 
 }
}

 

public int getRandomInt(int upper) {
    int retVal = myRandom.nextInt() % upper;
    if(retVal < 0) {
      retVal += upper;
    }
    return(retVal);
  }
  
  public void setWords () {
  words[ 0]="all";
  words[ 1]="the";
  words[ 2]="piece";
  words[ 3]="here";
  words[ 4]="are";
  words[ 5]="about";
  words[ 6]="sort";
  words[ 7]="words";
  words[ 8]="and";
  words[ 9]="phrase";
  words[ 10]="what";
  words[ 11]="they";
  words[ 12]="mean";
  words[ 13]="where";
  words[ 14]="they";
  words[ 15]="from";
  words[ 16]="how";
  words[ 17]="have";
  words[ 18]="evolve";
  words[ 19]="the";
  words[ 20]="in";
  words[ 21]="which";
  words[ 22]="people";
  words[ 23]="smoke";
  words[ 24]="misuse";
  words[ 25]="them";
  words[ 26]="appear";
  words[ 27]="first";
  words[ 28]="free";
  words[ 29]="news";
  words[ 30]="that";
  words[ 31]="send";
  words[ 32]="out";
  words[ 33]="by";
  words[ 34]="email";
  words[ 35]="every";
  words[ 36]="mouse";
  words[ 37]="to";
  words[ 38]="water";
  words[ 39]="world";
  words[ 40]="get";
  words[ 41]="it";
  words[ 42]="select";
  words[ 43]="mail";
  words[ 44]="list";
  words[ 45]="link";
  words[ 46]="on";
  words[ 47]="any";
  words[ 48]="page";
  words[ 49]="also";
  words[ 50]="has";
  words[ 51]="link";
  words[ 52]="issues";
  words[ 53]="cat";
  words[ 54]="if";
  words[ 55]="dog";
  words[ 56]="sub";
  words[ 57]="you";
  words[ 58]="use";
  words[ 59]="same";
  words[ 60]="update";
  words[ 61]="or";
  words[ 62]="send";
  words[ 63]="strict";
  words[ 64]="pray";
  words[ 65]="policy";
  words[ 66]="chose";
  words[ 67]="supply";
  words[ 68]="jewel";
  words[ 69]="gotten";
  words[ 70]="rather";
  words[ 71]="large";
  words[ 72]="denied";
  words[ 73]="into";
  words[ 74]="six";
  words[ 75]="solar";
  words[ 76]="each";
  words[ 77]="with";
  words[ 78]="its";
  words[ 79]="own";
  words[ 80]="theme";
  words[ 81]="index";
  words[ 82]="see";
  words[ 83]="sector";
  words[ 84]="left";
  words[ 85]="hand";
  words[ 86]="cobb";
  words[ 87]="column";
  words[ 88]="seven";
  words[ 89]="lost";
  words[ 90]="moon";
  words[ 91]="pond";
  words[ 92]="may";
  words[ 93]="also";
  words[ 94]="see";
  words[ 95]="find";
  words[ 96]="desk";
  words[ 97]="apple";
  words[ 98]="seat";
  words[ 99]="chair";
  words[ 100]="cup";
  words[ 101]="paper";
  words[ 102]="map";
  words[ 103]="truck";
  words[ 104]="trunk";
  words[ 105]="left";
  words[ 106]="right";
  words[ 107]="over";
  words[ 108]="under";
  words[ 109]="close";
  words[ 110]="paint";
  words[ 111]="draw";

  }

}
