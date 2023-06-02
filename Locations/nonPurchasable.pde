abstract class nonPurchasable extends Location {
  String name;
  int value;
  boolean owned;
  
  public nonPurchasable(String name, int value, boolean owned) {
    super(name, value, owned);
    this.value = value;
  }
  
  public int getValue() {
    return value;
  }
}
