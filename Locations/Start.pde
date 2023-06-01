public class Start extends nonPurchasable {
  String name;
  int value;
  
  public Start(String name) {
    super(name, 200);
  }
  
  public void grant(Player player) {
    player.deposit(value);
  }
}
