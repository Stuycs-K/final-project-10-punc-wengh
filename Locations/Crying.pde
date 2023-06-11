import processing.sound.*;
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
int menuX = 850;
int menuY = 750;
int jailCardX = 1270;
int jailCardY = 930;
int playerOneWorth, playerTwoWorth;
boolean diceOver = false;
boolean buyOver = false;
boolean endOver = false;
boolean startOver = false;
boolean fineOver = false;
boolean endGameOver = false;
boolean menuOver = false;
boolean jailCardOver = false;
boolean played = false;
boolean played2 = false;
boolean played3 = false;
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
SoundFile file;
SoundFile file2;
SoundFile file3;


void setup() {
  size(1920, 1080);
  init();
}

void init() {
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
    buyOver = endOver = startOver = fineOver = endGameOver = menuOver = jailCardOver = false;
  } else if (overBuy(buyX, buyY, buttonWidth, buttonHeight)) {
    buyOver = true;
    diceOver = endOver = startOver = fineOver = endGameOver = menuOver = jailCardOver = false;
  } else if (overEnd(endX, endY, buttonWidth, buttonHeight)) {
    endOver = true;
    buyOver = diceOver = startOver = fineOver = endGameOver = menuOver = jailCardOver = false;
  } else if (overFine(fineX, fineY, buttonWidth, buttonHeight)) {
    fineOver = true;
    buyOver = diceOver = endOver = startOver = endGameOver = menuOver = jailCardOver = false;
  } else if (overStart(startX, startY, startWidth, startHeight)) {
    startOver = true;
    buyOver = diceOver = endOver = fineOver = endGameOver = menuOver = jailCardOver = false;
  } else if (overEndGame(gameEndX, gameEndY, buttonWidth, buttonHeight)) {
    endGameOver = true;
    buyOver = diceOver = endOver = startOver = fineOver = menuOver = jailCardOver = false;
  } else if (overMenu(menuX, menuY, buttonWidth, buttonHeight)) {
    menuOver = true;
    buyOver = diceOver = endOver = startOver = fineOver = endGameOver = jailCardOver = false;
  } else if (overJailCard(jailCardX, jailCardY, buttonWidth, buttonHeight)) {
    jailCardOver = true;
    buyOver = diceOver = endOver = startOver = fineOver = endGameOver = menuOver =false;
  } else if (overMenu(menuX, menuY, buttonWidth, buttonHeight)) {
    menuOver = true;
    buyOver = diceOver = endOver = startOver = fineOver = endGameOver = jailCardOver =false;
  } else {
    buyOver = diceOver = endOver = startOver = fineOver = endGameOver = menuOver = jailCardOver = false;
  }
}

