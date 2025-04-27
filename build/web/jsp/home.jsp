<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.phone,java.util.List" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/headerStyle.css" rel="stylesheet">
    </head>
    <body>

        <%@include file="header.jsp" %>


        <% // get data from servlet
            List<phone> listBestOrder = (List<phone>)request.getAttribute("bestOrder");
        %>

        <h2 class="section-title">Sản phẩm nổi bật</h2>
        <div class="products">
            <% for (phone phone : listBestOrder) { %>
            <div class="product-card">
                <div class="product-img">
                    <a href="PhoneDetailURL?pid=<%=phone.getPhone_id()%>">
                        <img src="<%=phone.getImageURL()%>" alt="<%=phone.getPhone_name()%>" class="img-fluid">
                    </a>
                </div>
                <div class="product-info">
                    <h3 class="product-title"><%=phone.getPhone_name()%></h3>
                    <p class="product-category">Máy tính xách tay</p>
                    <p class="product-price"><%=phone.getPrice()%>VND</p>
                    <div class="product-actions">
                        <a href="CartURL?service=add2cart&pid=<%=phone.getPhone_id()%>" class="add-to-cart btn btn-primary btn-block mt-auto">Thêm vào giỏ</a>
                        <a href="PhoneDetailURL?pid=<%=phone.getPhone_id()%>" class=" view-details btn btn-primary btn-block mt-auto">Xem chi tiết</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

        <% // get data from servlet
            List<phone> newPhone = (List<phone>)request.getAttribute("newPhone");
        %>
        <h2 class="section-title">Sản phẩm mới</h2>
        <div class="products">
            <% for (phone phone : newPhone) { %>
            <div class="product-card">
                <div class="product-img">
                    <a href="PhoneDetailURL?pid=<%=phone.getPhone_id()%>">
                        <img src="<%=phone.getImageURL()%>" alt="<%=phone.getPhone_name()%>" class="img-fluid">
                    </a>
                </div>
                <div class="product-info">
                    <h3 class="product-title"><%=phone.getPhone_name()%></h3>
                    <p class="product-category">Máy tính xách tay</p>
                    <p class="product-price"><%=phone.getPrice()%>VND</p>
                    <div class="product-actions">
                        <a href="CartURL?service=add2cart&pid=<%=phone.getPhone_id()%>" class="add-to-cart btn btn-primary btn-block mt-auto">Thêm vào giỏ</a>
                        <a href="PhoneDetailURL?pid=<%=phone.getPhone_id()%>" class=" view-details btn btn-primary btn-block mt-auto">Xem chi tiết</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

        <% // get data from servlet
            List<phone> listIPhone = (List<phone>)request.getAttribute("listIPhone");
        %>
        <h2 class="section-title">Iphone</h2>
        <div class="products">
            <% for (phone phone : listIPhone) { %>
            <div class="product-card">
                <div class="product-img">
                    <a href="PhoneDetailURL?pid=<%=phone.getPhone_id()%>">
                        <img src="<%=phone.getImageURL()%>" alt="<%=phone.getPhone_name()%>" class="img-fluid">
                    </a>
                </div>
                <div class="product-info">
                    <h3 class="product-title"><%=phone.getPhone_name()%></h3>
                    <p class="product-category">Máy tính xách tay</p>
                    <p class="product-price"><%=phone.getPrice()%>VND</p>
                    <div class="product-actions">
                        <a href="CartURL?service=add2cart&pid=<%=phone.getPhone_id()%>" class="add-to-cart btn btn-primary btn-block mt-auto">Thêm vào giỏ</a>
                        <a href="PhoneDetailURL?pid=<%=phone.getPhone_id()%>" class=" view-details btn btn-primary btn-block mt-auto">Xem chi tiết</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>       

        <%@include file="footer.jsp" %>
    </body>
</html>