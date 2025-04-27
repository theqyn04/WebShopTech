
package model;


public class phone_brand {
    private int phone_brand_id;
    private String phone_brand_name, description;

    public phone_brand() {
    }

    public phone_brand(int phone_brand_id, String phone_brand_name, String description) {
        this.phone_brand_id = phone_brand_id;
        this.phone_brand_name = phone_brand_name;
        this.description = description;
    }

    public int getPhone_brand_id() {
        return phone_brand_id;
    }

    public void setPhone_brand_id(int phone_brand_id) {
        this.phone_brand_id = phone_brand_id;
    }

    public String getPhone_brand_name() {
        return phone_brand_name;
    }

    public void setPhone_brand_name(String phone_brand_name) {
        this.phone_brand_name = phone_brand_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    
    
}
