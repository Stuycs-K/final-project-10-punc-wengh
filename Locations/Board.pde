public class Board {
  Player[] Players = new Player[4];
  ArrayList <Locations> Locations;

  public Board() {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player("Player " + i);
    }
    
    //initialize locations
    Locations.add(new Property("calvin lane", "brown", 0, 60, 60, false));
    
  }
  public Board(String names) {
    //initialize Players
    String[] name = names.split(",");
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player(name[i]);
    }
  }
  

}
