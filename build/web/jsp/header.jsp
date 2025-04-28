<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link href="css/headerStyle.css" rel="stylesheet">
    </head>
    <body>
        <!-- Header -->
        <header>
            <div class="logo">
                <i class="fas fa-laptop-code"></i>
                <span>TechStore</span>
            </div>
            <nav>
                <ul>
                    <li><a href="HomeURL?service=home">Trang chủ</a></li>
                    <li><a href="CategoryURL?service=listAllPhone">Sản phẩm</a></li>
                    <li class="dropdown">
                        <a href="CategoryURL?service=listAllPhone">Danh mục <i class="fas fa-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="CategoryURL?service=listPhone&id=1">iPhone</a></li>
                            <li><a href="CategoryURL?service=listPhone&id=2">Samsung</a></li>
                            <li><a href="CategoryURL?service=listPhone&id=3">Xiaomi</a></li>
                            <li><a href="CategoryURL?service=listPhone&id=4">OPPO</a></li>
                            <li><a href="CategoryURL?service=listPhone&id=5">Sony</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="CartURL?service=showCart" class="cart-icon">
                            <i class="fas fa-shopping-cart"></i>
                            <c:if test="${not empty sessionScope.cartCount}">
                                <span class="cart-count">${sessionScope.cartCount}</span>
                            </c:if>
                            <c:if test="${empty sessionScope.cartCount}">
                                <span class="cart-count">0</span>
                            </c:if>
                        </a>
                    </li>
                    <c:if test="${empty sessionScope.userName}">
                        <li><a href="LoginURL?service=loginCustomer">Đăng nhập</a></li>
                        <li><a href="LoginURL?service=registerCustomer">Đăng kí</a></li>
                        </c:if>
                        <c:if test="${not empty sessionScope.userName}">
                        <li><a href="AccountURL?service=viewAccount&id=${sessionScope.userId}">Tài khoản của tôi</a></li>
                        <li><a href="LogoutURL">Đăng xuất</a></li>
                        </c:if>
                </ul>
            </nav>
        </header>

        <!-- Hero Section -->
        <section class="hero">
            <h1>Công nghệ mới nhất năm 2025</h1>
            <p>Khám phá các sản phẩm công nghệ hàng đầu với mức giá tốt nhất thị trường. Chúng tôi cam kết chất lượng và dịch vụ hoàn hảo.</p>
            <a href="CategoryURL?service=listAllPhone" class="btn">Mua ngay</a>
        </section>
    </body>
</html>