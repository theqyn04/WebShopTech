package model;


public class cart {
    private int phone_id;
    private String phone_name;
    private int phone_type_id;
    private double price;
    private int quantity;
    private String imageURL;
    private double discount;

    public cart() {
    }

    public cart(int phone_id, String phone_name, int phone_type_id, double price, int quantity, String imageURL, double discount) {
        this.phone_id = phone_id;
        this.phone_name = phone_name;
        this.phone_type_id = phone_type_id;
        this.price = price;
        this.quantity = quantity;
        this.imageURL = imageURL;
        this.discount = discount;
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

   
}
