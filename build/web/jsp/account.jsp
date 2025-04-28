<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin tài khoản</title>
        <style>
            /* Additional styles for account page */
            .account-info {
                display: grid;
                grid-template-columns: 1fr 2fr;
                gap: 2rem;
                margin: 3rem 0;
            }

            .personal-info, .order-history {
                background-color: white;
                border-radius: 10px;
                padding: 2rem;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            .personal-info h1, .order-history h1 {
                color: var(--secondary);
                margin-bottom: 1.5rem;
                position: relative;
                padding-bottom: 0.5rem;
            }

            .personal-info h1::after, .order-history h1::after {
                content: '';
                position: absolute;
                left: 0;
                bottom: 0;
                width: 50px;
                height: 2px;
                background-color: var(--primary);
            }

            .personal-info p {
                margin-bottom: 1rem;
                font-size: 1.1rem;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 1rem;
            }

            th, td {
                padding: 12px 15px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: var(--primary);
                color: white;
            }

            tr:hover {
                background-color: #f5f5f5;
            }

            .status-pending {
                color: #e67e22;
            }

            .status-completed {
                color: var(--success);
            }

            .status-cancelled {
                color: var(--danger);
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <div class="account-info">
                <div class="personal-info">
                    <c:if test="${not empty customer}">
                        <h1>Thông tin cá nhân</h1>
                        <p><strong>ID:</strong> ${customer.customer_id}</p>
                        <p><strong>Tên:</strong> ${customer.full_name}</p>
                        <p><strong>Địa chỉ:</strong> ${customer.address}</p>
                        <p><strong>Số điện thoại:</strong> ${customer.phone_number}</p>
                        <p><strong>Email:</strong> ${customer.email}</p>
                        <p><strong>Username:</strong> ${customer.username}</p>
                    </c:if>
                    <c:if test="${empty customer}">
                        <h1>Không tìm thấy thông tin khách hàng</h1>
                    </c:if>
                </div>
                <div class="order-history">
                    <h1>Lịch sử đơn hàng</h1>
                    <c:if test="${not empty historyOrd}">
                        <table>
                            <thead>
                                <tr>
                                    <th>Mã đơn hàng</th>
                                    <th>Ngày đặt hàng</th>
                                    <th>Tổng tiền</th>
                                    <th>Trạng thái</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="order" items="${historyOrd}">
                                    <tr>
                                        <td>${order.order_id}</td>
                                        <td>${order.order_date}</td>
                                        <td>${order.total_amount} VND</td>
                                        <td class="status-${order.status.toLowerCase()}">${order.status}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:if>
                    <c:if test="${empty historyOrd}">
                        <p>Không có đơn hàng nào.</p>
                    </c:if>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>