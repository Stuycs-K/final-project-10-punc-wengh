//this is a file to test the classes

PImage board;
ArrayList <Location> Locations = new ArrayList<>();

void setup(){
  size(1500,1000);
  background(255);
  board = loadImage("monopoly.jpg");
  addLocations();
  for (int i = 0; i < Locations.size(); i++){
    System.out.println(Locations.get(i).getName().toString());
  }
}

void draw(){
  image(board, 0, 0, 900, 900);
  
}

void addLocations(){
    Locations.add(new Start("Start"));
    Locations.add(new Property("Mediterranean Avenue","brown", 0, 60, 2, false));
    Locations.add(new Property("Baltic Avenue","brown",0 , 60, 4, false));
    Locations.add(new Property("Mediterranean Avenue", "brown", 0, 60, 2, false));
    Locations.add(new Chest("Community Chest", 0));
    Locations.add(new Property("Baltic Avenue", "brown", 0, 60, 4, false));
    Locations.add(new Tax("Income Tax"));
    Locations.add(new Railroad("Reading Railroad", 200, 25, 0, false));
    Locations.add(new Property("Oriental Avenue", "light blue", 0, 100, 6, false));
    Locations.add(new Chance("Chance", 0));
    Locations.add(new Property("Vermont Avenue", "light blue", 0, 100, 6, false));
    Locations.add(new Property("Connecticut Avenue", "light blue", 0, 120, 8, false));
    Locations.add(new Jail("Jail", 200));
    Locations.add(new Property("St. Charles Place", "pink", 0, 140, 10, false));
    Locations.add(new Utility("Electric Company", 150, 0, (int)(Math.random() * 7) + (int)(Math.random() * 7), false));
    Locations.add(new Property("States Avenue", "pink", 0, 140, 10, false));
    Locations.add(new Railroad("Pennsylvania Railroad", 200, 25, 0, false));
    Locations.add(new Property("St. James Place", "orange", 0, 180, 14, false));
    Locations.add(new Chest("Community Chest", 0));
    Locations.add(new Property("Tennessee Avenue", "orange", 0, 180, 14, false));
    Locations.add(new Property("New York Avenue", "orange", 0, 200, 16, false));
    Locations.add(new Utility("Free Parking", 0, 0, 0, false));
    Locations.add(new Property("Kentucky Avenue", "red", 0, 220, 18, false));
    Locations.add(new Chance("Chance", 0));
    Locations.add(new Property("Indiana Avenue", "red", 0, 220, 18, false));
    Locations.add(new Property("Illinois Avenue", "red", 0, 240, 20, false));
    Locations.add(new Railroad("B.& O. Railroad", 200, 25, 0, false));
    Locations.add(new Property("Atlantic Avenue", "yellow", 0, 260, 22, false));
    Locations.add(new Property("Ventnor Avenue", "yellow", 0, 260, 22, false));
    Locations.add(new Utility("Water Works", 150, 0, (int)(Math.random() * 7) + (int)(Math.random() * 7), false));
    Locations.add(new Property("Marvin Gardens", "yellow", 0, 280, 24, false));
    Locations.add(new Jail("Go To Jail", 200));
    Locations.add(new Property("Pacific Avenue", "green", 0, 300, 26, false));
    Locations.add(new Property("North Carolina Avenue", "green", 0, 300, 26, false));
    Locations.add(new Chest("Community Chest", 0));
    Locations.add(new Property("Pennsylvania Avenue", "green", 0, 320, 28, false));
    Locations.add(new Railroad("Short Line", 200, 25, 0, false));
    Locations.add(new Chance("Chance", 0));
    Locations.add(new Property("Park Place", "blue", 0, 350, 35, false));
    Locations.add(new Tax("Luxury Tax"));
    Locations.add(new Property("Boardwalk", "blue", 0, 400, 50, false));
}
