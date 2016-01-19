
class WorldObject
{
  private float startPosY = 0;
  private float startPosX = 0;
  private float endPosY = 0;
  private float endPosX = 0;


  public WorldObject(float startPosY, float startPosX, float endPosY, float endPosX)
  {
    this.startPosY = startPosY;
    this.startPosX = startPosX;
    this.endPosY = endPosY;
    this.endPosX = endPosX;
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
  
}