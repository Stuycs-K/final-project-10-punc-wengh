//this is a file to test the classes

PImage board;
ArrayList <Location> Locations = new ArrayList<Location>();
ArrayList <String> Chest = new ArrayList<String>();
ArrayList <String> Chance = new ArrayList<String>();
ArrayList <Player> Players = new ArrayList<Player>();
boolean diceOver = false;
int diceX = 20;
int diceY = 910;
int diceWidth = 200;
int diceHeight = 80;
boolean buyOver = false;
int buyX = 230;
int buyY = 910;
int buyWidth = 200;
int buyHeight = 80;
boolean endOver = false;
int endX = 930;
int endY = 910;
int endWidth = 200;
int endHeight = 80;
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
int countdown;
boolean oneRolled = false;
boolean twoRolled = false;

void setup() {
  size(1800, 1000);
  frameRate(100);
  countdown = 0;
  board = loadImage("monopoly.jpg");
  addChestCards();
  addChanceCards();
  addLocations();
  for (int i = 0; i < Locations.size(); i++) {
    System.out.println(Locations.get(i).getName());
  }
  for (int i = 0; i < Locations.size(); i++) {
    System.out.println(Locations.get(i).getValue());
  }
  Players.add(new Player("Player 1's Turn"));
  Players.add(new Player("Player 2's Turn"));
  //  Players.get(0).addOwned(new Property("Mediterranean Avenue", "brown", 0, 60, 2, false));
  //  Players.get(0).addOwned(new Property("Mediterranean Avenue", "brown", 0, 60, 2, false));
  //  Players.get(0).addOwned(new Property("Mediterranean Avenue", "brown", 0, 60, 2, false));
}

void update(int x, int y) {
  if (overDice(diceX, diceY, diceWidth, diceHeight) ) {
    diceOver = true;
    buyOver = false;
    endOver = false;
  } else if (overBuy(buyX, buyY, buyWidth, buyHeight)) {
    buyOver = true;
    diceOver = false;
    endOver = false;
  } else if (overEnd(endX, endY, endWidth, endHeight)) {
    endOver = true;
    buyOver = false;
    diceOver = false;
  } else {
    buyOver = diceOver = endOver = false;
  }
}

boolean overDice(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overBuy(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overEnd(int x, int y, int width, int height) {
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
  } else {
    fill(255);
  }

  rect(diceX, diceY, diceWidth, diceHeight);

  textSize(30);
  fill(255, 0, 0);
  circle(playerOneX, playerOneY, 50);
  //player 1
  circle(playerOneX, playerOneY, 50);
  if (turn == 0) {
    if (oneRolled == true) {
      if (endOver) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }
      rect(endX, endY, endWidth, endHeight);
      fill(0);
      text("End Turn", 970, 960);
    }
    fill(255, 0, 0);
    circle(playerOneX, playerOneY, 50);
    text(Players.get(0).getPlayerName().toString(), 950, 50);
    fill(0);
    text("Balance: " +Players.get(0).getBalance(), 950, 80);

    text("Die: " + d1 + " " + d2, 950, 140);

    if (Players.get(0).getPurchasables().size() == 0) {
      text("Property: None", 950, 170);
    } else {
      text("Property:", 950, 170);
      for (int i = 0; i < Players.get(0).getPurchasables().size(); i++) {
        text("" +Players.get(0).getPurchasables().get(i).getName(), 950, 200  + 30 * i);
      }
    }
    text("Roll Die", 70, 960);
    text("Currently On: " + Locations.get(playerOneCounter).getName().toString() + " (" + Locations.get(playerOneCounter).getValue() + ")", 950, 110);
    if (Locations.get(playerOneCounter) instanceof Purchasable && !Locations.get(playerOneCounter).getOwned()) {

      if (buyOver) {
        fill(255, 255, 0);
      } else {
        fill(255);
      }
      rect(buyX, buyY, buyWidth, buyHeight);
      fill(0);
      text("Buy", 300, 960);
    }
  }

  //player 2
  fill(0, 0, 255);
  circle(playerTwoX, playerTwoY, 50);
  if (turn == 1) {
    if (oneRolled == false) {
      if (endOver) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }
      rect(endX, endY, endWidth, endHeight);
      fill(0);
      text("End Turn", 970, 960);
    }
    fill(0, 0, 255);
    circle(playerTwoX, playerTwoY, 50);
    text(Players.get(1).getPlayerName().toString(), 950, 50);
    fill(0);
    text("Balance: " +Players.get(1).getBalance(), 950, 80);

    text("Die: " + d3 + " " + d4, 950, 140);
    if (Players.get(1).getPurchasables().size() == 0) {
      text("Property: None", 950, 170);
    } else {
      text("Property:", 950, 170);
      for (int i = 0; i < Players.get(1).getPurchasables().size(); i++) {
        text("" +Players.get(1).getPurchasables().get(i).getName(), 950, 200  + 30 * i);
      }
    }
    text("Roll Die", 70, 960);
    fill(0);
    text("Currently On: " + Locations.get(playerTwoCounter).getName().toString(), 950, 110);
    if (Locations.get(playerTwoCounter) instanceof Purchasable && !Locations.get(playerTwoCounter).getOwned()) {
      if (buyOver) {
        fill(255, 255, 0);
      } else {
        fill(255);
      }
      rect(buyX, buyY, buyWidth, buyHeight);
      fill(0);
      text("Buy", 300, 960);
    }
  }
}

