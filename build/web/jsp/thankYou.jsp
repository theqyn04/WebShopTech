<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cảm ơn bạn - TechStore</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/homeStyle.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            .thank-you-container {
                text-align: center;
                max-width: 800px;
                margin: 3rem auto;
                padding: 3rem;
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }
            
            .thank-you-icon {
                font-size: 5rem;
                color: var(--success);
                margin-bottom: 1.5rem;
            }
            
            .thank-you-title {
                color: var(--secondary);
                margin-bottom: 1.5rem;
                font-size: 2.2rem;
            }
            
            .thank-you-message {
                font-size: 1.2rem;
                color: var(--dark);
                margin-bottom: 2.5rem;
                line-height: 1.6;
            }
            
            .thank-you-btn {
                display: inline-block;
                background-color: var(--primary);
                color: white;
                padding: 0.8rem 2rem;
                border-radius: 5px;
                text-decoration: none;
                font-weight: bold;
                transition: all 0.3s;
                margin-top: 1rem;
            }
            
            .thank-you-btn:hover {
                background-color: #2980b9;
                transform: translateY(-2px);
                box-shadow: 0 5px 10px rgba(0,0,0,0.1);
            }
            
            .order-details {
                margin-top: 2rem;
                padding: 1.5rem;
                background-color: #f8f9fa;
                border-radius: 8px;
                text-align: left;
            }
            
            .order-number {
                font-weight: bold;
                color: var(--secondary);
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <div class="thank-you-container">
                <div class="thank-you-icon">
                    <i class="fas fa-check-circle"></i>
                </div>
                <h1 class="thank-you-title">Cảm ơn bạn đã mua hàng!</h1>
                <p class="thank-you-message">
                    Đơn hàng của bạn đã được tiếp nhận thành công. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất để xác nhận đơn hàng.
                </p>
                
                <%--
                <div class="order-details">
                    <h3>Thông tin đơn hàng</h3>
                    <p><strong>Mã đơn hàng:</strong> <span class="order-number">#123456</span></p>
                    <p><strong>Ngày đặt hàng:</strong> 12/05/2023</p>
                    <p><strong>Tổng tiền:</strong> 12,990,000 VNĐ</p>
                    <p><strong>Phương thức thanh toán:</strong> Thanh toán khi nhận hàng</p>
                </div>
                --%>
                
                <a href="HomeURL" class="thank-you-btn">
                    <i class="fas fa-home"></i> Về trang chủ
                </a>
                
                <p style="margin-top: 2rem; color: #6c757d;">
                    Mọi thắc mắc vui lòng liên hệ hotline: <strong>1900 633 049</strong>
                </p>
            </div>
        </div>

        <%@include file="footer.jsp" %>
        
        <!-- Font Awesome for icons -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    </body>
</html>