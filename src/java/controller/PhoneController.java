package controller;

import dao.PhoneDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.phone;

@WebServlet(name="PhoneController", urlPatterns={"/PhoneURL"})
public class PhoneController extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PhoneDAO dao = new PhoneDAO();
        try (PrintWriter out = response.getWriter()) {

            String service = request.getParameter("service");
            if (service == null) {
                service = "listPhone";
            }
            if(service.equals("deletePhone")){
                int pid=Integer.parseInt(request.getParameter("pid"));
                int n=dao.remove(pid);
                String deleteMessage;
                if(n==0){
                    deleteMessage="Xóa thất bại";
                }else{
                    deleteMessage="Xóa thành công";
                }
                
                response.sendRedirect("PhoneURL");
            }
            if (service.equals("updatePhone")) {
                String submit = request.getParameter("submit");
                if (submit == null) {// display form
                    int pid=Integer.parseInt(request.getParameter("pid"));
                    List<phone> list = dao.getPhone("select * from phone where phone_id="+pid);
                    request.setAttribute("list", list);                    
                    request.getRequestDispatcher("/jsp/CURD/updatePhone.jsp")
                            .forward(request, response);
                } else { //insert
                    int phone_id = Integer.parseInt(request.getParameter("phone_id"));
                    String phone_name = request.getParameter("phone_name");
                    int phone_type_id = Integer.parseInt(request.getParameter("phone_type_id"));
                    double price = Double.parseDouble(request.getParameter("price"));
                    int stock_quantity = Integer.parseInt(request.getParameter("stock_quantity"));
                    String description = request.getParameter("description");
                    String imageURL = request.getParameter("imageURL");
                    phone pho = new phone(phone_id, phone_name, phone_type_id, price, stock_quantity, description, imageURL);
                    dao.update(pho);
                            
                    response.sendRedirect("PhoneURL");
                }
            }
            if (service.equals("insertPhone")) {
                String submit = request.getParameter("submit");
                if (submit == null) {// display form
                    
                    request.getRequestDispatcher("/jsp/CURD/insertPhone.jsp")
                            .forward(request, response);
                } else { //insert
                    String phone_name = request.getParameter("phone_name");
                    int phone_type_id = Integer.parseInt(request.getParameter("phone_type_id"));
                    double price = Double.parseDouble(request.getParameter("price"));
                    int stock_quantity = Integer.parseInt(request.getParameter("stock_quantity"));
                    String description = request.getParameter("description");
                    String imageURL = request.getParameter("imageURL");
                    phone pho = new phone(phone_name, phone_type_id, price, stock_quantity, description, imageURL);
                    dao.add(pho);
                            
                    response.sendRedirect("PhoneURL");
                }
            }
            if (service.equals("listPhone")) {
                //call model: get data
                List<phone> list;
                String submit = request.getParameter("submit");
                if (submit == null) {  //listAll
                    list = dao.getPhone("select * from phone");
                } else { //search
                    String pname = request.getParameter("pname");
                    list = dao.getPhone("select * from phone where phone_name like '%"+pname+"%'");
                }
                                
                request.setAttribute("titleTable", "Phone List");
                // select view (jsp)
                request.setAttribute("phoneData", list);
                // select view (jsp)
                RequestDispatcher dispath
                        = request.getRequestDispatcher("/jsp/CURD/listPhone.jsp");
                //run (view)
                dispath.forward(request, response);

            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
