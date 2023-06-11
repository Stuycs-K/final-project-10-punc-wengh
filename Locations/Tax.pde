public class Tax extends nonPurchasable {
  String name;
  int value;
  
  public Tax(String name, int value) {
    super(name, 0, false);
    this.value = value;

  }
  public int getValue(){
    return value;
  }
  public void deduct(Player player) {
    player.withdraw(value);
  }
}
