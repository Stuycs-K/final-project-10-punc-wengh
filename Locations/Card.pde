abstract class Card extends nonPurchasable {
  
  String description;
  
  public Card(String name, int value, String description) {
    super(name);
    this.value = value;
    this.description = description;
  }
  
  
}
