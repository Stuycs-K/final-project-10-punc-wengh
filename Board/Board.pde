public class Board {
  Locations[] = new Locations[40];
  Players[] = new Players[4];
  String[] chance = new String[16];
  String[] chest = new String[16];

  public Board() {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Players("Player " + i);
    }
    //initialize Locations
    //initialize chance
    //initialize chest
  }
  public Board(String names) {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      //code here
    }
    //initialize Locations
    //initialize chance
    //initialize chest
  }
  
  public addChance() {
    //code here
  }
  
  public addChest() {
    //code here
  }
}
