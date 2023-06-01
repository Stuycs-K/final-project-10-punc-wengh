abstract class Chest extends nonPurchasable {

  public Chest(String name, int value) {
    super(name, value);
  }
  
  public ArrayList addCards(ArrayList chestCards, Card Cards){
    chestCards.add(Cards);
    return chestCards;
  }
 
  
}
