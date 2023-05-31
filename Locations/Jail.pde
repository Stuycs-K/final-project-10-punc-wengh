public class Jail extends nonPurchasable {
  String name;
  int value;
  
  public Jail(){}
  
  public Jail(String name, int value) {
    super(name, value);
  }
  
  public void deduct() {
    this.withdraw(200);
  }
  
}
