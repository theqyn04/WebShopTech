<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, model.cart" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng</title>
        <link rel="stylesheet" href="css/cartStyle.css"> <!-- Liên kết file CSS -->
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <h2 class="section-title">Giỏ hàng của bạn</h2>

            <%
            String message = request.getParameter("message");
            if (message != null) {
            %>
            <div class="error-message">
                <p>Hãy đăng nhập để mua hàng</p>
                <a href="LoginURL?service=loginCustomer" class="continue-shopping">Đăng nhập ngay</a>
            </div>
            <%
            }

            List<cart> list = (List<cart>) request.getAttribute("listCart");
            Double totalAmount = (Double) request.getAttribute("totalAmount");
            if (list != null && !list.isEmpty()) {
            %>
            <div class="cart-container">
                <!-- Cart Items -->
                <div class="cart-items">
                    <table class="cart-table">
                        <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (cart phone : list) { %>
                            <tr>
                                <td>
                                    <div style="display: flex; align-items: center; gap: 1rem;">
                                        <img src="<%=phone.getImageURL()%>" alt="<%=phone.getPhone_name()%>" class="cart-item-img">
                                        <span><%=phone.getPhone_name()%></span>
                                    </div>
                                </td>
                                <td><%=String.format("%,d", (int)phone.getPrice())%>₫</td>
                                <td>
                                    <div class="quantity-control">
                                        <form action="CartURL" method="post" style="display: flex;">
                                            <input type="hidden" name="service" value="updateQuantity">
                                            <input type="hidden" name="pid" value="<%=phone.getPhone_id()%>">
                                           
                                            <input type="number" name="quantity" value="<%=phone.getQuantity()%>" min="1" readonly>
                                        </form>
                                    </div>
                                </td>
                                <td><%=String.format("%,d", (int)(phone.getQuantity() * phone.getPrice()))%>₫</td>
                                <td>
                                    <a href="CartURL?service=removePhone&pid=<%=phone.getPhone_id()%>" class="remove-item">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>

                <!-- Cart Summary -->
                <div class="cart-summary">
                    <h3 class="summary-title">Tóm tắt đơn hàng</h3>
                    <div class="summary-row">
                        <span>Tổng cộng</span>
                        <span><%= totalAmount != null ? String.format("%,d", (int)totalAmount.doubleValue()) + "₫" : "0₫" %></span>
                    </div>
                    <div class="summary-row">
                        <span>Phí vận chuyển</span>
                        <span>Miễn phí</span>
                    </div>
                    <div class="total-row">
                        <span>Tổng tiền</span>
                        <span><%= totalAmount != null ? String.format("%,d", (int)totalAmount.doubleValue()) + "₫" : "0₫" %></span>
                    </div>

                    <form action="CartURL" method="post">
                        <input type="hidden" name="service" value="checkout">
                        <button type="submit" class="checkout-btn">Thanh toán</button>
                    </form>

                    <form action="CartURL" method="post" style="margin-top: 1rem;">
                        <input type="hidden" name="service" value="removeAll">
                        <button type="submit" class="btn btn-danger" style="width: 100%;">Xóa tất cả</button>
                    </form>

                    <a href="HomeURL?service=home" class="continue-shopping">Tiếp tục mua sắm</a>
                </div>
            </div>
            <%
            } else {
            %>
            <div class="empty-cart">
                <p>Giỏ hàng của bạn đang trống.</p>
                <a href="HomeURL?service=home" class="continue-shopping">Tiếp tục mua sắm</a>
            </div>
            <% } %>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>