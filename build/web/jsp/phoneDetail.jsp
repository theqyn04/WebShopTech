<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.phone,java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết sản phẩm - TechStore</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            .product-detail-container {
                background-color: white;
                border-radius: 10px;
                padding: 2rem;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                margin-bottom: 3rem;
            }

            .product-image {
                border-radius: 10px;
                overflow: hidden;
                margin-bottom: 1.5rem;
            }

            .product-image img {
                width: 100%;
                height: auto;
                object-fit: cover;
                transition: transform 0.5s;
            }

            .product-image:hover img {
                transform: scale(1.05);
            }

            .product-info h1 {
                color: var(--secondary);
                margin-bottom: 1rem;
                position: relative;
                padding-bottom: 0.5rem;
            }

            .product-info h1::after {
                content: '';
                position: absolute;
                left: 0;
                bottom: 0;
                width: 80px;
                height: 2px;
                background-color: var(--primary);
            }

            .product-price {
                font-size: 1.8rem;
                font-weight: bold;
                color: var(--primary);
                margin: 1.5rem 0;
            }

            .product-description {
                line-height: 1.6;
                margin-bottom: 2rem;
                color: var(--dark);
            }

            .spec-section, .promotion-section, .shipping-section {
                margin-bottom: 2rem;
                padding: 1.5rem;
                background-color: #f8f9fa;
                border-radius: 8px;
            }

            .spec-section h2, .promotion-section h2, .shipping-section h2 {
                color: var(--secondary);
                margin-bottom: 1rem;
                font-size: 1.3rem;
            }

            .spec-list {
                list-style-type: none;
                padding: 0;
            }

            .spec-list li {
                margin-bottom: 0.8rem;
                display: flex;
            }

            .spec-list li::before {
                content: "•";
                color: var(--primary);
                font-weight: bold;
                margin-right: 10px;
            }

            .add-to-cart-btn {
                background-color: var(--primary);
                color: white;
                padding: 0.8rem 1.5rem;
                border-radius: 5px;
                border: none;
                font-weight: bold;
                transition: background-color 0.3s;
                display: inline-block;
                margin-top: 1rem;
            }

            .add-to-cart-btn:hover {
                background-color: #2980b9;
                color: white;
                text-decoration: none;
            }

            .related-products {
                margin-top: 3rem;
            }

            .related-products h2 {
                color: var(--secondary);
                margin-bottom: 1.5rem;
                position: relative;
                padding-bottom: 0.5rem;
            }

            .related-products h2::after {
                content: '';
                position: absolute;
                left: 0;
                bottom: 0;
                width: 80px;
                height: 2px;
                background-color: var(--primary);
            }

            .product-card {
                background-color: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                transition: transform 0.3s;
                height: 100%;
                display: flex;
                flex-direction: column;
            }

            .product-card:hover {
                transform: translateY(-5px);
            }

            .product-card-img {
                height: 200px;
                overflow: hidden;
            }

            .product-card-img img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.5s;
            }

            .product-card:hover .product-card-img img {
                transform: scale(1.1);
            }

            .product-card-body {
                padding: 1.5rem;
                flex-grow: 1;
                display: flex;
                flex-direction: column;
            }

            .product-card-title {
                font-size: 1.1rem;
                margin-bottom: 0.5rem;
                color: var(--secondary);
            }

            .product-card-price {
                font-weight: bold;
                color: var(--primary);
                margin-bottom: 1rem;
            }

            .product-card-btn {
                margin-top: auto;
                width: 100%;
            }

            .note-text {
                font-style: italic;
                color: #6c757d;
                margin-top: 2rem;
                padding: 1rem;
                background-color: #f8f9fa;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <%
                phone phone = (phone) request.getAttribute("phone");
                if (phone != null) {
            %>
            <div class="product-detail-container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="product-image">
                            <img src="<%=phone.getImageURL()%>" alt="<%=phone.getPhone_name()%>" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-md-6 product-info">
                        <h1><%=phone.getPhone_name()%></h1>
                        <p class="product-price"><%=String.format("%,d", (int)phone.getPrice())%> VNĐ</p>
                        <p class="product-description"><%=phone.getDescription()%></p>

                        <!-- Thông số kỹ thuật -->
                        <div class="spec-section">
                            <h2>Thông số kỹ thuật</h2>
                            <ul class="spec-list">
                                <li>Màn hình: 6.7 inch Super Retina XDR</li>
                                <li>Chip: A15 Bionic</li>
                                <li>RAM: 6GB</li>
                                <li>Bộ nhớ: 128GB</li>
                                <li>Camera sau: 12MP + 12MP + 12MP</li>
                                <li>Camera trước: 12MP</li>
                                <li>Pin: 4352mAh</li>
                                <li>Hệ điều hành: iOS 15</li>
                            </ul>
                        </div>

                        <!-- Khuyến mãi -->
                        <div class="promotion-section">
                            <h2>Khuyến mãi đặc biệt</h2>
                            <ul class="spec-list">
                                <li>Giảm ngay 500,000đ khi mua online</li>
                                <li>Tặng voucher 200,000đ cho lần mua tiếp theo</li>
                                <li>Bảo hành 24 tháng chính hãng</li>
                                <li>Miễn phí giao hàng toàn quốc</li>
                            </ul>
                        </div>

                        <!-- Vận chuyển -->
                        <div class="shipping-section">
                            <h2>Chính sách vận chuyển</h2>
                            <ul class="spec-list">
                                <li>Miễn phí giao hàng nội thành Hà Nội, TP.HCM</li>
                                <li>Giao hàng toàn quốc trong 1-3 ngày</li>
                                <li>Kiểm tra sản phẩm trước khi thanh toán</li>
                                <li>Đổi trả trong 7 ngày nếu có lỗi từ NSX</li>
                            </ul>
                        </div>

                        <a href="CartURL?service=add2cart&pid=<%=phone.getPhone_id()%>" class="add-to-cart-btn">
                            <i class="fas fa-cart-plus"></i> Thêm vào giỏ hàng
                        </a>
                    </div>
                </div>
            </div>
            <% } else { %>
            <div class="alert alert-danger">
                <p>Sản phẩm không tồn tại hoặc đã ngừng kinh doanh.</p>
            </div>
            <% } %>

            <div class="note-text">
                <p><strong>Lưu ý:</strong> Hình ảnh sản phẩm có thể thay đổi theo từng thời điểm. Thông số kỹ thuật có thể được cập nhật mà không báo trước theo chính sách của nhà sản xuất.</p>
            </div>

            <div class="related-products">
                <h2>Sản phẩm liên quan</h2>
                <div class="row">
                    <%
                        List<phone> listRelevant = (List<phone>) request.getAttribute("listRelevant");
                        if (listRelevant != null) {
                            for (phone relevantPhone : listRelevant) {
                    %>
                    <div class="col-md-3 col-sm-6 mb-4">
                        <div class="product-card">
                            <div class="product-card-img">
                                <a href="PhoneDetailURL?pid=<%=relevantPhone.getPhone_id()%>">
                                    <img src="<%=relevantPhone.getImageURL()%>" alt="<%=relevantPhone.getPhone_name()%>">
                                </a>
                            </div>
                            <div class="product-card-body">
                                <h3 class="product-card-title"><%=relevantPhone.getPhone_name()%></h3>
                                <p class="product-card-price"><%=String.format("%,d", (int)relevantPhone.getPrice())%> VNĐ</p>
                                <a href="CartURL?service=add2cart&pid=<%=relevantPhone.getPhone_id()%>" class="btn btn-primary product-card-btn">
                                    <i class="fas fa-shopping-cart"></i> Thêm vào giỏ
                                </a>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- Font Awesome -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    </body>
</html>