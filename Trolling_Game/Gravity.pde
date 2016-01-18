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
  //if(yPosBall > 435)
  //{
  //  movementY += 0.1; 
    
  //}
  if(yPosBall != (groundHeight - 15)) //If the ball is in the air it will fall back down.
  {
    movementY += 0.1;
  }
  if(yPosBall == (groundHeight - 15)) //When ball hits the ground it stops.
  {
    movementY = 0;
  }
  if(xPosBall <= 60) //Left mountain (ball bounces back).
  {
    movementX = 3;
  }
  if(xPosBall >= groundRight && yPosBall == (groundHeight - 15)) //ball falls off the edge ground (on the right)
  {
    movementY = 2;
    gameOver();
  }
}

public boolean failure() //på morro
{
  boolean gameOver = false;
  if(yPosBall > (groundHeight - 15))
  {
    gameOver = true;
  }
  return gameOver;
}
public void gameOver()
{
    if(failure())
    {
    textSize(32);
    background(244,8,8);
    text("Game Over GLHF Inge", 342, 263);
    }
}