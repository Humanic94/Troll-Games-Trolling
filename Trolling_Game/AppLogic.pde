
void keyPressed()
{
  if(keyCode == UP)
 {
  keys[0] = true;
  }
  if(keyCode == DOWN)
  {
    keys[1] = true;
  }
  if(keyCode == LEFT)
 {
  keys[2] = true;
  }
  if(keyCode == RIGHT)
  {
    keys[3] = true;
  }
}
void keyReleased()
{
  if(keyCode == UP)
 {
  keys[0] = false;
  }
  if(keyCode == DOWN)
  {
    keys[1] = false;
  }
  if(keyCode == LEFT)
 {
  keys[2] = false;
  }
  if(keyCode == RIGHT)
  {
    keys[3] = false;
  }
}
class AppLogic
{
  AppLogic()
  {
  }
  public char controller()
{
  char returnChar = 'æ';
    if (keys[2])
    {
      returnChar = 'a';
    } 
    if (keys[3])
    {
      returnChar = 'd';
    }
    if (keys[0])
    {
      returnChar = 'w';
    } 
    if (keys[1])
    {
      returnChar = 's';
    }
    if (key == CONTROL)
    {
      returnChar = CONTROL;    
    }
  return returnChar;
}
  public char controllerF()
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
public char controllerX()
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
  }

  return returnChar;
}
public char controllerY()
{
  char returnChar = 't';
  if (keyPressed)
  {
    if (key == 'w')
    {
      returnChar = 'w';
    } 
    if (key == 's')
    {
      returnChar = 's';
    }
  }

  return returnChar;
}


//What is gonna happen to the object
public void ballMechanics()
{
  if (keys[0] && movementY == 0) //UP
  {

    movementY -= 3.7;
  }
  if (keys[1]) //DOWN
  {
  }
  if (keys[2]) //LEFT
  { 
    if (movementX >= -7)
    {
      movementX-= 0.3;
    }
  }
  if (keys[3]) //RIGHT
  {
    if (movementX <= 7)
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
}