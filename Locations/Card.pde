abstract class Card extends nonPurchasable {
  String description;
  
  public Card(String description) {
    super("", -1);
    this.description = description;
  }
  
  
}
