//map one variables/////////
int groundRight = 560;    //
int groundLeft = 40;      //
int groundHeight = 440;   //
int groundFJ = 381;       //
int groundFJLeft = 645;   //
int groundFJRight = 737; 
int groundSJ = 335;
int groundSJLeft = 477;
int groundSJRight = 577;
//
////////////////////////////

class Map
{
  Map()
  {
  }
  private void layoutOne()
{
  pushStyle();
  //noFill();
  background(188, 191, 198);
  line(groundRight, groundHeight, groundLeft, groundHeight); //Ground
  line(groundFJRight, groundFJ, groundFJLeft, groundFJ); //FirstJump
  line(groundSJRight, groundSJ, groundSJLeft, groundSJ); //SecondJump
  line(753, 268, 645, 268); //ThirdJump
  line(588, 210, 484, 210); //FourthJump
  line(1024, 147, 650, 147); //FifhtJump
  line(753, 268, 645, 268); //Top
  line(40,440,0,246);      //GroundMountain
  curve(-138,399,30,386,40,440,-18,378); //GroundCave
  line(1021,5,1002,148);      //TopMountain
  curve(1016,97,1003,147,1009,90,1238,16); //TopCave
  popStyle();
}
}