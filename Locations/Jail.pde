public class Jail extends nonPurchasable {
  String name;
  int value;
  
  public Jail(String name, int value) {
    super(name, value);
  }
  
  public void deduct(Player player) {
    player.withdraw(value);
  }
  
}
