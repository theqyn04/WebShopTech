package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {

    Connection conn = null;

    public DBConnect(String URL, String userName, String password) {
        try {
            //call driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //connection
            conn = DriverManager.getConnection(URL, userName, password);
            System.out.println("connected");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
            // Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public DBConnect() {
        this("jdbc:sqlserver://localhost:1433;databaseName=tech_store", "sa", "sa123");
    }

    public ResultSet getData(String sql) {
        ResultSet rs = null;
        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = state.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Connection getConnection() {
        try {
            if (conn == null || conn.isClosed()) {
                // Tạo kết nối mới nếu chưa có hoặc đã đóng
                conn = DriverManager.getConnection(
                        "jdbc:sqlserver://localhost:1433;databaseName=tech_store",
                        "sa",
                        "sa123");
            }
            return conn;
        } catch (SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public static void main(String[] args) {
        // Tạo đối tượng DBConnect
        DBConnect dbConnect = new DBConnect();

        // Kiểm tra kết nối
        if (dbConnect.conn != null) {
            System.out.println("Kết nối CSDL thành công!");

            // Test thử truy vấn đơn giản
            try {
                String testQuery = "SELECT 1 AS test_value";
                ResultSet rs = dbConnect.getData(testQuery);

                if (rs.next()) {
                    System.out.println("Test query executed successfully. Result: " + rs.getInt("test_value"));
                } else {
                    System.out.println("Test query executed but no results returned.");
                }

                // Đóng kết nối sau khi test
                dbConnect.conn.close();
                System.out.println("Đã đóng kết nối CSDL.");
            } catch (SQLException ex) {
                System.err.println("Lỗi khi thực hiện test query:");
                ex.printStackTrace();
            }
        } else {
            System.err.println("Kết nối CSDL thất bại!");
        }
    }
}
