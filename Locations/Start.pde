public class Start extends nonPurchasable {
  String name;
  int value;
  
<<<<<<< HEAD
  public Start(String name, int value) {
=======
  public Start(String name) {
>>>>>>> PunDisplay
    super(name, 200);
  }
  
  public void grant(Player player) {
    player.deposit(value);
  }
}