void mousePressed() {
  if (endOver && turn == 0 && oneRolled) {
    turn = 1;
    System.out.println(turn);
  } else if (endOver && turn == 1 && twoRolled) {
    turn = 0;
    System.out.println(turn);
  }

  if (diceOver) {
    if (turn == 0 && !oneRolled) {
      d1 = (int)(random(1, 7));
      d2 = (int)(random(1, 7));
      move = d1 + d2;
      for (int i = 0; i < move; i++) {
        if (countdown == 0) {
          if (playerOneCounter >= 0 && playerOneCounter < 10) {
            playerOneX -= 76;
            playerOneCounter += 1;
            System.out.println(playerOneCounter);
          } else if (playerOneCounter >= 10 && playerOneCounter < 20) {
            playerOneY -= 73;
            playerOneCounter += 1;
            System.out.println(playerOneCounter);
          } else if (playerOneCounter >= 20 && playerOneCounter < 30) {
            playerOneX += 76;
            playerOneCounter += 1;
            System.out.println(playerOneCounter);
          } else if (playerOneCounter >= 30 && playerOneCounter < 40) {
            playerOneY += 73;
            playerOneCounter += 1;
            System.out.println(playerOneCounter);
          }
          if (playerOneCounter == 40) {
            playerOneCounter = 0;
            Players.get(0).deposit(200);
          }
        }
      }

      for (int i = 0; i < Players.get(1).getPurchasables().size(); i++) {
        if (Locations.get(playerOneCounter).getName().equals(Players.get(1).getPurchasables().get(i).getName())) {
          Players.get(0).withdraw(Players.get(1).getPurchasables().get(i).getValue());
          Players.get(1).deposit(Players.get(1).getPurchasables().get(i).getValue());
        }
      }
      oneRolled = true;
      twoRolled = false;
    } else if (turn == 1 && !twoRolled) {
      d3 = (int)(random(1, 7));
      d4 = (int)(random(1, 7));
      move = d3 + d4;
      for (int i = 0; i < move; i++) {
        if (playerTwoCounter >= 0 && playerTwoCounter < 10) {
          playerTwoX -= 76;
          playerTwoCounter += 1;
          System.out.println(playerTwoCounter);
        } else if (playerTwoCounter >= 10 && playerTwoCounter < 20) {
          playerTwoY -= 73;
          playerTwoCounter += 1;
          System.out.println(playerTwoCounter);
        } else if (playerTwoCounter >= 20 && playerTwoCounter < 30) {
          playerTwoX += 76;
          playerTwoCounter += 1;
          System.out.println(playerTwoCounter);
        } else if (playerTwoCounter >= 30 && playerTwoCounter < 40) {
          playerTwoY += 73;
          playerTwoCounter += 1;
          System.out.println(playerOneCounter);
        }
        if (playerTwoCounter == 40) {
          playerTwoCounter = 0;
          Players.get(1).deposit(200);
        }
      }
      for (int i = 0; i < Players.get(0).getPurchasables().size(); i++) {
        if (Locations.get(playerOneCounter).getName().equals(Players.get(0).getPurchasables().get(i).getName())) {
          Players.get(1).withdraw(Players.get(0).getPurchasables().get(i).getValue());
          Players.get(0).deposit(Players.get(0).getPurchasables().get(i).getValue());
        }
      }
      oneRolled = false;
      twoRolled = true;
    }
  }

  if (buyOver && turn == 0 && !Locations.get(playerOneCounter).getOwned()) {
    if (Locations.get(playerOneCounter) instanceof Purchasable) {
      Locations.get(playerOneCounter).setOwned();
      Location toOwn = Locations.get(playerOneCounter);
      Players.get(0).addOwned(toOwn);
      Players.get(0).withdraw(toOwn.getValue());
    }
  }
  if (buyOver && turn != 0 && !Locations.get(playerTwoCounter).getOwned()) {
    if (Locations.get(playerTwoCounter) instanceof Purchasable) {
      Locations.get(playerTwoCounter).setOwned();
      Location toOwn = Locations.get(playerTwoCounter);
      Players.get(1).addOwned(toOwn);
      Players.get(1).withdraw(toOwn.getValue());
    }
  }
}
void addChestCards() {
  Chest.add("FROM SALE OF STOCK. YOU GET $50.");
  Chest.add("HOSTPITAL FEES. PAY $100.");
  Chest.add("YOU INHERIT. COLLECT $100");
}

