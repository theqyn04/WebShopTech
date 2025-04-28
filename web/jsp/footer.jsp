<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Footer with Bootstrap</title>
        <link href="css/headerStyle.css" rel="stylesheet">

    </head>
    <body>
        <!-- Footer -->
        <footer>
            <div class="footer-content">
                <div class="footer-column">
                    <h3>Về chúng tôi</h3>
                    <p>TechStore là cửa công nghệ hàng đầu Việt Nam, cung cấp các sản phẩm chất lượng với giá cả phù hợp.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-column">
                    <h3>Liên kết nhanh</h3>
                    <ul>
                        <li><a href="HomeURL?service=home">Trang chủ</a></li>
                        <li><a href="CategoryURL?service=listAllPhone">Sản phẩm</a></li>
                        <li><a href="CartURL?service=showCart">Giỏ hàng</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Hỗ trợ</h3>
                    <ul>
                        <li><a href="CustomerCareURL?service=contact">Liên hệ</a></li>
                        <li><a href="CustomerCareURL?service=complaintHandling">Chính sách khiếu nại</a></li>
                        <li><a href="CustomerCareURL?service=refundPolicy">Chính sách hoàn tiền</a></li>
                        <li><a href="CustomerCareURL?service=faqs">Câu hỏi thường gặp</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Liên hệ</h3>
                    <ul>
                        <li><i class="fas fa-map-marker-alt"></i> 123 Đường ABC, Quận 1, TP.HCM</li>
                        <li><i class="fas fa-phone"></i> Hotline 1900 2307</li>
                        <li><i class="fas fa-envelope"></i> info@techstore.vn</li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2025 TechStore. Tất cả các quyền được bảo lưu.</p>
            </div>
        </footer>

        
        <a href="LoginURL" class="admin-link" title="Admin Dashboard">
            <i class="fas fa-user-shield"></i>
        </a>
    </body>
</html>