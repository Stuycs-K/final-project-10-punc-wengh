public class Property extends Purchasable {
  String name, propColor;
  int level, value, rent;
  
  public Property() {}
  
  public Property(String name, String propColor, int level, int value, int rent) {
    super(name, value, level, rent);
    this.propColor = color;
  }
  
  public String getColor() {
    return propColor;
  }
  
  public int levelUp() {
    if (getColor().equals("red") {
    }
    else if (getColor().equals("brown")) {
      this.withdraw(50);
    }
    else if (getColor().equals("light blue")) {
      this.withdraw(50);
    }
    else if (getColor().equals("pink")) {
      this.withdraw(100);
    }
    else if (getColor().equals("orange")) {
      this.withdraw(100);
    }
    else if (getColor().equals("yellow")) {
      this.withdraw(150);
    }
    else if (getColor().equals("green")) {
    }
    else {
      this.withdraw(200);
    }
  }
}
