public class Railroad extends Purchasable {
  String name;
  int value, rent, level;

  public Railroad(String name, int value, int rent, int level, boolean owned) {
    super(name, value, level, rent, owned);
  }
}
