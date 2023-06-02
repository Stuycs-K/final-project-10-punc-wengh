public class Purchasable extends Location {
  String name;
  int value, rent, level;
  boolean owned;
  
  public Purchasable(String name, int value, int level, int rent, boolean owned) {
    super(name, value, owned);
    this.level = level;
    this.rent = rent;
  } 
  


  public int getLevel() {
    return level;
  }
  public int getRent(){
    return rent;
  }

 

  // do when player class is implemented

}
