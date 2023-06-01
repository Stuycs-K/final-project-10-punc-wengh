//this is a file to test the classes

PImage board;
ArrayList <Location> Locations = new ArrayList<>();
ArrayList <Player> Players = new ArrayList<>();
boolean diceOver = false;
int diceX = 20;
int diceY = 910;
int diceWidth = 200;
int diceHeight = 80;
int turn = 0;
int d1 = 0;
int d2 = 0;
int d3 = 0;
int d4 = 0;
int move = 0;
int playerOneX = 840;
int playerOneY = 810;
int playerTwoX = 840;
int playerTwoY = 810;
int playerOneCounter = 0;
int playerTwoCounter = 0;


void setup() {
  size(1800, 1000);
  
  board = loadImage("monopoly.jpg");
  addLocations();
  for (int i = 0; i < Locations.size(); i++) {
    System.out.println(Locations.get(i).getName().toString());
  }
  Players.add(new Player("Player 1"));
  Players.add(new Player("Player 2"));
}

void update(int x, int y){
   if (overDice(diceX, diceY, diceWidth, diceHeight) ) {
    diceOver = true;
   }
   else{
     diceOver = false;
   }
}

boolean overDice(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void draw() {
  update(mouseX, mouseY);
  background(255);
  image(board, 0, 0, 900, 900);
  if (diceOver) {
    fill(255, 255, 0);
  }
  else{
    fill(255);
  }

  rect(diceX, diceY, diceWidth, diceHeight);

  textSize(30);
  
  //player 1
  
  fill(255, 0, 0);
  circle(playerOneX, playerOneY, 50);
  text(Players.get(0).getPlayerName().toString(), 900, 50);
  fill(0);
  text("Balance: " +Players.get(0).getBalance(), 900, 80);
  text("Die: " + d1 + " " + d2, 900, 110);
  if (Players.get(0).getPurchasables().size() == 0) {
    text("Property: None", 900, 140);
  } else {
    for (int i = 0; i < Players.get(0).getPurchasables().size(); i++) {
      text("Property: " + Players.get(0).getPurchasables().get(i), 900, 120);
    }
  }

  //player 2
  fill(0, 0, 255);
  circle(playerTwoX, playerTwoY, 50);
  text(Players.get(1).getPlayerName().toString(), 1300, 50);
  fill(0);
  text("Balance: " +Players.get(1).getBalance(), 1300, 80);
  text("Die: " + d3 + " " + d4, 1300, 110);
  if (Players.get(1).getPurchasables().size() == 0) {
    text("Property: None", 1300, 140);
  }
  else {
    for (int i = 0; i < Players.get(1).getPurchasables().size(); i++) {
      text("Property: " + Players.get(1).getPurchasables().get(i), 1300, 120);
    }
  }
  text("Roll Die", 70, 960);
  if(turn == 0){
    fill(255, 0, 0);
    text(Players.get(0).getPlayerName().toString() + "(turn)", 900, 50);
    
  }
  else{
    fill(0, 0, 255);
    text(Players.get(1).getPlayerName().toString() + "(turn)", 1300, 50);
  }

}

void mousePressed(){
  if(diceOver){
    if (turn == 0){
    d1 = (int)(random(1,7));
    d2 = (int)(random(1,7));
    move = d1 + d2;
    for (int i = 0; i < move; i++){
      if (playerOneCounter >= 0 && playerOneCounter < 10){
        playerOneX -= 76;
        playerOneCounter += 1;
        System.out.println(playerOneCounter);
      }

      else if (playerOneCounter >= 10 && playerOneCounter < 20){
        playerOneY -= 73;
        playerOneCounter += 1;
        System.out.println(playerOneCounter);
      }
      else if (playerOneCounter >= 20 && playerOneCounter < 30){
        playerOneX += 76;
        playerOneCounter += 1;
        System.out.println(playerOneCounter);
      }
      else if (playerOneCounter >= 30 && playerOneCounter < 40){
        playerOneY += 73;
        playerOneCounter += 1;
        System.out.println(playerOneCounter);
      }
      if (playerOneCounter >= 40){
        playerOneCounter = 0;
      }
    }
    turn += 1;
    }
    
    else{
    d3 = (int)(random(1,7));
    d4 = (int)(random(1,7));
    move = d3 + d4;
    for (int i = 0; i < move; i++){
      if (playerTwoCounter >= 0 && playerTwoCounter < 10){
        playerTwoX -= 76;
        playerTwoCounter += 1;
        System.out.println(playerTwoCounter);
      }

      else if (playerTwoCounter >= 10 && playerTwoCounter < 20){
        playerTwoY -= 73;
        playerTwoCounter += 1;
        System.out.println(playerTwoCounter);
      }
      else if (playerTwoCounter >= 20 && playerTwoCounter < 30){
        playerTwoX += 76;
        playerTwoCounter += 1;
        System.out.println(playerTwoCounter);
      }
      else if (playerTwoCounter >= 30 && playerTwoCounter < 40){
        playerTwoY += 73;
        playerTwoCounter += 1;
        System.out.println(playerOneCounter);
      }
      if (playerTwoCounter >= 40){
        playerTwoCounter = 0;
      }
    }
    turn -= 1;
    }
  }
}


void addLocations() {
  Locations.add(new Start("Start"));
  Locations.add(new Property("Mediterranean Avenue", "brown", 0, 60, 2, false));
  Locations.add(new Property("Baltic Avenue", "brown", 0, 60, 4, false));
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
