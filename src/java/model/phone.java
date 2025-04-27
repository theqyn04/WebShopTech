
package model;


public class phone {
    private int phone_id;
    private String phone_name;
    private int phone_type_id;
    private double price;
    private int stock_quantity;
    private String description, imageURL;

    public phone() {
    }

    public phone(String phone_name, int phone_type_id, double price, int stock_quantity, String description, String imageURL) {
        this.phone_name = phone_name;
        this.phone_type_id = phone_type_id;
        this.price = price;
        this.stock_quantity = stock_quantity;
        this.description = description;
        this.imageURL = imageURL;
    }

    public phone(int phone_id, String phone_name, int phone_type_id, double price, int stock_quantity, String description, String imageURL) {
        this.phone_id = phone_id;
        this.phone_name = phone_name;
        this.phone_type_id = phone_type_id;
        this.price = price;
        this.stock_quantity = stock_quantity;
        this.description = description;
        this.imageURL = imageURL;
    }

    public int getPhone_id() {
        return phone_id;
    }

    public void setPhone_id(int phone_id) {
        this.phone_id = phone_id;
    }

    public String getPhone_name() {
        return phone_name;
    }

    public void setPhone_name(String phone_name) {
        this.phone_name = phone_name;
    }

    public int getPhone_type_id() {
        return phone_type_id;
    }

    public void setPhone_type_id(int phone_type_id) {
        this.phone_type_id = phone_type_id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock_quantity() {
        return stock_quantity;
    }

    public void setStock_quantity(int stock_quantity) {
        this.stock_quantity = stock_quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    
}
