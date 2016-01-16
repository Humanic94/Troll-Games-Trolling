//Trolling Game
float xPosBall = 71;
float yPosBall = 416;
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
  noFill();
  background(130, 132, 130);
  line(560, 440, 40, 440);
  curve(0, 0, 637, 264, 561, 440, 59, 245);
  line(537, 335, 166, 335);
  curve(871, 397, 193, 176, 166, 335, 691, 258);
  line(666, 176, 194, 176);
  curve(-177, 139, 668, 176, 916, 381, 1416, 185);
  line(1022, 381, 916, 381);



  popStyle();
}
//Creates the object ball
void drawBall()
{

  ellipse(xPosBall, yPosBall, 45, 45);
  fill(20, 145, 11);
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
    
    movementY -= 3;
    
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
  if(yPosBall != 416)
  {
    movementY += 0.1;
  }
  if(yPosBall == 416)
  {
    movementY = 0;
  }
}