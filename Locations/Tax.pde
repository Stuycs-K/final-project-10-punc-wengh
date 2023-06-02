public class Tax extends nonPurchasable {
  String name;
  int value;
  
  public Tax(String name) {
    super(name, 200, false);
  }
  
  public void deduct(Player player) {
    player.withdraw(value);
  }
}
