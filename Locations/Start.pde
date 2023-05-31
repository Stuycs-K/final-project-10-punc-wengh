public class Start extends nonPurchasable {
  String name;
  int value;
  
  public Start(){}
  
  public Start(String name, int value) {
    super(name, value);
  }
  
  public void grant() {
    this.deposit(200);
  }
}
