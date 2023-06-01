abstract class Card extends nonPurchasable {
  String description;
  
  public Card(String name, int value, String description) {
    super(name, value);
    this.description = description;
  }
  
  
}
