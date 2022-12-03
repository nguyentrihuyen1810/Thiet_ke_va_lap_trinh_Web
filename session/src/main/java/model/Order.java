package model;

public class Order {
    private int quantity;

    public Order() {
    }

    public Order(int quantity) {
        this.quantity = quantity;
    }

    public double getCost() {
        return quantity * 9.95;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public static boolean isValidQuantity (int quantity) {
        if (quantity > 0) { return true;}
        else return false;
    }
}
