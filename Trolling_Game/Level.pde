// imports the arraylist library.
import java.util.ArrayList;

/*
Class level has the task to create the current level of the game. 
It is going to contain a list of objects to help build the entire level.
*/


class Level
{
  private ArrayList<WorldObject> currentLevel;
  private ArrayList<WorldObject> levelOne; 
  private ArrayList<WorldObject> levelTwo; 
  
  //Constructor
  public Level()
  {
    //levelOne();
  }
  //First level
  void levelOne() //First screenview of level One
  {
    levelOne = new ArrayList<WorldObject>();
    //currentLevel.clear;
    //background someKindOfImg.Png;
    
    //creates the objects of the level.
    WorldObject ground = new WorldObject(560, 440, 40, 440); //Ground
    WorldObject stoneOne = new WorldObject(577, 335, 477, 335); //FirstJump
    WorldObject stoneTwo = new WorldObject(737, 381, 645, 381); //SecondJump
    WorldObject stoneThree = new WorldObject(753, 268, 645, 268); //ThirdJump
    WorldObject stoneFour = new WorldObject(588, 210, 484, 210); //FourthJump
    WorldObject stoneFive = new WorldObject(1024, 147, 650, 147); //FifhtJump
    WorldObject stoneSix = new WorldObject(753, 268, 645, 268); //Top
    
    //Adds all the objects to the list.
    
    levelOne.add(ground);
    levelOne.add(stoneOne);
    levelOne.add(stoneTwo);
    levelOne.add(stoneThree);
    levelOne.add(stoneFour);
    levelOne.add(stoneFive);
    levelOne.add(stoneSix);
    
    //Updates the level objects.
    currentLevel = levelOne;
  }

  void levelTwo() //Second screenview of level one
  {
    levelTwo = new ArrayList<WorldObject>();
    //currentLevel.clear;
    //background someKindOfImg.Png; (Sprite)
    //WorldObject groundOne = new WorldObject(22,145);
    //WorldObject stoneOne = new WorldObject(11,2424);
    WorldObject ground = new WorldObject(560, 440, 40, 440); //Ground
    levelTwo.add(ground);
    currentLevel = levelTwo;
    
  }
  
  //Returns a collection of all the objects of the current level.
  public ArrayList<WorldObject> getCurrentLevel()
  {
    return currentLevel;
  }
}