public class Board {
  Player[] Players = new Player[4];
  ArrayList <Locations> Locations;

  public Board() {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player("Player " + i);
    }
    
    //initialize locations
<<<<<<< HEAD
    Locations.add(new Property("calvin lane", "brown", 0, 60, 60, false));
=======
    Locations.add(Start());
    Locations.add(Property("Mediterranean Avenue","brown", 0, 60, 2));
    Locations.add(Property("Baltic Avenue","brown",0 , 60, 4));
    
    
>>>>>>> 7cb96cff6535541a58643159a10d4f42a6333710
    
  }
  public Board(String names) {
    //initialize Players
    String[] name = names.split(",");
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player(name[i]);
    }
  }
  

}
