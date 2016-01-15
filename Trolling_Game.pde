//Trolling Game

void setup()
{
  size(1024,500);
  smooth();

}
void draw()
{
  
  
  mapLayout();
  drawBall();
}
void mapLayout()
{
  pushStyle();
  noFill();
  background(130,132,130);
  line(560,440,40,440);
  curve(0,0,637,264,561,440,59,245);
  line(537,335,166,335);
  curve(871,397,193,176,166,335,691,258);
  line(666,176,194,176);
  curve(-177,139,668,176,916,381,1416,185);
  line(1022,381,916,381);
  
  
  
  popStyle();
}
void drawBall()
{
  
  ellipse(68,416,45,45);
  fill(20,145,11);
  strokeWeight(2);
  
}