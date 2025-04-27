<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.phone,java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách sản phẩm - TechStore</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            .products-container {
                padding: 2rem 0;
            }

            .section-title {
                text-align: center;
                margin-bottom: 2rem;
                color: var(--secondary);
                position: relative;
                padding-bottom: 0.5rem;
            }

            .section-title::after {
                content: '';
                position: absolute;
                left: 50%;
                bottom: 0;
                width: 80px;
                height: 2px;
                background-color: var(--primary);
                transform: translateX(-50%);
            }

            .products-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
                gap: 2rem;
            }

            .product-card {
                background-color: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                transition: transform 0.3s, box-shadow 0.3s;
                display: flex;
                flex-direction: column;
            }

            .product-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 20px rgba(0,0,0,0.15);
            }

            .product-img {
                height: 220px;
                overflow: hidden;
            }

            .product-img img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.5s;
            }

            .product-card:hover .product-img img {
                transform: scale(1.1);
            }

            .product-info {
                padding: 1.5rem;
                flex-grow: 1;
                display: flex;
                flex-direction: column;
            }

            .product-title {
                font-size: 1.2rem;
                margin-bottom: 0.5rem;
                color: var(--dark);
                min-height: 3rem;
            }

            .product-price {
                font-weight: bold;
                font-size: 1.3rem;
                color: var(--primary);
                margin-bottom: 1rem;
            }

            .product-actions {
                display: flex;
                gap: 0.8rem;
                margin-top: auto;
            }

            .add-to-cart {
                background-color: var(--primary);
                color: white;
                border: none;
                padding: 0.6rem 1rem;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
                text-align: center;
                text-decoration: none;
                font-size: 0.9rem;
                flex: 1;
            }

            .add-to-cart:hover {
                background-color: #2980b9;
            }

            .view-details {
                background-color: transparent;
                color: var(--primary);
                border: 1px solid var(--primary);
                padding: 0.6rem 1rem;
                border-radius: 5px;
                cursor: pointer;
                transition: all 0.3s;
                text-align: center;
                text-decoration: none;
                font-size: 0.9rem;
                flex: 1;
            }

            .view-details:hover {
                background-color: var(--primary);
                color: white;
            }

            .filter-section {
                margin-bottom: 2rem;
                background-color: white;
                padding: 1.5rem;
                border-radius: 10px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            @media (max-width: 768px) {
                .products-grid {
                    grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
                }

                .product-actions {
                    flex-direction: column;
                    gap: 0.5rem;
                }
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container products-container">
            <h2 class="section-title">Danh sách sản phẩm</h2>

            

            <% // get data from servlet
                List<phone> list = (List<phone>)request.getAttribute("phoneTypeData");            
                if (list != null && !list.isEmpty()) {
            %>
            <div class="products-grid">
                <% for (phone phone : list) { %>
                <div class="product-card">
                    <div class="product-img">
                        <a href="PhoneDetailURL?pid=<%=phone.getPhone_id()%>">
                            <img src="<%=phone.getImageURL()%>" alt="<%=phone.getPhone_name()%>">
                        </a>
                    </div>
                    <div class="product-info">
                        <h3 class="product-title"><%=phone.getPhone_name()%></h3>
                        <p class="product-price"><%=String.format("%,d", (int)phone.getPrice())%> VNĐ</p>
                        <div class="product-actions">
                            <a href="CartURL?service=add2cart&pid=<%=phone.getPhone_id()%>" class="add-to-cart">
                                <i class="fas fa-cart-plus"></i> Thêm giỏ hàng
                            </a>
                            <a href="PhoneDetailURL?pid=<%=phone.getPhone_id()%>" class="view-details">
                                <i class="fas fa-info-circle"></i> Chi tiết
                            </a>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
            <% } else { %>
            <div class="alert alert-info">
                <p>Không tìm thấy sản phẩm nào phù hợp.</p>
            </div>
            <% } %>
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