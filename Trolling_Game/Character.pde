class Char
{
  private float charPosX;
  private float charPosY;
  private float charWidth;
  private float charHeight;
  
  //Constructor
  public Char(float charPosX, float charPosY, float charWidth, float charHeight){
    this.charPosX = charPosX;
    this.charPosY = charPosY;
    this.charWidth = charWidth;
    this.charHeight = charHeight;
  }
  
  public float getCharPosX() {
    return charPosX;
  }

  public void setCharPosX(float charPosX) {
    this.charPosX = charPosX;
  }

  public float getCharPosY() {
    return charPosY;
  }

  public void setCharPosY(float charPosY) {
    this.charPosY = charPosY;
  }

  public float getCharWidth() {
    return charWidth;
  }

  public void setCharWidth(float charWidth) {
    this.charWidth = charWidth;
  }

  public float getCharHeight() {
    return charHeight;
  }

  public void setCharHeight(float charHeight) {
    this.charHeight = charHeight;
  }
}