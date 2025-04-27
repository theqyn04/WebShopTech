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
            /* Các style hiện tại giữ nguyên */

            /* Thêm style cho phân trang */
            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 2rem;
            }

            .page-item {
                margin: 0 0.3rem;
            }

            .page-link {
                color: var(--primary);
                border: 1px solid #dee2e6;
                padding: 0.5rem 0.9rem;
                border-radius: 5px;
                transition: all 0.3s;
            }

            .page-link:hover {
                background-color: var(--primary);
                color: white;
                border-color: var(--primary);
            }

            .page-item.active .page-link {
                background-color: var(--primary);
                border-color: var(--primary);
                color: white;
            }

            .page-item.disabled .page-link {
                color: #6c757d;
                pointer-events: none;
                background-color: #fff;
                border-color: #dee2e6;
            }
            .products-container {
                padding: 2rem 0;
                max-width: 1200px; /* Giới hạn độ rộng tối đa */
                margin: 0 auto; /* Căn giữa */
            }

            .products-grid {
                display: grid;
                grid-template-columns: repeat(4, 1fr); /* 4 cột bằng nhau */
                gap: 1.5rem; /* Khoảng cách giữa các sản phẩm */
                padding: 0 1rem; /* Thêm padding hai bên */
            }

            .product-card {
                background-color: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                transition: transform 0.3s, box-shadow 0.3s;
                display: flex;
                flex-direction: column;
                height: 100%; /* Đảm bảo tất cả card cùng chiều cao */
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
                margin-top: auto; /* Đẩy nút xuống dưới cùng */
            }

            /* Responsive cho các kích thước màn hình nhỏ hơn */
            @media (max-width: 1024px) {
                .products-grid {
                    grid-template-columns: repeat(3, 1fr); /* 3 cột trên tablet */
                }
            }

            @media (max-width: 768px) {
                .products-grid {
                    grid-template-columns: repeat(2, 1fr); /* 2 cột trên mobile */
                }
            }

            @media (max-width: 480px) {
                .products-grid {
                    grid-template-columns: 1fr; /* 1 cột trên mobile nhỏ */
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
                int totalProducts = (int)request.getAttribute("totalProducts");
                int currentPage = (int)request.getAttribute("currentPage");
                int recordsPerPage = (int)request.getAttribute("recordsPerPage");
                int totalPages = (int) Math.ceil((double) totalProducts / recordsPerPage);
                
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

            <!-- Phân trang -->
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <% if (currentPage > 1) { %>
                    <li class="page-item">
                        <a class="page-link" 
                           href="CategoryURL?service=${service}<%= request.getParameter("id") != null ? "&id=" + request.getParameter("id") : "" %>&page=<%=currentPage-1%>" 
                           aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <% } else { %>
                    <li class="page-item disabled">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <% } %>

                    <% for (int i = 1; i <= totalPages; i++) { %>
                    <% if (i == currentPage) { %>
                    <li class="page-item active">
                        <a class="page-link" href="#"><%=i%></a>
                    </li>
                    <% } else { %>
                    <li class="page-item">
                        <a class="page-link" 
                           href="CategoryURL?service=${service}<%= request.getParameter("id") != null ? "&id=" + request.getParameter("id") : "" %>&page=<%=i%>">
                            <%=i%>
                        </a>
                    </li>
                    <% } %>
                    <% } %>

                    <% if (currentPage < totalPages) { %>
                    <li class="page-item">
                        <a class="page-link" 
                           href="CategoryURL?service=${service}<%= request.getParameter("id") != null ? "&id=" + request.getParameter("id") : "" %>&page=<%=currentPage+1%>" 
                           aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    <% } else { %>
                    <li class="page-item disabled">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    <% } %>
                </ul>
            </nav>

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