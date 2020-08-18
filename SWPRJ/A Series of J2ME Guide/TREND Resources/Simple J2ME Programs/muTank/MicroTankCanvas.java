import java.io.IOException;

import javax.microedition.lcdui.*;
import javax.microedition.lcdui.game.*;

public class MicroTankCanvas
    extends GameCanvas
    implements Runnable {
  private volatile boolean mTrucking;
  private MicroTankSprite mTank;
  private TiledLayer mBoard;
  
  private LayerManager mLayerManager;
  
  public MicroTankCanvas() throws IOException {
    super(true);
    
    mTank = createTank();
    mTank.setPosition(0, 24);
    mBoard = createBoard();

    mLayerManager = new LayerManager();
    mLayerManager.append(mTank);
    mLayerManager.append(mBoard);
  }
  
  private MicroTankSprite createTank() throws IOException {
    Image image = Image.createImage("/tank.png");
    return new MicroTankSprite(image, 32, 32);
  }

  private TiledLayer createBoard() throws IOException {
    Image image = Image.createImage("/board.png");
    TiledLayer tiledLayer = new TiledLayer(10, 10, image, 16, 16);
    
    int[] map = {
       1,  1,  1,  1, 11,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  9,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  1,  0,  0,  0,  0,  0,
       0,  0,  0,  7,  1,  0,  0,  0,  0,  0,
       1,  1,  1,  1,  6,  0,  0,  0,  0,  0,
       0,  0,  0,  0,  0,  0,  0,  7, 11,  0,
       0,  0,  0,  0,  0,  0,  7,  6,  0,  0,
       0,  0,  0,  0,  0,  7,  6,  0,  0,  0
    };
    
    for (int i = 0; i < map.length; i++) {
      int column = i % 10;
      int row = (i - column) / 10;
      tiledLayer.setCell(column, row, map[i]);
    }
    
    return tiledLayer;
  }
  
  public void start() {
    mTrucking = true;
    Thread t = new Thread(this);
    t.start();
  }
  
  public void run() {
    Graphics g = getGraphics();
    
    int timeStep = 80;
    
    while (mTrucking) {
      long start = System.currentTimeMillis();
      
      tick();
      input();
      render(g);
      
      long end = System.currentTimeMillis();
      int duration = (int)(end - start);
      
      debug(g, duration * 100 / timeStep);
      
      if (duration < timeStep) {
        try { Thread.sleep(timeStep - duration); }
        catch (InterruptedException ie) { stop(); }
      }
    }
  }
  
  private void tick() {
    if (mTank.collidesWith(mBoard, true))
      mTank.undo();
  }
  
  private void input() {
    int keyStates = getKeyStates();
    if ((keyStates & LEFT_PRESSED) != 0) mTank.turn(-1);
    else if ((keyStates & RIGHT_PRESSED) != 0) mTank.turn(1);
    else if ((keyStates & UP_PRESSED) != 0) mTank.forward(2);
    else if ((keyStates & DOWN_PRESSED) != 0) mTank.forward(-2);
  }
  
  private void render(Graphics g) {
    int w = getWidth();
    int h = getHeight();

    g.setColor(0xffffff);
    g.fillRect(0, 0, w, h);
    
    int x = (w - 160) / 2;
    int y = (h - 160) / 2;
    
    mLayerManager.paint(g, x, y);
    
    g.setColor(0x000000);
    g.drawRect(x, y, 160, 160);
    
    flushGraphics();
  }
  
  private void debug(Graphics g, int percent) {
    int w = getWidth();
    int h = getHeight();
    
    StringBuffer sb = new StringBuffer();
    sb.append(Integer.toString(percent));
    sb.append('%');
    String s = sb.toString();
    
    Font font = g.getFont();
    int sw = font.stringWidth(s) + 2;
    int sh = font.getHeight();
    
    // Draw the render capacity.
    g.setColor(0xffffff);
    g.fillRect(w - sw, h - sh, sw, sh);
    g.setColor(0x000000);
    g.drawRect(w - sw, h - sh, sw, sh);
    g.drawString("" + percent + "%", w, h,
        Graphics.RIGHT | Graphics.BOTTOM);
    
    flushGraphics();
  }

  public void stop() {
    mTrucking = false;
  }
}

