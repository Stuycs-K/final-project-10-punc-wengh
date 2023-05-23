public class Board {
  Players[] = new Players[4];

  public Board() {
    //initialize Players
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Players("Player " + i);
    }
  }
  public Board(String names) {
    //initialize Players
    names = names.split(",)
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player(names[i]);
    }
  }

}
