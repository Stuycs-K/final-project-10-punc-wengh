public class Board {
  Player[] Players = new Player[4];
  ArrayList <Locations> Locations;

  public Board() {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player("Player " + i);
    }

<<<<<<< HEAD
=======
    //initialize locations

>>>>>>> PunDisplay
  }
  public Board(String names) {
    //initialize Players
    String[] name = names.split(",");
    for (int i = 0; i < Players.length; i++) {
<<<<<<< HEAD
      Players[i] = Player(names[i]);
=======
      Players[i] = new Player(name[i]);
>>>>>>> PunDisplay
    }
  }
}
