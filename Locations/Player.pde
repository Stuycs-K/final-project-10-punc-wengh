public class Player{
  String name, currentLocation;
  int balance;
  ArrayList Purchasables, Cards;
  public Player(){
    name = "player";
    balance = 1500;
    currentLocation = "start";

  }

  public Player(String enteredName){
    name = enteredName;
    balance = 1500;
    currentLocation = "start";
  }
  public String getPlayerName(){
    return name;
  }
  public int getBalance(){
    return balance;
  }
  public changeBalance(int amount){
    balance += amount;
  }
  public addOwned(Purchasables purchasable){
    Purchasables.add(purchasable);
  }
  public boolean inDebt(){
    return (balance <= 0);
  }

}
