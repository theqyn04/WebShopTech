package controller;

import model.phone;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import dao.PhoneDAO;

@WebServlet(name = "HomeController", urlPatterns = {"/HomeURL"})
public class HomeController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PhoneDAO dao = new PhoneDAO();
        try (PrintWriter out = response.getWriter()) {

            String service = request.getParameter("service");
            if (service == null) {
                service = "home";
            }
            if (service.equals("home")) {

                //chọn ra 8 sản phẩm bán chạy nhất
                List<phone> listBestOrder = dao.getPhone("SELECT TOP 8 *\n"
                        + "FROM phone\n"
                        + "ORDER BY stock_quantity DESC;");
                request.setAttribute("bestOrder", listBestOrder);

                //chọn ra sản phẩm mới theo id giảm dần
                List<phone> listNewPhone = dao.getPhone("SELECT TOP 8 *\n"
                        + "FROM phone\n"
                        + "ORDER BY phone_id DESC;");
                request.setAttribute("newPhone", listNewPhone);
                

                //chọn ra ngẫu nhiên 4 dòng với type_id = 1
                List<phone> listIPhone = dao.getPhone("SELECT TOP 4 *\n"
                        + "FROM phone\n"
                        + "WHERE phone_type_id = 1\n"
                        + "ORDER BY NEWID();");
                request.setAttribute("listIPhone", listIPhone);
                request.getRequestDispatcher("/jsp/home.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
