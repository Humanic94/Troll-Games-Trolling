// imports the arraylist library.
import java.util.ArrayList;

//Class level has the task to create the current level of the game. 
//It is going to contain a list of objects to help build the entire level.

//Constructor
class Level
{
private ArrayList<WorldObject> currentLevel;

public Level()
{
  currentLevel = new ArrayList<WorldObject>();
//currentLevel.clear;
//background someKindOfImg.Png;
WorldObject ground = new WorldObject(22, 145, 20, 45);
WorldObject stoneOne = new WorldObject(11, 24, 150, 231);
currentLevel.add(ground);
currentLevel.add(stoneOne);

}

void levelTwo()
{
//currentLevel.clear;
//background someKindOfImg.Png; (Sprite)
//WorldObject groundOne = new WorldObject(22,145);
//WorldObject stoneOne = new WorldObject(11,2424);

}
//Returns a collection of all the objects of the current level.
public ArrayList<WorldObject> getCurrentLevel()
{
  return currentLevel;
}
}