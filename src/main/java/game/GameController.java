package game;

public class GameController {
	boolean gameStarted = false;
	
	public void startGame() {
		if (!gameStarted)	{gameStarted = true; System.out.println("let's rock");}
		else if (gameStarted)	{System.out.println("game is already started");}
	}
	
	public boolean getGameStatus() {
		return gameStarted;
	}
	
}
