class AppLogic
{
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
  if (controllerY() == 'w' && movementY == 0)
  {

    movementY -= 3.7;
  }
  if (controllerY() == 's')
  {
  }
  if (controllerX() == 'a')
  { 
    if (movementX >= -7)
    {
      movementX-= 0.3;
    }
  }
  if (controllerX() == 'd')
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