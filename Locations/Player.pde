public class Player{
  String name, currentLocation;
  int balance;
  ArrayList <Location> Purchasables;
  ArrayList<String> Cards;

  
  public Player(){
    name = "player";
    balance = 1500;
    currentLocation = "start";
    Purchasables = new ArrayList<Location>();
  }

  public Player(String enteredName){
    name = enteredName;
    balance = 1500;
    currentLocation = "start";
    Purchasables = new ArrayList<Location>();
  }
  public String getPlayerName(){
    return name;
  }
  public int getBalance(){
    return balance;
  }
  public ArrayList<Location> getPurchasables(){
    return Purchasables;
  }
  

  public void deposit(int amount){
    balance += amount;

  }
  public void withdraw(int amount){
    balance -= amount;
  }
  
  public ArrayList addOwned(Location yes){
    Purchasables.add(yes);
    return Purchasables;
  }
  public boolean inDebt(){
    return (balance <= 0);
  }
  public int rollDie(){
    int d1 = (int)(random(1,7));
    int d2 = (int)(random(1,7));
    return d1+d2;
  }

 
}
