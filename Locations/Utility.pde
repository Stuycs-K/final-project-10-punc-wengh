public class Utility extends Purchasable {
  String name;
  int value, rent;
  
  public Utility() {
    super();
  }
  
  public Utility(String name, int value, int fee) {
    super(name, value, -1, fee);
  }
 
  
  public String getOwner(){}
}
