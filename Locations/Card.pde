abstract class Card extends nonPurchasable {
  String description;
  
  public Card(String name, String description) {
    super(name, -1);
    this.description = description;
  }
  
  
}
