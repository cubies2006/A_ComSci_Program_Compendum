import javax.microedition.lcdui.*;
import javax.microedition.lcdui.game.GameCanvas;

public class DummyGameCanvas extends GameCanvas {

    public DummyGameCanvas( boolean suppress ){
        super( suppress );
    }

    private String getAction( int key ){
        int action = getGameAction( key );
        switch( action ){
            case DOWN:
                return "DOWN";
            case UP:
                return "UP";
            case LEFT:
                return "LEFT";
            case RIGHT:
                return "RIGHT";
            case FIRE:
                return "FIRE";
            case GAME_A:
                return "GAME_A";
            case GAME_B:
                return "GAME_B";
            case GAME_C:
                return "GAME_C";
            case GAME_D:
                return "GAME_D";
        }

        return "";
    }

    protected void hideNotify(){
        System.out.println( "hideNotify" );
    }

    protected void keyPressed( int key ){
        System.out.println( "keyPressed " + key + " "
                            + getAction( key ) );
    }

    protected void showNotify(){
        System.out.println( "showNotify" );
    }
}
