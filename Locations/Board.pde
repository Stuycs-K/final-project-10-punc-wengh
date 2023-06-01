public class Board {
  Player[] Players = new Player[4];
  ArrayList <Locations> Locations;

  public Board() {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Players("Player " + i);
    }

  }
  public Board(String names) {
    //initialize Players
    names = names.split(",");
    for (int i = 0; i < Players.length; i++) {
      Players[i] = Player(names[i]);
    }
  }
}
