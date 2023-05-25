abstract class nonPurchasable extends Locations {

  String name;
  int value;
  
  public nonPurchasable(String name, int value) {
    super(name);
    this.value = value;
  }
  
  public int getValue() {
    return value;
  }
}
