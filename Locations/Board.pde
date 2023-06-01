public class Board {
  Player[] Players = new Player[4];
  ArrayList <Locations> Locations;

  public Board() {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Players("Player " + i);
    }
    
    //initialize locations
    Locations.add(Start());
    Locations.add(Property("Mediterranean Avenue","brown", 0, 60, 2));
    Locations.add(Property("Baltic Avenue","brown",0 , 60, 4));
    
    
    
  }
  public Board(String names) {
    //initialize Players
    names = names.split(",");
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player(names[i]);
    }
  }
  

}
