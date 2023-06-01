public class Board {
  Player[] Players = new Player[4];
  ArrayList <Locations> Locations;

  public Board() {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player("Player " + i);
    }

  }
  public Board(String names) {
    //initialize Players
    String[] name = names.split(",");
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player(name[i]);
    }
  }
}
