public class Jail extends nonPurchasable {
  String name;
  int value;
  boolean owned;
  
  public Jail(String name, int value, boolean owned) {
    super(name, value, owned);
  }
  
  public void deduct(Player player) {
    player.withdraw(value);
  }
  
}
