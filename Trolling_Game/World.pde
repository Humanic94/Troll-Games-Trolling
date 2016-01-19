
class WorldObject
{
  private float startPosY = 0;
  private float startPosX = 0;
  private float endPosY = 0;
  private float endPosX = 0;


  public WorldObject(float endPosX, float endPosY, float startPosX, float startPosY)
  {
    this.startPosY = startPosY;
    this.startPosX = startPosX;
    this.endPosY = endPosY;
    this.endPosX = endPosX;
    stroke(255);
    strokeWeight(5);
    line(endPosX, endPosY,startPosX,startPosY);
    
  }
  //Returns the positions of the object.
  public float getStartPosX()
  {
    return startPosX;
  }
  public float getStartPosY()
  {
    return startPosY;
  }
  public float getEndPosX()
  {
    return endPosX;
  }
  public float getEndPosY()
  {
    return endPosY;
  }
  
  //Sets a new value for the field chosen.
  public void setStartPosX(float startPosX)
  {
    this.startPosX = startPosX;
  }
  public void setStartPosY(float startPosY)
  {
    this.startPosY = startPosY;
  }
  public void setEndPosX(float endPosX)
  {
    this.endPosX = endPosX;
  }
  public void setEndPosY(float endPosY)
  {
    this.endPosY = endPosY;
  }
  
}