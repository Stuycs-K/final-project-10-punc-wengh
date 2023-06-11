//initiate x and y vars, replace the parameters
PImage board;
PImage background;
int state = 0;
ArrayList <Location> Locations = new ArrayList<Location>();
ArrayList <String> Chest = new ArrayList<String>();
ArrayList <String> Chance = new ArrayList<String>();
ArrayList <Player> Players = new ArrayList<Player>();
int buttonWidth = 200;
int buttonHeight = 80 ;
int diceX = 1060;
int diceY = 930;
int buyX = 1270;
int buyY = 930;
int fineX = 1480;
int fineY = 930;
int endX = 1690;
int endY = 930;
int gameEndX = 1690;
int gameEndY = 50;
boolean diceOver = false;
boolean buyOver = false;
boolean endOver = false;
boolean startOver = false;
boolean fineOver = false;
boolean endGameOver = false;
int startX = 835;
int startY = 489;
int startWidth = 250;
int startHeight = 100;
int turn = 0;
int d1 = 0;
int d2 = 0;
int d3 = 0;
int d4 = 0;
int move = 0;
int playerOneX = 950;
int playerOneY = 950;
int playerTwoX = 1020;
int playerTwoY = 1000;
int playerOneCounter = 0;
int playerTwoCounter = 0;
int countdown;
boolean oneRolled = false;
boolean twoRolled = false;
boolean oneInJail = false;
boolean twoInJail = false;
int oneTurnsJail = 0;
int twoTurnsJail = 0;

void setup() {
  size(1920, 1080);
  frameRate(100);
  countdown = 0;
  background = loadImage("background.jpg");
  background.resize(width, height);
  board = loadImage("monopoly.jpg");
  addChestCards();
  addChanceCards();
  addLocations();
  Players.add(new Player("Player 1's Turn"));
  Players.add(new Player("Player 2's Turn"));
}

