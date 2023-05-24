public class Railroad extends Purchasable {
  String name;
  int value, rent, level;
  
  public Railroad(){}
  
  public Railroad(String name, int value, int rent, int level) {
    super(name, value, level, rent);
  }
  public String getName(){}
  
  public int getValue(){}
  
  public int getLevel(){}
  
  public int getRent(){}
  
  public String getOwner(){}
  
  public void setOwner(){}
}
