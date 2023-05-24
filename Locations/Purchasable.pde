<<<<<<< HEAD
public class Purchasable extends Locations {
  String name;
  int value, rent, level;
  
  public Purchasable(String name, int value, int level) {
    super(name);
    this.value = value;
    this.level = level;
  }
  
  public int getValue() {
    return value;
  }
  public int getLevel() {
    return level;
  }
=======
public class Purchasable extends Locations{
String name, owner;
>>>>>>> fd4b4cfa7b6088669b2ed6ba33803a11b0d690b3
}
