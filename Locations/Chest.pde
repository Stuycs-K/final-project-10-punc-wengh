abstract class Chest extends nonPurchasable {

  public Chest() {
    super(name);
  }
  
  public ArrayList addCards(ArrayList chestCards, Card Cards){
    chestCards.add(Cards);
    return chestCards;
  }
 
  
}
