public class Property extends Purchasable {
  String name, propColor;
  int level, value, rent;
  
  public Property() {}
  
  public Property(String name, String propColor, int level, int value, int rent) {
    super(name, value, level, rent);
    this.propColor = propColor;
  }
  
  public String getColor() {
    return propColor;
  }
  
  public int levelUp() {
    if (getColor().equals("red") {
    }
    else if (getColor().equals("brown")) {
    }
    else if (getColor().equals("light blue")) {
    }
    else if (getColor().equals("pink")) {
    }
    else if (getColor().equals("orange")) {
    }
    else if (getColor().equals("yellow")) {
    }
    else if (getColor().equals("green")) {
    }
    else {
      //dark blue
      this.withdraw(50);
      (this.Purchasables).add(getName());
    }
    else if (getColor().equals("light blue")) {
      this.withdraw(50);
      (this.Purchasables).add(getName());
    }
    else if (getColor().equals("pink")) {
      this.withdraw(100);
      (this.Purchasables).add(getName());
    }.
    else if (getColor().equals("orange")) {
      this.withdraw(100);
      (this.Purchasables).add(getName());
    }
    else if (getColor().equals("yellow")) {
      this.withdraw(150);
      (this.Purchasables).add(getName());
    }
    else if (getColor().equals("green")) {
      this.withdraw(150);
      (this.Purchasables).add(getName());
    }
    else {
      this.withdraw(200);
      (this.Purchasables).add(getName());
    }
  }
}
