abstract class Purchasable extends Locations {
  String name;
  int value, rent, level;
  boolean owned;
  
  public Purchasable(){}
  
  public Purchasable(String name, int value, int level, int rent) {
    super(name);
    this.value = value;
    this.level = level;
    this.rent = rent;
    owned = false;
  }
  
  public int getValue() {
    return value;
  }
  public int getLevel() {
    return level;
  }
  public int getRent(){
    return rent;
  }
  // do when player class is implemented
  public void setOwner(Player player){
    owned = true;
  }
}
