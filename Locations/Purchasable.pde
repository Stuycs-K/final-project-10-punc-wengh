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
  // do when player class is implemented
  //public void setOwner(String owner){
  //  return owner;
  //}
}
