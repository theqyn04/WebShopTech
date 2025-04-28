<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên hệ - TechStore</title>
        <style>
            .contact-container {
                background-color: white;
                border-radius: 10px;
                padding: 2rem;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                margin: 2rem auto;
                max-width: 800px;
            }
            
            .contact-header {
                color: var(--secondary);
                margin-bottom: 1.5rem;
                text-align: center;
                position: relative;
                padding-bottom: 0.5rem;
            }
            
            .contact-header::after {
                content: '';
                position: absolute;
                left: 50%;
                bottom: 0;
                width: 80px;
                height: 2px;
                background-color: var(--primary);
                transform: translateX(-50%);
            }
            
            .contact-info {
                margin-bottom: 2rem;
            }
            
            .contact-info p {
                margin-bottom: 1rem;
                line-height: 1.6;
            }
            
            .store-locations {
                margin-top: 2rem;
            }
            
            .store-locations h3 {
                color: var(--secondary);
                margin-bottom: 1rem;
                border-bottom: 1px solid #eee;
                padding-bottom: 0.5rem;
            }
            
            .store-locations p {
                margin-left: 1rem;
                margin-bottom: 0.8rem;
            }
            
            .highlight {
                color: var(--primary);
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="container">
            <div class="contact-container">
                <h1 class="contact-header">Liên hệ TechStore</h1>
                
                <div class="contact-info">
                    <p>Cửa hàng điện thoại TechStore chuyên cung cấp các sản phẩm điện thoại di động chính hãng, phụ kiện và dịch vụ sửa chữa uy tín.</p>
                    
                    <p><span class="highlight">Website:</span> www.techstore.vn<br>
                    <span class="highlight">Hotline:</span> 1900 633 049<br>
                    <span class="highlight">Email:</span> support@techstore.vn</p>
                </div>
                
                <div class="store-locations">
                    <h3>Hệ thống cửa hàng</h3>
                    
                    <p><span class="highlight">Trụ sở chính TP.HCM:</span><br>
                    142 Nguyễn Văn Cừ, Phường Nguyễn Cư Trinh, Quận 1, TP.HCM</p>
                    
                    <p><span class="highlight">Chi nhánh Quận 3:</span><br>
                    225/3 Nguyễn Đình Chiểu, Phường 5, Quận 3, TP.HCM</p>
                    
                    <p><span class="highlight">Chi nhánh Hà Nội:</span><br>
                    65 Trần Phú, Ba Đình, Hà Nội</p>
                </div>
                
                <div class="business-hours">
                    <h3>Giờ làm việc</h3>
                    <p>Thứ 2 - Thứ 7: 8:00 - 20:00<br>
                    Chủ nhật: 8:00 - 17:00</p>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>