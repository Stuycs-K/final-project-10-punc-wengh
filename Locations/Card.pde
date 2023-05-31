abstract class Card extends nonPurchasable {
  String description;
  
  public Card(String name, int value, String description) {
    super(name);
    super(value);
    this.description = description;
  }
  
  
}
