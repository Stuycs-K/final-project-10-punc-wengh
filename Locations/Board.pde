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
<<<<<<< HEAD
    Locations.add(Property("Mediterranean Avenue","brown", 0, 60, 2));
    Locations.add(Property("Baltic Avenue","brown",0 , 60, 4));
    
    
>>>>>>> 7cb96cff6535541a58643159a10d4f42a6333710
    
=======
    Locations.add(Property("Mediterranean Avenue", "brown", 0, 60, 2));
    Locations.add(Chest());
    Locations.add(Property("Baltic Avenue", "brown", 0, 60, 4));
    Locations.add(Tax());
    Locations.add(Railroad("Reading Railroad", 200, 25, 0));
    Locations.add(Property("Oriental Avenue", "light blue", 0, 100, 6));
    Locations.add(Chance());
    Locations.add(Property("Vermont Avenue", "light blue", 0, 100, 6));
    Locations.add(Property("Connecticut Avenue", "light blue", 0, 120, 8));
    Locations.add(Jail());
    Locations.add(Property("St. Charles Place", "pink", 0, 140, 10));
    Locations.add(Utility("Electric Company", 150, (int)(Math.random() * 7) + (int)(Math.random() * 7)));
    Locations.add(Property("States Avenue", "pink", 0, 140, 10));
    Locations.add(Railroad("Pennsylvania Railroad", 200, 25, 0));
    Locations.add(Property("St. James Place", "orange", 0, 180, 14));
    Locations.add(Chest());
    Locations.add(Property("Tennessee Avenue", "orange", 0, 180, 14));
    Locations.add(Property("New York Avenue", "orange", 0, 200, 16));
    Locations.add(Utility("Free Parking"));
    Locations.add(Property("Kentucky Avenue", "red", 0, 220, 18));
    Locations.add(Chance());
    Locations.add(Property("Indiana Avenue", "red", 0, 220, 18));
    Locations.add(Property("Illinois Avenue", "red", 0, 240, 20));
    Locations.add(Railroad("B.& O. Railroad", 200, 25, 0));
    Locations.add(Property("Atlantic Avenue", "yellow", 0, 260, 22));
    Locations.add(Property("Ventnor Avenue", "yellow", 0, 260, 22));
    Locations.add(Utility("Water Works", 150, (int)(Math.random() * 7) + (int)(Math.random() * 7)));
    Locations.add(Property("Marvin Gardens", 0, 280, 24));
    Locations.add(Jail());
    Locations.add(Property("Pacific Avenue", "green", 0, 300, 26));
    Locations.add(Property("North Carolina Avenue", "green", 0, 300, 26));
    Locations.add(Chest());
    Locatins.add(Property("Pennsylvania Avenue", "green", 0, 320, 28));
    Locations.add(Railroad("Short Line", 200, 25, 0));
    Locations.add(Chance());
    Locations.add(Property("Park Place", "blue", 0, 350, 35));
    Locations.add(Tax());
    Locations.add(Property("Boardwalk", "blue", 0, 400, 50));
>>>>>>> 99f8bc960f7c8d9120bcec43882dff4544fefd4c
  }
  public Board(String names) {
    //initialize Players
    String[] name = names.split(",");
    for (int i = 0; i < Players.length; i++) {
      Players[i] = new Player(name[i]);
    }
  }
}
