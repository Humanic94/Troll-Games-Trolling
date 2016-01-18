//Trolling Game
float xPosBall = 71;
float yPosBall = 425;
float movementX = 0;
float movementY = 0;
boolean keys[]; 
AppLogic appLogic;
Map map;
Player troll;
void setup()
{
  size(1024, 500);
  smooth();
  appLogic = new AppLogic();
  map = new Map();
  troll = new Player();
 
  keys = new boolean[4]; 
  keys[0] = false;
  keys[1] = false;
  keys[2] = false;
  keys[3] = false;
}
  

void draw()
{
  map.layoutOne();
  troll.drawPlayer();
  //appLogic.ballMechanics();
  xPosBall += movementX;
  yPosBall += movementY;
  resistance();
}