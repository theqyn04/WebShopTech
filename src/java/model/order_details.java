
package model;

public class order_details {
    private int order_detail_id, order_id, phone_id, quantity;
    private double unit_price, subtotal;

    public order_details() {
    }

    public order_details(int order_detail_id, int order_id, int phone_id, int quantity, double unit_price, double subtotal) {
        this.order_detail_id = order_detail_id;
        this.order_id = order_id;
        this.phone_id = phone_id;
        this.quantity = quantity;
        this.unit_price = unit_price;
        this.subtotal = subtotal;
    }

    public int getOrder_detail_id() {
        return order_detail_id;
    }

    public void setOrder_detail_id(int order_detail_id) {
        this.order_detail_id = order_detail_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getPhone_id() {
        return phone_id;
    }

    public void setPhone_id(int phone_id) {
        this.phone_id = phone_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(double unit_price) {
        this.unit_price = unit_price;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    
    
}
