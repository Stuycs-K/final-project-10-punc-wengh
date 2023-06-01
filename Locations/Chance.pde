abstract class Chance extends nonPurchasable {

  public Chance(String name, int value) {
    super(name, value);
  }
  
  public ArrayList addCards(ArrayList chanceCards, Card Cards){
    chanceCards.add(Cards);
    return chanceCards;
  }
  
  //public void drawCard(player Player){
    
  //}
 
  
}
