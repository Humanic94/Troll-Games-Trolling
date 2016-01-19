class Player extends Char
{
  private float health = 100;
  private String playerName;
  private boolean isPlayerAlive = true;
  
  //Constructor
  public Player(float charPosX, float charPosY, float charWidth, float charHeight, float health, String playerName)
  {
    super(charPosX, charPosY, charWidth, charHeight);
    this.health = health;
    this.playerName = playerName;
  }
  
  public boolean isPlayerAlive(){
  if(health == 0){
       isPlayerAlive = false;
    }
    return isPlayerAlive;
  }
  
  public float getHealth() {
    return health;
    }

  public void setHealth(float health) {
    this.health = health;
    }

  public String getPlayerName() {
    return playerName;
    }

  public void setPlayerName(String playerName) {
    this.playerName = playerName;
    }
}