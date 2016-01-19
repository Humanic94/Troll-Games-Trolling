class Gravity
{
  Gravity()
  {
  }
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
  //|| yPosBall != groundFJ - 17 || yPosBall != groundFJ + 15)
  if(yPosBall != (groundHeight - 15)|| yPosBall >= (groundFJ - 17) && yPosBall <= (groundFJ -15)) //If the ball is in the air it will fall back down.
  {
    movementY += 0.1;
  }
  if(yPosBall == (groundHeight - 15) && xPosBall <= groundRight || yPosBall >= (groundFJ - 17) && yPosBall <= (groundFJ -15) && xPosBall <= groundFJRight && xPosBall >= groundFJLeft) //When ball hits the ground it stops.
  {
    movementY = 0;
  }
  if(xPosBall <= (groundLeft + 20)) //Left mountain (ball bounces back).
  {
    movementX = 3;
  }
                                  
  if(xPosBall >= groundRight && yPosBall == (groundHeight - 15)) //ball falls off the edge ground (on the right)
  {
    movementY = 2;
  }
  //ball won't fall from firstJump.
  //if(yPosBall >= (groundFJ - 17) && yPosBall <= (groundFJ +15) && xPosBall <= groundFJRight && xPosBall >= groundFJLeft) 
  //{
  //  movementY = 0;
  //}
  //if(movementY != 0)
  //{
  //  if(yPosBall == groundHeight || yPosBall == groundFJ)
   // {
    //  movementY = 0;
    //}
  //}
}
}