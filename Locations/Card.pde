abstract class Card extends nonPurchasable {
  String description;
  boolean owned;
  
  public Card(String name, String description, boolean owned) {
    super(name, 0, owned);
    this.description = description;
  }
  
  
}
