package controller;

import dao.PhoneDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.phone;

@WebServlet(name = "CategoryController", urlPatterns = {"/CategoryURL"})
public class CategoryController extends HttpServlet {

    private static final int DEFAULT_RECORDS_PER_PAGE = 8;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PhoneDAO dao = new PhoneDAO();

        try {
            String service = request.getParameter("service");
            if (service == null) {
                service = "listPhone";
            }

            // Xử lý phân trang
            int page = 1;
            int recordsPerPage = DEFAULT_RECORDS_PER_PAGE;

            if (request.getParameter("page") != null) {
                page = Integer.parseInt(request.getParameter("page"));
            }

            if (service.equals("listPhone")) {
                String id = request.getParameter("id");
                if (id == null || id.isEmpty()) {
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing category ID");
                    return;
                }

                int totalRecords = dao.getTotalPhonesByType(Integer.parseInt(id));
                int offset = (page - 1) * recordsPerPage;
                List<phone> list = dao.getPhonesByTypeAndPage(Integer.parseInt(id), offset, recordsPerPage);
                int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

                request.setAttribute("phoneTypeData", list);
                request.setAttribute("totalProducts", totalRecords);
                request.setAttribute("currentPage", page);
                request.setAttribute("recordsPerPage", recordsPerPage);
                request.setAttribute("totalPages", totalPages);
                request.setAttribute("categoryId", id);
                request.setAttribute("service", service); // Thêm service vào request

                request.getRequestDispatcher("/jsp/phoneType.jsp").forward(request, response);
            } else if (service.equals("listAllPhone")) {
                int totalRecords = dao.getTotalPhones();
                int offset = (page - 1) * recordsPerPage;
                List<phone> list = dao.getAllPhonesByPage(offset, recordsPerPage);
                int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

                request.setAttribute("phoneTypeData", list);
                request.setAttribute("totalProducts", totalRecords);
                request.setAttribute("currentPage", page);
                request.setAttribute("recordsPerPage", recordsPerPage);
                request.setAttribute("totalPages", totalPages);
                request.setAttribute("service", service); // Thêm service vào request

                request.getRequestDispatcher("/jsp/phoneType.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred");
        }
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

    @Override
    public String getServletInfo() {
        return "Category Controller";
    }
}
