public class Player{
  String name, currentLocation;
  int balance;
  ArrayList <Purchasable>Purchasables;
  //ArrayList <Cards>Cards;
  
  public Player(){
    name = "player";
    balance = 1500;
    currentLocation = "start";
    Purchasables = new <ArrayList> 
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
  public int changeBalance(int amount){
    balance += amount;
    return balance;
  }
  public ArrayList addOwned(Purchasable yes){
    Purchasables.add(yes);
  }
  public boolean inDebt(){
    return (balance <= 0);
  }

 
}
