//Trolling Game
float xPosBall = 71;
float yPosBall = 425;
float movementX = 0;
float movementY = 0;
void setup()
{
  size(1024, 500);
  smooth();
}
void draw()
{
  mapLayoutOne();
  drawBall();
  ballMechanics();
  xPosBall += movementX;
  yPosBall += movementY;
  resistance();
}