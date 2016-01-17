//Trolling Game
float xPosBall = 71;
float yPosBall = 425;
float movementX = 0;
float movementY = 0;
void setup()
{
  size(1024, 500);
  smooth();
}
void draw()
{


  mapLayout();
  drawBall();
  ballMechanics();
  xPosBall += movementX;
  yPosBall += movementY;
  resistance();
}
//draws the map
void mapLayout()
{
  pushStyle();
  //noFill();
  background(188, 191, 198);
  line(560, 440, 40, 440); //Ground
  line(577, 335, 477, 335); //FirstJump
  line(737, 381, 645, 381); //SecondJump
  line(753, 268, 645, 268); //ThirdJump
  line(588, 210, 484, 210); //FourthJump
  line(1024, 147, 650, 147); //FifhtJump
  line(753, 268, 645, 268); //Top
  line(40,440,0,246);      //GroundMountain
  curve(-138,399,30,386,40,440,-18,378); //GroundCave
  line(1021,5,1002,148);      //TopMountain
  curve(1016,97,1003,147,1009,90,1238,16); //TopCave
  popStyle();
}
//Creates the object ball
void drawBall()
{

  ellipse(xPosBall, yPosBall, 30, 30);
  fill(0);
  strokeWeight(2);
}

//Checks keyboard inputs and returns them.
public char controller()
{
  char returnChar = 't';
  if (keyPressed)
  {
      if (key == 'a')
    {
      returnChar = 'a';
    } 
    if (key == 'd')
    {
      returnChar = 'd';
    }
    if (key == 'w')
    {
      returnChar = 'w';
    } 
    if (key == 's')
    {
      returnChar = 's';
    }
    if (key == CONTROL)
    {
      returnChar = CONTROL;
    }
  }
  return returnChar;
}


//What is gonna happen to the object
void ballMechanics()
{
  if (controller() == 'w' && movementY == 0)
  {
    
    movementY -= 3.7;
    
  }
  if (controller() == 's')
  {
  }
  if (controller() == 'a')
  { 
    if(movementX >= -7)
    {
    movementX-= 0.3;
    }
}
  if (controller() == 'd')
  {
    if(movementX <= 7)
    {
    movementX+= 0.3;
    //xPosBall += movementX;
    }
  }
  if (controller() == CONTROL)
  {
    yPosBall -= 10;
  }
}
//Gravity and resistance values.
void resistance()
{
  if(movementX < 0)
  {
    movementX += 0.10;
  }
  if(movementX > 0)
  {
    movementX -= 0.10;
  }
  if(movementX < 0.1 && movementX > 0)
    {
      movementX = 0;
    }
  if(movementX > -0.1 && movementX < 0)
    {
      movementX = 0;
    }
  if(yPosBall > 435)
  {
    movementY += 0.1; 
    
  }
  if(yPosBall != 425)
  {
    movementY += 0.1;
  }
  if(yPosBall == 425)
  {
    movementY = 0;
  }
}