void addChanceCards() {
  Chance.add("GO BACK THREE SPACES.");
  Chance.add("YOUR BUILDING LOAN MATURES.");
  Chance.add("SPEEDING FINE.");
}

void addLocations() {
  Locations.add(new Start("Start"));
  Locations.add(new Property("Mediterranean Avenue", "brown", 0, 60, 2, false));
  Locations.add(new Chest("Community Chest", Chest.get((int)Math.random() * Chest.size()), false));
  Locations.add(new Property("Baltic Avenue", "brown", 0, 60, 4, false));
  Locations.add(new Tax("Income Tax"));
  Locations.add(new Railroad("Reading Railroad", 200, 25, 0, false));
  Locations.add(new Property("Oriental Avenue", "light blue", 0, 100, 6, false));
  Locations.add(new Chance("Chance", Chance.get((int)Math.random() * Chance.size()), false));
  Locations.add(new Property("Vermont Avenue", "light blue", 0, 100, 6, false));
  Locations.add(new Property("Connecticut Avenue", "light blue", 0, 120, 8, false));
  Locations.add(new Jail("Jail", 200, false));
  Locations.add(new Property("St. Charles Place", "pink", 0, 140, 10, false));
  Locations.add(new Utility("Electric Company", 150, 0, (int)(Math.random() * 7) + (int)(Math.random() * 7), false));
  Locations.add(new Property("States Avenue", "pink", 0, 140, 10, false));
  Locations.add(new Property("Virginia Avenue", "pink", 0, 160, 10, false));
  Locations.add(new Railroad("Pennsylvania Railroad", 200, 25, 0, false));
  Locations.add(new Property("St. James Place", "orange", 0, 180, 14, false));
  Locations.add(new Chest("Community Chest", Chest.get((int)Math.random() * Chest.size()), false));
  Locations.add(new Property("Tennessee Avenue", "orange", 0, 180, 14, false));
  Locations.add(new Property("New York Avenue", "orange", 0, 200, 16, false));
  Locations.add(new Utility("Free Parking", 0, 0, 0, false));
  Locations.add(new Property("Kentucky Avenue", "red", 0, 220, 18, false));
  Locations.add(new Chance("Chance", Chance.get((int)Math.random() * Chance.size()), false));
  Locations.add(new Property("Indiana Avenue", "red", 0, 220, 18, false));
  Locations.add(new Property("Illinois Avenue", "red", 0, 240, 20, false));
  Locations.add(new Railroad("B.& O. Railroad", 200, 25, 0, false));
  Locations.add(new Property("Atlantic Avenue", "yellow", 0, 260, 22, false));
  Locations.add(new Property("Ventnor Avenue", "yellow", 0, 260, 22, false));
  Locations.add(new Utility("Water Works", 150, 0, (int)(Math.random() * 7) + (int)(Math.random() * 7), false));
  Locations.add(new Property("Marvin Gardens", "yellow", 0, 280, 24, false));
  Locations.add(new Jail("Go To Jail", 200, false));
  Locations.add(new Property("Pacific Avenue", "green", 0, 300, 26, false));
  Locations.add(new Property("North Carolina Avenue", "green", 0, 300, 26, false));
  Locations.add(new Chest("Community Chest", Chest.get((int)Math.random() * Chest.size()), false));
  Locations.add(new Property("Pennsylvania Avenue", "green", 0, 320, 28, false));
  Locations.add(new Railroad("Short Line", 200, 25, 0, false));
  Locations.add(new Chance("Community Chest", Chance.get((int)Math.random() * Chance.size()), false));
  Locations.add(new Property("Park Place", "blue", 0, 350, 35, false));
  Locations.add(new Tax("Luxury Tax"));
  Locations.add(new Property("Boardwalk", "blue", 0, 400, 50, false));
}
