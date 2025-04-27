package dao;

import model.phone;
import model.cart;
import java.util.List;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.PreparedStatement;
import java.util.ArrayList;


public class PhoneDAO extends DBConnect {

    //DBConnect dbConnect=new DBConnect();
    public int remove(int id) {
        int n = 0;
        String sql = "delete from phone where phone_id=" + id;
        try {
            String sqlSelect = "select phone_id from order_details where phone_id=" + id;
            ResultSet rs = getData(sqlSelect);
            if (rs.next()) {// foreign key constrain --> don't delete
                return -1;
            }
            n = conn.createStatement().executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public int update(phone pho) {
        int n = 0;
        String sql = """
           UPDATE [dbo].[phone]
              SET [phone_name] = ?
                 ,[phone_type_id] = ?
                 ,[price] = ?
                 ,[stock_quantity] = ?
                 ,[description] = ?
                 ,[imageURL] = ?
            WHERE phone_id = ?
              """;
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, pho.getPhone_name());
            pre.setInt(2, pho.getPhone_type_id());
            pre.setDouble(3, pho.getPrice());
            pre.setInt(4, pho.getStock_quantity());
            pre.setString(5, pho.getDescription());
            pre.setString(6, pho.getImageURL());
            pre.setInt(7, pho.getPhone_id());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public int add(phone pho) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[phone]\n"
                + "           ([phone_name]\n"
                + "           ,[phone_type_id]\n"
                + "           ,[price]\n"
                + "           ,[stock_quantity]\n"
                + "           ,[description]\n"
                + "           ,[imageURL])\n"
                + "     VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, pho.getPhone_name());
            pre.setInt(2, pho.getPhone_type_id());
            pre.setDouble(3, pho.getPrice());
            pre.setInt(4, pho.getStock_quantity());
            pre.setString(5, pho.getDescription());
            pre.setString(6, pho.getImageURL());

            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public List<phone> getPhone(String sql) {
        List<phone> list = new ArrayList<>();
        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {

                int phone_id = rs.getInt("phone_id");
                String phone_name = rs.getString("phone_name");
                int phone_type_id = rs.getInt("phone_type_id");
                double price = rs.getDouble("price");
                int stock_quantity = rs.getInt("stock_quantity");
                String description = rs.getString("description");
                String imageURL = rs.getString("imageURL");
                phone pho = new phone(phone_id, phone_name, phone_type_id, price, stock_quantity, description, imageURL);
                list.add(pho);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

    public List<cart> getPhoneCart(String sql) {
        List<cart> list = new ArrayList<>();
        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int phone_id = rs.getInt("phone_id");
                String phone_name = rs.getString("phone_name");
                int phone_type_id = rs.getInt("phone_type_id");
                double price = rs.getDouble("price");

                String imageURL = rs.getString("imageURL");
                cart cart = new cart(phone_id, phone_name, phone_type_id, price, 1, imageURL, 0);
                list.add(cart);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

    public phone getPhoneById(int id) {
        phone pho = null;
        String query = "SELECT * FROM phone WHERE phone_id = ?";
        try (
                PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                pho = new phone();
                pho.setPhone_id(rs.getInt("phone_id"));
                pho.setPhone_name(rs.getString("phone_name"));
                pho.setPrice(rs.getDouble("price"));
                pho.setImageURL(rs.getString("imageURL"));
                pho.setDescription(rs.getString("description"));

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return pho;
    }
    


    private double calculateTotalAmount(List<cart> cartItems) {
        double total = 0;
        for (cart item : cartItems) {
            total += item.getQuantity() * item.getPrice();
        }
        return total;
    }

    public void createOrder(int customerId, List<cart> cartItems) {
        try {
            double totalAmount = calculateTotalAmount(cartItems);

            String sql = "INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, customerId); 
            ps.setDate(2, new java.sql.Date(System.currentTimeMillis()));
            ps.setDouble(3, totalAmount);
            ps.setString(4, "processing");
            ps.executeUpdate();

            
        } catch (SQLException e) {
            e.printStackTrace();
            
        }
    }
   

}
