// imports the arraylist library.
import java.util.ArrayList;

/*
Class level has the task to create the current level of the game. 
It is going to contain a list of objects to help build the entire level.
*/


class Level
{
  private ArrayList<WorldObject> currentLevel;
  private ArrayList<WorldObject> levelOneScreenOne; 
  private ArrayList<WorldObject> levelOneScreenTwo; 
  
  //Constructor
  public Level()
  {
    //levelOne();
  }
  //First level
  void levelOne() //First screenview of level One
  {
    levelOneScreenOne = new ArrayList<WorldObject>();
    //currentLevel.clear;
    //background someKindOfImg.Png;
    
    //creates the objects of the level.
    WorldObject start = new WorldObject(560, 440, 40, 440); //Ground floor
    WorldObject stoneOne = new WorldObject(737, 380, 645, 380); //First stone
    WorldObject stoneTwo = new WorldObject(577, 335, 477, 335); //Second stone
    WorldObject stoneThree = new WorldObject(753, 268, 645, 268); //Third stone
    WorldObject stoneFour = new WorldObject(588, 210, 484, 210); //Fourth stome
    WorldObject finish = new WorldObject(1024, 147, 650, 147); //Top floor
    
    //Adds all the objects to the list.
    
    levelOneScreenOne.add(start);
    levelOneScreenOne.add(stoneOne);
    levelOneScreenOne.add(stoneTwo);
    levelOneScreenOne.add(stoneThree);
    levelOneScreenOne.add(stoneFour);
    levelOneScreenOne.add(finish);
    
    //Updates the level objects.
    currentLevel = levelOneScreenOne;
  }

  void levelTwo() //Second screenview of level one
  {
    levelOneScreenTwo = new ArrayList<WorldObject>();
    WorldObject start = new WorldObject(300, 147, 0, 147); 
    WorldObject first = new WorldObject(457, 250, 100, 250); 
    WorldObject second = new WorldObject(100, 350, 0, 350); 
    WorldObject third = new WorldObject(550, 440, 112, 440); 
    WorldObject fourth = new WorldObject(594, 380, 663, 380); 
    WorldObject fifht = new WorldObject(800, 320, 700, 320); 
    WorldObject sixst = new WorldObject(831, 267, 1000, 267); 
    WorldObject seventh = new WorldObject(660, 210, 531, 210); 
    WorldObject finish = new WorldObject(1000, 147, 742, 147); 
    levelOneScreenTwo.add(start);
    levelOneScreenTwo.add(first);
    levelOneScreenTwo.add(second);
    levelOneScreenTwo.add(third);
    levelOneScreenTwo.add(fourth);
    levelOneScreenTwo.add(fifht);
    levelOneScreenTwo.add(sixst);
    levelOneScreenTwo.add(seventh);
    levelOneScreenTwo.add(finish);
    currentLevel = levelOneScreenTwo;
    
  }
  
  //Returns a collection of all the objects of the current level.
  public ArrayList<WorldObject> getCurrentLevel()
  {
    return currentLevel;
  }
}