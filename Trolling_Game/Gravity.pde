class Gravity
{
}
public void Resistance()
{
}
//Gravity and resistance values.
public void resistance()
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