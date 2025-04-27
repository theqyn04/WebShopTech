
package dao;

import model.phone_brand;
import java.util.List;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.PreparedStatement;
import java.util.ArrayList;


public class PhoneBrandDAO extends DBConnect {

    //DBConnect dbConnect=new DBConnect();
    public int remove(int id) {
        int n = 0;
        String sql = "delete from phone_brand where phone_brand_id=" + id;
        try {
            String sqlSelect = "select phone_type_id from phone where phone_type_id=" + id;

            ResultSet rs = getData(sqlSelect);
            if (rs.next()) {// foreign key constrain --> don't delete
                return -1;
            }
            n = conn.createStatement().executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(PhoneBrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public int update(phone_brand pho) {
        int n = 0;
        String sql = """
           UPDATE [dbo].[phone_brand]
              SET [phone_brand_name] = ?
                 ,[description] = ?
            WHERE phone_brand_id = ?
              """;
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, pho.getPhone_brand_name());
            pre.setString(2, pho.getDescription());
            pre.setInt(3, pho.getPhone_brand_id());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PhoneBrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public int add(phone_brand pho) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[phone_brand]\n"
                + "           (phone_brand_id, [phone_brand_name]\n"
                + "           ,[description])\n"
                + "     VALUES (?, ?, ?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, pho.getPhone_brand_id());
            pre.setString(2, pho.getPhone_brand_name());
            pre.setString(3, pho.getDescription());
            
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PhoneBrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public List<phone_brand> getPhoneBrand(String sql) {
        List<phone_brand> list = new ArrayList<>();
        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {

                int phone_brand_id = rs.getInt("phone_brand_id");
                String phone_brand_name = rs.getString("phone_brand_name");
                String description = rs.getString("description");
                phone_brand pho = new phone_brand(phone_brand_id, phone_brand_name, description);
                list.add(pho);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneBrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

}