void update(int x, int y) {
  if (overDice(diceX, diceY, buttonWidth, buttonHeight)) {
    diceOver = true;
    buyOver = endGameOver = endOver = startOver = endGameOver = false;
  } else if (overBuy(buyX, buyY, buttonWidth, buttonHeight)) {
    buyOver = true;
    endGameOver = diceOver = endOver = startOver = endGameOver = false;
  } else if (overEnd(endX, endY, buttonWidth, buttonHeight)) {
    endOver = true;
    buyOver = diceOver = endGameOver = startOver = endGameOver = false;
  } else if (overFine(fineX, fineY, buttonWidth, buttonHeight)) {
    fineOver = true;
    buyOver = diceOver = endOver = startOver = endGameOver = false;
  } else if (overStart(startX, startY, startWidth, startHeight)) {
    startOver = true;
    buyOver = diceOver = endOver = endGameOver = fineOver = false;
  } else if(overEndGame(gameEndX, gameEndY, buttonWidth, buttonHeight)){
    endGameOver = true;
    buyOver = diceOver = endOver = startOver = fineOver = false;
  }
  else {
    buyOver = diceOver = endOver = startOver = fineOver = endGameOver = false;
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

boolean overFine(int x, int y, int width, int height) {
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

boolean overStart(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overEndGame(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void draw() {
  background(background);
  PImage welcome = loadImage("welcome.png");
  image(welcome, width/4, height/22, width/2, height/2);

  fill(255);
  if (startOver) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
  rect(startX, startY, startWidth, startHeight);
  fill(0);
  textSize(40);
  text("Start", width/2, height/2+10);
  textAlign(CENTER);
  update(mouseX, mouseY);


  if (state == 1) {
    textSize(30);
    background(background);
    image(board, 0, 0, 1050, 1050);
    if (endGameOver) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    rect(gameEndX, gameEndY, buttonWidth, buttonHeight);
    fill(0);
    text("End Game", gameEndX + 100, gameEndY + 50);

    
    fill(255, 0, 0);
    circle(playerOneX, playerOneY, 50);

    //player 1
    if (turn == 0) {
      if (oneRolled) {
        if (endOver) {
          fill(255, 0, 0);
        } else {
          fill(255);
        }
        rect(endX, endY, buttonWidth, buttonHeight);
        fill(0);
        text("End Turn", endX + 100, endY + 50);
      }
      else{
        if (diceOver) {
          fill(255, 255, 0);
        } else {
          fill(255);
        }
        rect(diceX, diceY, buttonWidth, buttonHeight);
        fill(0);
        text("Roll Die", diceX + 100, diceY + 50);
      }
      fill(255, 0, 0);
      circle(playerOneX, playerOneY, 50);
      text(Players.get(0).getPlayerName().toString(), width/2+350, 50);
      fill(0);
      text("Balance: " +Players.get(0).getBalance(), width/2+350, 80);

      text("Die: " + d1 + " " + d2 + " = " + (d1+d2), width/2+350, 140);
      text("In Jail: " + oneInJail, width/2+350, 170);
      text("Turns In Jail: " + oneTurnsJail, width/2+350, 200);

      if (Players.get(0).getPurchasables().size() == 0) {
        text("Property: None", width/2+350, 230);
      } else {
        text("Property:", width/2+350, 230);
        for (int i = 0; i < Players.get(0).getPurchasables().size(); i++) {
          text("" +Players.get(0).getPurchasables().get(i).getName(), width/2+350, 260  + 30 * i);
        }
      }

      text("Currently On: " + Locations.get(playerOneCounter).getName().toString() + " ($" + Locations.get(playerOneCounter).getValue() + ")", width/2+350, 110);
      if (Locations.get(playerOneCounter) instanceof Purchasable && !Locations.get(playerOneCounter).getOwned()) {

        if (buyOver) {
          fill(255, 255, 0);
        } else {
          fill(255);
        }
        rect(buyX, buyY, buttonWidth, buttonHeight);
        fill(0);
        text("Buy", buyX + 100, buyY + 50);
      }
      if (oneTurnsJail < 2 && oneInJail) {
        if (fineOver) {
          fill(255, 255, 0);
        } else {
          fill(255);
        }
        rect(fineX, fineY, buttonWidth, buttonHeight);
        fill(0);
        text("Pay Fine", fineX + 100, fineY + 50);
      }
    }

    //player 2
    fill(0, 0, 255);
    circle(playerTwoX, playerTwoY, 50);
    if (turn == 1) {
      if (!oneRolled) {
        if (endOver) {
          fill(255, 0, 0);
        } else {
          fill(255);
        }
        rect(endX, endY, buttonWidth, buttonHeight);
        fill(0);
        text("End Turn", endX + 100, endY + 50);
      }
      else{
        if (diceOver) {
          fill(255, 255, 0);
        } else {
          fill(255);
        }
        rect(diceX, diceY, buttonWidth, buttonHeight);
        fill(0);
        text("Roll Die", diceX + 100, diceY + 50);
      }
      fill(0, 0, 255);
      circle(playerTwoX, playerTwoY, 50);
      text(Players.get(1).getPlayerName().toString(), width/2+350, 50);
      fill(0);
      text("Balance: " +Players.get(1).getBalance(), width/2+350, 80);
      text("Die: " + d3 + " " + d4  + " = " + (d3+d4), width/2+350, 140);
      text("In Jail: " + twoInJail, width/2+350, 170);
      text("Turns In Jail: " + twoTurnsJail, width/2+350, 200);
      if (Players.get(1).getPurchasables().size() == 0) {
        text("Property: None", width/2+350, 230);
      } else {
        text("Property:", width/2+350, 230);
        for (int i = 0; i < Players.get(1).getPurchasables().size(); i++) {
          text("" +Players.get(1).getPurchasables().get(i).getName(), width/2+350, 260  + 30 * i);
        }
      }
      fill(0);
      text("Currently On: " + Locations.get(playerTwoCounter).getName().toString() + " ($" + Locations.get(playerTwoCounter).getValue() + ")", width/2+350, 110);
      if (Locations.get(playerTwoCounter) instanceof Purchasable && !Locations.get(playerTwoCounter).getOwned()) {
        if (buyOver) {
          fill(255, 255, 0);
        } else {
          fill(255);
        }
        rect(buyX, buyY, buttonWidth, buttonHeight);
        fill(0);
        text("Buy", buyX + 100, buyY + 50);
      }
      if (twoTurnsJail < 2 && twoInJail) {
        if (fineOver) {
          fill(255, 255, 0);
        } else {
          fill(255);
        }
        rect(fineX, fineY, buttonWidth, buttonHeight);
        fill(0);
        text("Pay Fine", fineX + 100, fineY + 50);
      }
    }
  }
}

void mousePressed() {
  if (endOver && turn == 0 && oneRolled) {
    turn = 1;
  } else if (endOver && turn == 1 && twoRolled) {
    turn = 0;
  }
  if (startOver) {
    state = 1;
  }
  if (fineOver && turn == 0 && oneInJail) {
    Players.get(0).withdraw(200);
    oneInJail = false;
  }
  if (fineOver && turn == 1 && twoInJail) {
    Players.get(1).withdraw(200);
    twoInJail = false;
  }

  if (diceOver) {
    if (oneInJail && turn == 0) {

      d1 = (int)(random(1, 7));
      d2 = (int)(random(1, 7));
      if (d1 == d2) {
        oneInJail = false;
        move = d1 + d2;
        for (int i = 0; i < move; i++) {
          if (playerOneCounter >= 0 && playerOneCounter < 10) {
            playerOneX -= 86;
            playerOneCounter += 1;
          } else if (playerOneCounter >= 10 && playerOneCounter < 20) {
            playerOneY -= 84;
            playerOneCounter += 1;
          } else if (playerOneCounter >= 20 && playerOneCounter < 30) {
            playerOneX += 86;
            playerOneCounter += 1;
          } else if (playerOneCounter >= 30 && playerOneCounter < 40) {
            playerOneY += 84;
            playerOneCounter += 1;
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
      }
      oneTurnsJail += 1;
      oneRolled = true;
      twoRolled = false;
    } 
    else if (turn == 0 && !oneRolled) {
      oneTurnsJail = 0;
      d1 = (int)(random(1, 7));
      d2 = (int)(random(1, 7));
      move = d1+d2;

      for (int i = 0; i < move; i++) {
        if (playerOneCounter >= 0 && playerOneCounter < 10) {
          playerOneX -= 86;
          playerOneCounter += 1;
        } else if (playerOneCounter >= 10 && playerOneCounter < 20) {
          playerOneY -= 84;
          playerOneCounter += 1;
        } else if (playerOneCounter >= 20 && playerOneCounter < 30) {
          playerOneX += 86;
          playerOneCounter += 1;
        } else if (playerOneCounter >= 30 && playerOneCounter < 40) {
          playerOneY += 84;
          playerOneCounter += 1;
        }
        if (playerOneCounter == 40) {
          playerOneCounter = 0;
          Players.get(0).deposit(200);
        }
      }

      for (int i = 0; i < Players.get(1).getPurchasables().size(); i++) {
        if (Locations.get(playerOneCounter).getName().equals(Players.get(1).getPurchasables().get(i).getName())) {
          Players.get(0).withdraw(Players.get(1).getPurchasables().get(i).getValue());
          Players.get(1).deposit(Players.get(1).getPurchasables().get(i).getValue());
        }
      }

      if (Locations.get(playerOneCounter).getName().equals("Go To Jail")) {
        oneInJail = true;
        playerOneX = 90;
        playerOneY = 950;
        playerOneCounter = 10;
      }
      if (Locations.get(playerOneCounter).getName().equals("Income Tax")) {
        Players.get(0).withdraw(200);
      }
      if (Locations.get(playerOneCounter).getName().equals("Luxury Tax")){
        Players.get(0).withdraw(100);
      }

      oneRolled = true;
      twoRolled = false;
    } 
    else if (twoInJail && turn ==1) {
      d3 = (int)(random(1, 7));
      d4 = (int)(random(1, 7));
      if (d3 == d4) {
        twoInJail = false;
        move = d3 + d4;
        for (int i = 0; i < move; i++) {
          if (playerTwoCounter > 0 && playerTwoCounter < 9) {
            playerTwoX -= 86;
            playerTwoCounter += 1;
          } else if (playerTwoCounter == 9 || playerTwoCounter == 0) {
            playerTwoX -= 150;
            playerTwoCounter += 1;
          } else if (playerTwoCounter == 20 || playerTwoCounter == 29) {
            playerTwoX += 150;
            playerTwoCounter +=1;
          } else if (playerTwoCounter == 10 || playerTwoCounter == 19) {
            playerTwoY -= 150;
            playerTwoCounter += 1;
          } else if (playerTwoCounter == 30 || playerTwoCounter == 39) {
            playerTwoY += 150;
            playerTwoCounter +=1;
          } else if (playerTwoCounter > 10 && playerTwoCounter < 19) {
            playerTwoY -= 83;
            playerTwoCounter += 1;
          } else if (playerTwoCounter >= 20 && playerTwoCounter < 29) {
            playerTwoX += 86;
            playerTwoCounter += 1;
          } else if (playerTwoCounter >= 30 && playerTwoCounter < 39) {
            playerTwoY += 83;
            playerTwoCounter += 1;
          }
          twoRolled = true;
          oneRolled = false;
        }
        for (int i = 0; i < Players.get(0).getPurchasables().size(); i++) {
          if (Locations.get(playerOneCounter).getName().equals(Players.get(0).getPurchasables().get(i).getName())) {
            Players.get(1).withdraw(Players.get(0).getPurchasables().get(i).getValue());
            Players.get(0).deposit(Players.get(0).getPurchasables().get(i).getValue());
          }
        }
      }
      twoRolled = true;
      oneRolled = false;
      twoTurnsJail +=1;
    } else if (turn == 1 && !twoRolled) {
      twoTurnsJail = 0;
      d3 = (int)(random(1, 7));
      d4 = (int)(random(1, 7));
      move = d3 + d4;
      for (int i = 0; i < move; i++) {
        if (playerTwoCounter > 0 && playerTwoCounter < 9) {
          playerTwoX -= 86;
          playerTwoCounter += 1;
        } else if (playerTwoCounter == 9 || playerTwoCounter == 0) {
          playerTwoX -= 150;
          playerTwoCounter += 1;
        } else if (playerTwoCounter == 20 || playerTwoCounter == 29) {
          playerTwoX += 150;
          playerTwoCounter +=1;
        } else if (playerTwoCounter == 10 || playerTwoCounter == 19) {
          playerTwoY -= 150;
          playerTwoCounter += 1;
        } else if (playerTwoCounter == 30 || playerTwoCounter == 39) {
          playerTwoY += 150;
          playerTwoCounter +=1;
        } else if (playerTwoCounter > 10 && playerTwoCounter < 19) {
          playerTwoY -= 83;
          playerTwoCounter += 1;
        } else if (playerTwoCounter >= 20 && playerTwoCounter < 29) {
          playerTwoX += 86;
          playerTwoCounter += 1;
        } else if (playerTwoCounter >= 30 && playerTwoCounter < 39) {
          playerTwoY += 83;
          playerTwoCounter += 1;
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
      if (Locations.get(playerTwoCounter).getName().equals("Go To Jail")) {
        twoInJail = true;
        playerTwoX = 32;
        playerTwoY = 1000;
        playerTwoCounter = 10;
      }
      if (Locations.get(playerTwoCounter).getName().equals("Income Tax")) {
        Players.get(1).withdraw(200);
      }
      if (Locations.get(playerTwoCounter).getName().equals("Luxury Tax")){
        Players.get(1).withdraw(100);
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
  Locations.add(new Tax("Income Tax", 200));
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
  Locations.add(new Start("Free Parking"));
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
  Locations.add(new Tax("Luxury Tax", 100));
  Locations.add(new Property("Boardwalk", "blue", 0, 400, 50, false));
}
