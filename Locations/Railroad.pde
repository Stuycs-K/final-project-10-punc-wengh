public class Railroad extends Purchasable {
  String name;
  int value, rent, level;
  
  public Railroad(){
    super();
  }
  public Railroad(String name, int value, int rent, int level) {
    super(name, value, level, rent);
  }
}
