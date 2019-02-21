
package inventory;

public class Inventory {
    private String iType;
    private String iName ;
    private int quantity;
    private int qut;
    private int inventoryIDPrimary ;

    public String getiType() {
        return iType;
    }

    public String getiName() {
        return iName;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getInventoryIDPrimary() {
        return inventoryIDPrimary;
    }

    public void setiType(String iType) {
        this.iType = iType;
    }

    public void setiName(String iName) {
        this.iName = iName;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setQut(int qut) {
        this.qut = qut;
    }

    public void setInventoryIDPrimary(int inventoryIDPrimary) {
        this.inventoryIDPrimary = inventoryIDPrimary;
    }
    
    
    public void remove() {
        quantity = quantity - qut ;
    }

    
    public void checkQuantity(){
        if(qut < quantity)
           remove();
        else
           System.out.println("Quantity not available. Iventory have "+quantity+"this much of quantity. You can book below " + quantity); 
           
    }
}
