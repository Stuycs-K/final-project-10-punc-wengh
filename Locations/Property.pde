public class Property extends Purchasable {
  String name, propColor;
  int level, value, rent;

  public Property(String name, String propColor, int level, int value, int rent, boolean owned) {
    super(name, value, level, rent, owned);
    this.propColor = propColor;
  }


  public String getColor() {
    return propColor;
  }

<<<<<<< HEAD
  //public int levelUp() {
  //  if (getColor().equals("red") {
  //    this.withdraw(-1);
  //    (this.Purchasables).add(getName());
  //  } else if (getColor().equals("brown")) {
  //    this.withdraw(50);
  //    (this.Purchasables).add(getName());
  //  } else if (getColor().equals("light blue")) {
  //    this.withdraw(50);
  //    (this.Purchasables).add(getName());
  //  } else if (getColor().equals("pink")) {
  //    this.withdraw(100);
  //    (this.Purchasables).add(getName());
  //  } else if (getColor().equals("orange")) {
  //    this.withdraw(100);
  //    (this.Purchasables).add(getName());
  //  } else if (getColor().equals("yellow")) {
  //    this.withdraw(150);
  //    (this.Purchasables).add(getName());
  //  } else if (getColor().equals("green")) {
  //    this.withdraw(150);
  //    (this.Purchasables).add(getName());
  //  } else {
  //    this.withdraw(200);
  //    (this.Purchasables).add(getName());
  //  }
  //}
=======
//  public int levelUp() {

//    if (getColor().equals("red")) {
//    }
//    else if (getColor().equals("brown")) {
//    }
//    else if (getColor().equals("dark blue")){
//      Player.withdraw(50);
//      (Player.Purchasables).add(getName());

//    if (getColor().equals("red") {
//      this.withdraw(-1);
//      (this.Purchasables).add(getName());
//    } else if (getColor().equals("brown")) {
//      this.withdraw(50);
//      (this.Purchasables).add(getName());

//    }
//    else if (getColor().equals("light blue")) {
//      Player.withdraw(50);
//      (Player.Purchasables).add(getName());
//    }
//    else if (getColor().equals("pink")) {
//      Player.withdraw(100);
//      (Player.Purchasables).add(getName());
//    }
//    else if (getColor().equals("orange")) {
//      Player.withdraw(100);
//      (Player.Purchasables).add(getName());
//    }
//    else if (getColor().equals("yellow")) {
//      Player.withdraw(150);
//      (Player.Purchasables).add(getName());
//    }
//    else if (getColor().equals("green")) {
//      Player.withdraw(150);
//      (Player.Purchasables).add(getName());
//    }
//    else {
//      Player.withdraw(200);
//      (Player.Purchasables).add(getName());

//    } else if (getColor().equals("light blue")) {
//      this.withdraw(50);
//      (this.Purchasables).add(getName());
//    } else if (getColor().equals("pink")) {
//      this.withdraw(100);
//      (this.Purchasables).add(getName());
//    } else if (getColor().equals("orange")) {
//      this.withdraw(100);
//      (this.Purchasables).add(getName());
//    } else if (getColor().equals("yellow")) {
//      this.withdraw(150);
//      (this.Purchasables).add(getName());
//    } else if (getColor().equals("green")) {
//      this.withdraw(150);
//      (this.Purchasables).add(getName());
//    } else {
//      this.withdraw(200);
//      (this.Purchasables).add(getName());

//    }

//  }
//}
>>>>>>> PunDisplay
}
