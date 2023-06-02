abstract class Purchasable extends Location {
  String name;
  int value, rent, level;
  boolean owned;
  
  public Purchasable(String name, int value, int level, int rent, boolean owned) {
    super(name, value);
    this.level = level;
    this.rent = rent;
    this.owned = owned;
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
  public void setOwner(){
    owned = true;
  }
}
