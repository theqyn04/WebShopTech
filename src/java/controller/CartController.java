package controller;

import model.cart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Enumeration;
import java.util.List;
import dao.PhoneDAO;
import java.util.ArrayList;

@WebServlet(name = "CartController", urlPatterns = {"/CartURL"})
public class CartController extends HttpServlet {

    // Phương thức helper để cập nhật số lượng sản phẩm trong giỏ hàng
    private void updateCartCount(HttpSession session) {
        int cartCount = 0;
        Enumeration<String> keys = session.getAttributeNames();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement();
            if (key.startsWith("cart_")) {
                cartCount++;
            }
        }
        session.setAttribute("cartCount", cartCount);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        PhoneDAO dao = new PhoneDAO();
        String service = request.getParameter("service");
        try (PrintWriter out = response.getWriter()) {
            if (service == null) {
                service = "showCart";
            }

            if (service.equals("showCart")) {
                List<cart> cartList = new ArrayList<>();
                double totalAmount = 0;
                Enumeration<String> keys = session.getAttributeNames();
                while (keys.hasMoreElements()) {
                    String key = keys.nextElement();
                    if (key.startsWith("cart_")) {
                        cart cartItem = (cart) session.getAttribute(key);
                        cartList.add(cartItem);
                        totalAmount += cartItem.getQuantity() * cartItem.getPrice();
                    }
                }
                request.setAttribute("listCart", cartList);
                request.setAttribute("totalAmount", totalAmount);
                updateCartCount(session); // Cập nhật số lượng sản phẩm
                request.getRequestDispatcher("jsp/showCart.jsp").forward(request, response);
            }

            if (service.equals("add2cart")) {
                int pid = Integer.parseInt(request.getParameter("pid"));
                cart cart = (cart) session.getAttribute("cart_" + pid);
                if (cart == null) {
                    List<cart> list = dao.getPhoneCart("select * from phone where phone_id=" + pid);
                    if (!list.isEmpty()) {
                        cart = list.get(0);
                        cart.setQuantity(1);
                        session.setAttribute("cart_" + pid, cart);
                    }
                } else {
                    cart.setQuantity(cart.getQuantity() + 1);
                }
                updateCartCount(session); // Cập nhật số lượng sản phẩm
                response.sendRedirect("HomeURL");
            }

            if (service.equals("removePhone")) {
                int pid = Integer.parseInt(request.getParameter("pid"));
                session.removeAttribute("cart_" + pid);
                updateCartCount(session); // Cập nhật số lượng sản phẩm
                response.sendRedirect("CartURL?service=showCart");
            }

            if (service.equals("removeAll")) {
                Enumeration<String> keys = session.getAttributeNames();
                while (keys.hasMoreElements()) {
                    String key = keys.nextElement();
                    if (key.startsWith("cart_")) {
                        session.removeAttribute(key);
                    }
                }
                session.removeAttribute("cartCount"); // Xóa số lượng sản phẩm
                response.sendRedirect("CartURL?service=showCart");
            }

            if (service.equals("updateQuantity")) {
                int pid = Integer.parseInt(request.getParameter("pid"));
                String action = request.getParameter("action");
                cart cartItem = (cart) session.getAttribute("cart_" + pid);

                if (cartItem != null) {
                    int currentQuantity = cartItem.getQuantity();

                    if ("increase".equals(action)) {
                        cartItem.setQuantity(currentQuantity + 1);
                    } else if ("decrease".equals(action) && currentQuantity > 1) {
                        cartItem.setQuantity(currentQuantity - 1);
                    } else if (request.getParameter("quantity") != null) {
                        int newQuantity = Integer.parseInt(request.getParameter("quantity"));
                        if (newQuantity >= 1) {
                            cartItem.setQuantity(newQuantity);
                        }
                    }

                    session.setAttribute("cart_" + pid, cartItem);
                }
                updateCartCount(session); // Cập nhật số lượng sản phẩm
                response.sendRedirect("CartURL?service=showCart");
            }

            if (service.equals("checkout")) {
                if (session.getAttribute("userId") == null) {
                    request.getRequestDispatcher("jsp/needToLogin.jsp").forward(request, response);
                    return;
                }

                Enumeration<String> keyList = session.getAttributeNames();
                List<cart> list = new ArrayList<cart>();
                while (keyList.hasMoreElements()) {
                    String key = keyList.nextElement();
                    if (key.startsWith("cart_")) {
                        cart cart = (cart) session.getAttribute(key);
                        list.add(cart);
                    }
                }

                int customerId = (int) session.getAttribute("userId");
                dao.createOrder(customerId, list);

                // Xóa giỏ hàng sau khi thanh toán
                Enumeration<String> keys = session.getAttributeNames();
                while (keys.hasMoreElements()) {
                    String key = keys.nextElement();
                    if (key.startsWith("cart_")) {
                        session.removeAttribute(key);
                    }
                }
                session.removeAttribute("cartCount"); // Xóa số lượng sản phẩm

                request.getRequestDispatcher("jsp/thankYou.jsp").forward(request, response);
            }
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
        return "Short description";
    }
}
