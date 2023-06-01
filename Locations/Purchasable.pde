abstract class Purchasable extends Locations {
  String name;
  int value, rent, level;
  boolean owned;
  
  public Purchasable(){}
  
  public Purchasable(String name, int value, int level, int rent, boolean owned) {
    super(name);
    this.value = value;
    this.level = level;
    this.rent = rent;
    this.owned = false;
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
 

  public String getOwner() {
    return this.getPlayerName();
  }
  // do when player class is implemented
  public void setOwner(Player player){
    owned = true;
  }
}
