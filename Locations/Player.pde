public class Player{
  String name, currentLocation;
  int balance;
  ArrayList <Purchasable>Purchasables;
  //ArrayList <Cards>Cards;
  
  public Player(){
    name = "player";
    balance = 1500;
    currentLocation = "start";
    Purchasables = new ArrayList<Purchasable>();
  }

  public Player(String enteredName){
    name = enteredName;
    balance = 1500;
    currentLocation = "start";
    Purchasables = new ArrayList<Purchasable>();
  }
  public String getPlayerName(){
    return name;
  }
  public int getBalance(){
    return balance;
  }
  public int changeBalance(int amount){
    balance += amount;
    return balance;
  }

  public void deposit(int amount){
    balance += amount;
    return balance;
  }
  public void withdraw(int amount){
    balance -= amount;
    return balance;
  }
  public ArrayList addOwned(Purchasable yes){
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