void restart() {
  Players.remove(0);
  Players.remove(0);
  Players.add(new Player("Player 1's Turn"));
  Players.add(new Player("Player 2's Turn"));
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

boolean overMenu(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overJailCard(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void draw() {
  update(mouseX, mouseY);
  if (state == 0) {

    if (!played){
    file = new SoundFile(this, "elevator music.wav");
    file.play();
    played = true;
    
  }
  if (played2){
    file2.stop();
    played2 = false;
  }
  if (played3){
    file3.stop();
    played3 = false;
  }
    Players.add(new Player("Player 1's Turn"));
    Players.add(new Player("Player 2's Turn"));

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
  }


  else if (state == 1) {
    file.stop();
    if (!played2){
    file2 = new SoundFile(this, "swing.wav");
    file2.play();
    played2 = true;
    played = false;
    }
    
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
      } else {
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
      if (oneInJail) {

        if (fineOver) {
          fill(255, 255, 0);
        } else {
          fill(255);
        }
        rect(fineX, fineY, buttonWidth, buttonHeight);
        fill(0);
        text("Pay Fine", fineX + 100, fineY + 50);

        if (jailCardOver || buyOver) {
          fill(0, 0, 255);
        } else {
          fill(255);
        }
        rect(jailCardX, jailCardY, buttonWidth, buttonHeight);
        fill(0);
        text("Use Card", jailCardX + 100, jailCardY + 50);
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
      } else {
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
      if (twoInJail) {
        if (fineOver) {
          fill(255, 255, 0);
        } else {
          fill(255);
        }
        rect(fineX, fineY, buttonWidth, buttonHeight);
        fill(0);
        text("Pay Fine", fineX + 100, fineY + 50);
        if (jailCardOver || buyOver) {
          fill(0, 0, 255);
        } else {
          fill(255);
        }
        rect(jailCardX, jailCardY, buttonWidth, buttonHeight);
        fill(0);
        text("Use Card", jailCardX + 100, jailCardY + 50);
      }
    }
  }
  
  if (state == 2) {

    if (!played3){
    file3 = new SoundFile(this, "end.wav");
    file3.jump(10);
    file3.amp(0.25);
    played3 = true;

    }
    if (played2){
      file2.stop();
      played2 = false;
    }
    if (played){
      file.stop();
      played = false;
    }
    background(background);
    textSize(40);
    text("Player 1 Net Worth: " + playerOneWorth, width/2, height/3);
    text("Player 2 Net Worth: " + playerTwoWorth, width/2, height/3+50);
    textSize(30);
    text("The winner is...", width/2, height/2);
    textSize(80);
    if (playerOneWorth > playerTwoWorth) {
      text("PLAYER 1!!!", width/2, height/2+100);
    } else if (playerOneWorth == playerTwoWorth) {
      text("PLAYER 1 AND PLAYER 2 (IT IS A TIE) !!!", width/2, height/2+100);
    } else {
      text("PLAYER 2!!!", width/2, height/2+100);
    }
    textSize(30);
    if (menuOver) {
      fill(0, 0, 255);
    } else {
      fill(255);
    }
    rect(menuX, menuY, buttonWidth, buttonHeight);
    fill(0);
    text("Menu", menuX + 100, menuY + 50);
  }
}


void mousePressed() {
  if (endOver && turn == 0 && oneRolled) {
    turn = 1;
  } 
  else if (endOver && turn == 1 && twoRolled) {
    turn = 0;
  }
  else if (startOver) {
    state = 1;
    restart();
    redraw();
  }
  else if (fineOver && turn == 0 && oneInJail && Players.get(0).getBalance() - 200 >= 0) {
    Players.get(0).withdraw(200);
    oneInJail = false;
  }
  else if (fineOver && turn == 1 && twoInJail && Players.get(1).getBalance() - 200 >= 0) {
    Players.get(1).withdraw(200);
    twoInJail = false;
  }

  else if (diceOver) {
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
    } else if (turn == 0 && !oneRolled) {
      oneTurnsJail = 0;
      d1 = (int)(random(1, 7));
      d2 = (int)(random(1, 7));
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
      if (Locations.get(playerOneCounter).getName().equals("Luxury Tax")) {
        Players.get(0).withdraw(100);
      }

      oneRolled = true;
      twoRolled = false;
    } else if (twoInJail && turn ==1) {
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
          if (Locations.get(playerTwoCounter).getName().equals(Players.get(0).getPurchasables().get(i).getName())) {
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
        if (Locations.get(playerTwoCounter).getName().equals(Players.get(0).getPurchasables().get(i).getName())) {
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
      if (Locations.get(playerTwoCounter).getName().equals("Luxury Tax")) {
        Players.get(1).withdraw(100);
      }
      oneRolled = false;
      twoRolled = true;
    }
  }

  else if (buyOver && turn == 0 && !Locations.get(playerOneCounter).getOwned() && Locations.get(playerOneCounter) instanceof Purchasable && Players.get(0).getBalance() - Locations.get(playerOneCounter).getValue() >= 0) {
      Locations.get(playerOneCounter).setOwned();
      Location toOwn = Locations.get(playerOneCounter);
      Players.get(0).addOwned(toOwn);
      Players.get(0).withdraw(toOwn.getValue());
    
  }
  else if (buyOver && turn == 1 && !Locations.get(playerTwoCounter).getOwned() && Locations.get(playerTwoCounter) instanceof Purchasable && Players.get(1).getBalance() - Locations.get(playerTwoCounter).getValue() >= 0) {
      Locations.get(playerTwoCounter).setOwned();
      Location toOwn = Locations.get(playerTwoCounter);
      Players.get(1).addOwned(toOwn);
      Players.get(1).withdraw(toOwn.getValue());
    }
  
  else if (endGameOver && state == 1) {
    playerOneWorth = Players.get(0).getBalance();
    playerTwoWorth = Players.get(1).getBalance();
    for (int i = 0; i < Players.get(0).getPurchasables().size(); i++) {
      playerOneWorth += Players.get(0).getPurchasables().get(i).getValue();
    }
    for (int j = 0; j < Players.get(1).getPurchasables().size(); j++) {
      playerTwoWorth += Players.get(1).getPurchasables().get(j).getValue();
    }
    state = 2;
  }
  else if (menuOver) {
    state = 0;
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
