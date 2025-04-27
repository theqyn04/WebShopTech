
package model;

public class store_inventory {
    private int id, store_id, phone_id, stock_quantity;

    public store_inventory() {
    }

    public store_inventory(int store_id, int phone_id, int stock_quantity) {
        this.store_id = store_id;
        this.phone_id = phone_id;
        this.stock_quantity = stock_quantity;
    }

    public store_inventory(int id, int store_id, int phone_id, int stock_quantity) {
        this.id = id;
        this.store_id = store_id;
        this.phone_id = phone_id;
        this.stock_quantity = stock_quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStore_id() {
        return store_id;
    }

    public void setStore_id(int store_id) {
        this.store_id = store_id;
    }

    public int getPhone_id() {
        return phone_id;
    }

    public void setPhone_id(int phone_id) {
        this.phone_id = phone_id;
    }

    public int getStock_quantity() {
        return stock_quantity;
    }

    public void setStock_quantity(int stock_quantity) {
        this.stock_quantity = stock_quantity;
    }

    
}
