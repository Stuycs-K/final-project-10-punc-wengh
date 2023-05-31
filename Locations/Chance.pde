abstract class Chance extends nonPurchasable {

  public Chance() {
    super(name);
  }
  
  public ArrayList addCards(ArrayList chanceCards, Card Cards){
    chanceCards.add(Cards);
    return chanceCards;
  }
  
  //public void drawCard(player Player){
    
  //}
 
  
}
