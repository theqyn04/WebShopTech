<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.OrderDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard - TechStore</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/homeStyle.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            :root {
                --sidebar-bg: #2c3e50;
                --sidebar-hover: #34495e;
                --primary: #3498db;
                --secondary: #2c3e50;
                --light: #ecf0f1;
                --dark: #34495e;
                --success: #2ecc71;
                --danger: #e74c3c;
            }

            body {
                background-color: #f8f9fa;
            }

            .sidebar {
                height: 100vh;
                background-color: var(--sidebar-bg);
                color: white;
                position: fixed;
                width: 250px;
                transition: all 0.3s;
                z-index: 1000;
            }

            .sidebar-header {
                padding: 20px;
                background-color: rgba(0,0,0,0.1);
                text-align: center;
            }

            .sidebar-nav {
                padding: 0;
                list-style: none;
            }

            .sidebar-nav li {
                position: relative;
            }

            .sidebar-nav a {
                color: white;
                padding: 15px 20px;
                display: block;
                text-decoration: none;
                transition: all 0.3s;
                border-left: 4px solid transparent;
            }

            .sidebar-nav a:hover {
                background-color: var(--sidebar-hover);
                color: white;
                border-left: 4px solid var(--primary);
            }

            .sidebar-nav i {
                margin-right: 10px;
                width: 20px;
                text-align: center;
            }

            .main-content {
                margin-left: 250px;
                padding: 20px;
                transition: all 0.3s;
            }

            .dashboard-card {
                border: none;
                border-radius: 10px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                transition: transform 0.3s;
                margin-bottom: 20px;
                border-left: 4px solid var(--primary);
            }

            .dashboard-card:hover {
                transform: translateY(-5px);
            }

            .card-title {
                font-size: 1rem;
                color: #6c757d;
                margin-bottom: 10px;
            }

            .card-value {
                font-size: 1.8rem;
                font-weight: bold;
                color: var(--secondary);
            }

            .card-revenue {
                border-left-color: var(--success);
            }

            .card-orders {
                border-left-color: var(--primary);
            }

            .card-new {
                border-left-color: var(--danger);
            }

            .welcome-section {
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                margin-bottom: 30px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            /* Style for management section */
            .management-section {
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                margin-top: 30px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            .management-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
                padding-bottom: 15px;
                border-bottom: 1px solid #eee;
            }

            .search-form {
                margin-bottom: 20px;
            }

            .table-responsive {
                overflow-x: auto;
            }

            .table {
                width: 100%;
                border-collapse: collapse;
            }

            .table th {
                background-color: var(--primary);
                color: white;
                padding: 12px;
                text-align: left;
            }

            .table td {
                padding: 12px;
                border-bottom: 1px solid #ddd;
            }

            .table tr:hover {
                background-color: #f5f5f5;
            }

            .action-link {
                color: var(--primary);
                margin-right: 10px;
            }

            .action-link.delete {
                color: var(--danger);
            }

            .loading-spinner {
                display: none;
                text-align: center;
                padding: 30px;
            }

            .loading-spinner i {
                font-size: 2rem;
                color: var(--primary);
            }

            @media (max-width: 768px) {
                .sidebar {
                    width: 80px;
                    overflow: hidden;
                }

                .sidebar-header h3, .sidebar-nav span {
                    display: none;
                }

                .sidebar-nav i {
                    margin-right: 0;
                    font-size: 1.2rem;
                }

                .sidebar-nav a {
                    text-align: center;
                    padding: 15px 5px;
                }

                .main-content {
                    margin-left: 80px;
                }
            }
        </style>
    </head>
    <body>
        <div class="d-flex">
            <!-- Sidebar -->
            <div class="sidebar">
                <div class="sidebar-header">
                    <h3>TechStore Admin</h3>
                </div>
                <ul class="sidebar-nav">
                    <li>
                        <a href="#" class="active" id="dashboard-link">
                            <i class="fas fa-tachometer-alt"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="order-link">
                            <i class="fas fa-shopping-cart"></i>
                            <span>Quản lý đơn hàng</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="product-link">
                            <i class="fas fa-mobile-alt"></i>
                            <span>Quản lý sản phẩm</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="customer-link">
                            <i class="fas fa-users"></i>
                            <span>Quản lý khách hàng</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="store-link">
                            <i class="fas fa-store"></i>
                            <span>Quản lý cửa hàng</span>
                        </a>
                    </li>
                    <li>
                        <a href="LogoutURL">
                            <i class="fas fa-sign-out-alt"></i>
                            <span>Đăng xuất</span>
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Main content -->
            <div class="main-content">
                <div class="welcome-section">
                    <h1>Chào mừng, ${userName}!</h1>
                    <p class="lead">Bạn đang đăng nhập với vai trò quản trị viên</p>
                </div>

                <!-- Thống kê nhanh -->
                <%
                    OrderDAO orderDAO = new OrderDAO();                
                    int totalOrders = orderDAO.getTotalOrders();
                    int newOrders = orderDAO.getNewOrdersLast7Days();
                    double totalRevenue = orderDAO.getRevenueLast7Days();
                %>

                <div class="row">
                    <div class="col-md-4">
                        <div class="card dashboard-card card-orders">
                            <div class="card-body">
                                <h5 class="card-title">Tổng đơn hàng</h5>
                                <p class="card-value"><%= totalOrders %></p>
                                <p class="text-muted"><i class="fas fa-calendar-alt"></i> Toàn thời gian</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card dashboard-card card-new">
                            <div class="card-body">
                                <h5 class="card-title">Đơn hàng mới</h5>
                                <p class="card-value"><%= newOrders %></p>
                                <p class="text-muted"><i class="fas fa-clock"></i> 7 ngày gần đây</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card dashboard-card card-revenue">
                            <div class="card-body">
                                <h5 class="card-title">Doanh thu</h5>
                                <p class="card-value"><%= String.format("%,.0f", totalRevenue) %> VNĐ</p>
                                <p class="text-muted"><i class="fas fa-chart-line"></i> 7 ngày gần đây</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Management Content Section -->
                <div class="management-section" id="management-section">
                    <div class="loading-spinner" id="loading-spinner">
                        <i class="fas fa-spinner fa-spin"></i>
                        <p>Đang tải dữ liệu...</p>
                    </div>
                    <div id="dynamic-content"></div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <script>
            $(document).ready(function () {
                // Load order management by default
                loadContent('OrderURL?service=listOrder');

                // Highlight active menu
                $('.sidebar-nav a').click(function () {
                    $('.sidebar-nav a').removeClass('active');
                    $(this).addClass('active');
                });
            });

            // Handle menu clicks
            $('#order-link').click(function (e) {
                e.preventDefault();
                loadContent('OrderURL?service=listOrder');
            });

            $('#product-link').click(function (e) {
                e.preventDefault();
                loadContent('PhoneURL?service=listPhone');
            });

            $('#customer-link').click(function (e) {
                e.preventDefault();
                loadContent('CustomerURL?service=listCustomer');
            });

            $('#store-link').click(function (e) {
                e.preventDefault();
                loadContent('StoreURL?service=listStore');
            });

            $('#dashboard-link').click(function (e) {
                e.preventDefault();
                $('#dynamic-content').html('');
                $('html, body').animate({
                    scrollTop: 0
                }, 500);
            });

            // Function to load content via AJAX
            function loadContent(url) {
                $('#loading-spinner').show();
                $('#dynamic-content').html('');

                $.ajax({
                    url: url,
                    type: 'GET',
                    success: function (data) {
                        $('#dynamic-content').html(data);
                        $('#loading-spinner').hide();

                        // Scroll to management section
                        $('html, body').animate({
                            scrollTop: $('#management-section').offset().top
                        }, 500);
                    },
                    error: function () {
                        $('#dynamic-content').html(
                                '<div class="alert alert-danger">' +
                                '   <i class="fas fa-exclamation-circle"></i> Đã xảy ra lỗi khi tải dữ liệu. Vui lòng thử lại.' +
                                '</div>'
                                );
                        $('#loading-spinner').hide();
                    }
                });
            }

            // Function to handle search (will be called from loaded content)
            function handleSearch(form) {
                var url = $(form).attr('action');
                var data = $(form).serialize();

                $('#loading-spinner').show();
                $('#dynamic-content').html('');

                $.ajax({
                    url: url,
                    type: 'GET',
                    data: data,
                    success: function (response) {
                        $('#dynamic-content').html(response);
                        $('#loading-spinner').hide();
                    },
                    error: function () {
                        $('#dynamic-content').html(
                                '<div class="alert alert-danger">' +
                                '   <i class="fas fa-exclamation-circle"></i> Đã xảy ra lỗi khi tìm kiếm. Vui lòng thử lại.' +
                                '</div>'
                                );
                        $('#loading-spinner').hide();
                    }
                });

                return false;
            }
        </script>
    </body>
</html>