public class Location {
  String name;
  int value;
  boolean owned;
  
  public Location(String name, int value, boolean owned) {
    this.name = name;
    this.value = value;
    this.owned = false;
  }

  public String getName() {
    return name;
  }
  public int getValue() {
    return value;
  }
  public boolean getOwned(){
    return owned;
  }
  public void setOwned(){
    this.owned = true;
  }

 }
