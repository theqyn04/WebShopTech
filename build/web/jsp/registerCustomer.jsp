<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký tài khoản - TechStore</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/homeStyle.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            .register-container {
                max-width: 600px;
                margin: 2rem auto;
                padding: 2rem;
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            .register-header {
                color: var(--secondary);
                text-align: center;
                margin-bottom: 1.5rem;
                position: relative;
                padding-bottom: 0.5rem;
            }

            .register-header::after {
                content: '';
                position: absolute;
                left: 50%;
                bottom: 0;
                width: 80px;
                height: 2px;
                background-color: var(--primary);
                transform: translateX(-50%);
            }

            .form-group {
                margin-bottom: 1.5rem;
            }

            .form-group label {
                display: block;
                margin-bottom: 0.5rem;
                font-weight: 500;
                color: var(--dark);
            }

            .form-group input {
                width: 100%;
                padding: 0.8rem 1rem;
                border: 1px solid #ddd;
                border-radius: 5px;
                font-size: 1rem;
                transition: border-color 0.3s;
            }

            .form-group input:focus {
                border-color: var(--primary);
                outline: none;
                box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
            }

            .form-actions {
                display: flex;
                gap: 1rem;
                margin-top: 2rem;
            }

            .form-actions input[type="submit"] {
                background-color: var(--primary);
                color: white;
                border: none;
                padding: 0.8rem 1.5rem;
                border-radius: 5px;
                font-weight: bold;
                cursor: pointer;
                transition: background-color 0.3s;
                flex: 1;
            }

            .form-actions input[type="submit"]:hover {
                background-color: #2980b9;
            }

            .form-actions input[type="reset"] {
                background-color: #f8f9fa;
                color: var(--dark);
                border: 1px solid #ddd;
                padding: 0.8rem 1.5rem;
                border-radius: 5px;
                cursor: pointer;
                transition: all 0.3s;
                flex: 1;
            }

            .form-actions input[type="reset"]:hover {
                background-color: #e9ecef;
            }

            .login-link {
                text-align: center;
                margin-top: 1.5rem;
                color: var(--dark);
            }

            .login-link a {
                color: var(--primary);
                font-weight: 500;
                text-decoration: none;
            }

            .login-link a:hover {
                text-decoration: underline;
            }

            .alert-danger {
                background-color: #f8d7da;
                color: #721c24;
                padding: 1rem;
                border-radius: 5px;
                margin-bottom: 1.5rem;
                border: 1px solid #f5c6cb;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <div class="register-container">
                <h1 class="register-header">Đăng ký tài khoản</h1>

                <c:if test="${not empty errorMessage}">
                    <div class="alert alert-danger" role="alert">
                        <i class="fas fa-exclamation-circle"></i> ${errorMessage}
                    </div>
                </c:if>

                <form action="LoginURL" method="post">
                    <input type="hidden" name="service" value="registerCustomer">

                    <div class="form-group">
                        <label for="full_name">Họ tên</label>
                        <input type="text" id="full_name" name="full_name" value="<%= request.getParameter("full_name") != null ? request.getParameter("full_name") : "" %>" required>
                    </div>

                    <div class="form-group">
                        <label for="address">Địa chỉ</label>
                        <input type="text" id="address" name="address" value="<%= request.getParameter("address") != null ? request.getParameter("address") : "" %>" required>
                    </div>

                    <div class="form-group">
                        <label for="phone_number">Điện thoại</label>
                        <input type="text" id="phone_number" name="phone_number" value="<%= request.getParameter("phone_number") != null ? request.getParameter("phone_number") : "" %>" required>
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail</label>
                        <input type="email" id="email" name="email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>" required>
                    </div>

                    <div class="form-group">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="username" name="username" value="<%= request.getParameter("username") != null ? request.getParameter("username") : "" %>" required>
                    </div>

                    <div class="form-group">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="password" name="password" required>
                    </div>

                    <div class="form-actions">
                        <input type="submit" name="submit" value="Đăng ký">
                        <input type="reset" value="Xóa">
                    </div>
                </form>

                <div class="login-link">
                    <p>Nếu bạn đã có tài khoản, <a href="LoginURL?service=loginCustomer">đăng nhập tại đây</a>.</p>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>

        <!-- Font Awesome for icons -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    </body>
</html>