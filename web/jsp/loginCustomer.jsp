<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập/Đăng ký</title>

        <style>
            /* Additional styles for login page */
            .login-section {
                margin: 3rem 0;
            }

            .login-box {
                background-color: white;
                border-radius: 10px;
                padding: 2rem;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                height: 100%;
                transition: transform 0.3s, box-shadow 0.3s;
            }

            .login-box:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 20px rgba(0,0,0,0.15);
            }

            .login-box h2 {
                color: var(--secondary);
                margin-bottom: 1.5rem;
                position: relative;
                padding-bottom: 0.5rem;
            }

            .login-box h2::after {
                content: '';
                position: absolute;
                left: 0;
                bottom: 0;
                width: 50px;
                height: 2px;
                background-color: var(--primary);
            }

            .btn-custom {
                background-color: var(--primary);
                color: white;
                border: none;
                padding: 0.6rem 1.5rem;
                border-radius: 5px;
                transition: background-color 0.3s;
            }

            .btn-custom:hover {
                background-color: #2980b9;
                color: white;
            }

            .form-group {
                margin-bottom: 1.2rem;
            }

            .form-control {
                border: 1px solid #ddd;
                border-radius: 5px;
                padding: 0.6rem 1rem;
                transition: border-color 0.3s;
            }

            .form-control:focus {
                border-color: var(--primary);
                box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
            }

            label {
                font-weight: 500;
                margin-bottom: 0.5rem;
                display: block;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container login-section">
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="login-box">
                        <h2>KHÁCH HÀNG MỚI</h2>
                        <p><b>Đăng ký tài khoản</b></p>
                        <p>Bằng cách tạo tài khoản, bạn sẽ có thể mua sắm nhanh hơn, cập nhật trạng thái đơn hàng và 
                            theo dõi các đơn hàng bạn đã thực hiện trước đó.</p>
                        <br>
                        <a href="LoginURL?service=registerCustomer" class="btn btn-custom">Đăng ký</a>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="login-box">
                        <h2>Phản hồi khách hàng</h2>
                        <p><b>Tôi là một khách hàng cũ</b></p>
                        <%-- Hiển thị thông báo lỗi nếu có --%>
                        <c:if test="${not empty message}">
                            <div class="alert alert-danger" role="alert">
                                <i class="fas fa-exclamation-circle"></i> ${message}
                            </div>
                        </c:if>
                        <form action="LoginURL" method="post">
                            <input type="hidden" name="service" value="loginCustomer">

                            <div class="form-group">
                                <label for="username">Tài khoản</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Mật khẩu</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <div class="form-group">
                                <label for="userType">Loại tài khoản</label>
                                <select class="form-control" id="userType" name="userType">
                                    <option value="customer">Khách hàng</option>
                                    <option value="employee">Nhân viên</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" value="Đăng nhập" class="btn btn-custom">
                                <input type="reset" value="Xóa" class="btn btn-secondary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>