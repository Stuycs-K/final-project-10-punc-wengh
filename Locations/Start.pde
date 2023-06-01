public class Start extends nonPurchasable {
  String name;
  int value;
  
  public Start(String name, int value) {
    super(name, 200);
  }
  
  public void grant() {
    this.deposit(value);
  }
}
