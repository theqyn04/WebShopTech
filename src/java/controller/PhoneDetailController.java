package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import dao.PhoneDAO;
import java.util.List;
import model.phone;

@WebServlet(name = "PhoneDetailController", urlPatterns = {"/PhoneDetailURL"})
public class PhoneDetailController extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PhoneDAO dao = new PhoneDAO();
        int pid = Integer.parseInt(request.getParameter("pid")); // Lấy phone_id từ request

        // Lấy thông tin sản phẩm từ cơ sở dữ liệu
        phone pho = dao.getPhoneById(pid);

        // Truyền thông tin sản phẩm đến trang JSP
        request.setAttribute("phone", pho);
        
        List<phone> listRelevant = dao.getPhone("SELECT TOP 4 *\n"
                + "FROM phone\n"
                + "WHERE phone_type_id = (select phone_type_id from phone where phone_id ="+pid+")\n"
                + "ORDER BY NEWID();");
        request.setAttribute("listRelevant", listRelevant);
        
        request.getRequestDispatcher("jsp/phoneDetail.jsp").forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
