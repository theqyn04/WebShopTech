<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Câu hỏi thường gặp - TechStore</title>
        <link href="css/homeStyle.css" rel="stylesheet">
        <style>
            .faq-container {
                background-color: white;
                border-radius: 10px;
                padding: 2rem;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                margin: 2rem auto;
                max-width: 900px;
            }

            .faq-header {
                color: var(--secondary);
                margin-bottom: 2rem;
                text-align: center;
                position: relative;
                padding-bottom: 0.5rem;
            }

            .faq-header::after {
                content: '';
                position: absolute;
                left: 50%;
                bottom: 0;
                width: 80px;
                height: 2px;
                background-color: var(--primary);
                transform: translateX(-50%);
            }

            .faq-section {
                margin-bottom: 2rem;
            }

            .faq-question {
                color: var(--secondary);
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .faq-answer {
                line-height: 1.6;
                margin-bottom: 1rem;
            }

            .highlight {
                color: var(--primary);
                font-weight: bold;
            }

            ul.faq-list {
                margin-left: 1.5rem;
            }

            ul.faq-list li {
                margin-bottom: 0.5rem;
                position: relative;
                list-style-type: none;
            }

            ul.faq-list li::before {
                content: "•";
                color: var(--primary);
                font-weight: bold;
                display: inline-block;
                width: 1em;
                margin-left: -1em;
            }

            .note {
                font-style: italic;
                color: #6c757d;
                margin-top: 1rem;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <div class="faq-container">
                <h1 class="faq-header">Câu hỏi thường gặp</h1>

                <div class="faq-intro">
                    <p>Dưới đây là các câu hỏi thường gặp của khách hàng TechStore. Nếu bạn không tìm thấy câu trả lời tại đây, vui lòng liên hệ với chúng tôi để được hỗ trợ.</p>
                </div>

                <div class="faq-section">
                    <h3 class="faq-question">1. TechStore có chính sách giao hàng như thế nào?</h3>
                    <div class="faq-answer">
                        <p>TechStore cung cấp các lựa chọn giao hàng sau:</p>
                        <ul class="faq-list">
                            <li><span class="highlight">Giao hàng tiêu chuẩn:</span> Miễn phí trong nội thành TP.HCM và Hà Nội (3-5 ngày làm việc)</li>
                            <li><span class="highlight">Giao hàng nhanh:</span> Phí 50,000đ (1-2 ngày làm việc)</li>
                            <li><span class="highlight">Giao hàng siêu tốc:</span> Phí 100,000đ (trong ngày, đặt trước 12h)</li>
                        </ul>
                        <p class="note">Lưu ý: Thời gian giao hàng có thể thay đổi vào các ngày lễ, Tết hoặc ở các khu vực ngoại thành.</p>
                    </div>
                </div>

                <div class="faq-section">
                    <h3 class="faq-question">2. Chính sách đổi trả sản phẩm tại TechStore?</h3>
                    <div class="faq-answer">
                        <p>TechStore áp dụng chính sách đổi trả trong vòng 7 ngày kể từ ngày nhận hàng với các điều kiện:</p>
                        <ul class="faq-list">
                            <li>Sản phẩm còn nguyên seal, chưa qua sử dụng</li>
                            <li>Còn đầy đủ hộp, phụ kiện đi kèm</li>
                            <li>Có lỗi từ nhà sản xuất hoặc không đúng với mô tả</li>
                        </ul>
                        <p>Không áp dụng đổi trả với các trường hợp:</p>
                        <ul class="faq-list">
                            <li>Sản phẩm đã kích hoạt bảo hành</li>
                            <li>Sản phẩm có dấu hiệu va đập, trầy xước do người dùng</li>
                            <li>Không có hóa đơn mua hàng</li>
                        </ul>
                    </div>
                </div>

                <div class="faq-section">
                    <h3 class="faq-question">3. Thời gian bảo hành sản phẩm tại TechStore?</h3>
                    <div class="faq-answer">
                        <p>Tất cả sản phẩm tại TechStore được bảo hành chính hãng:</p>
                        <ul class="faq-list">
                            <li><span class="highlight">Điện thoại:</span> 12 tháng</li>
                            <li><span class="highlight">Phụ kiện:</span> 6 tháng (pin, sạc, tai nghe)</li>
                            <li><span class="highlight">Màn hình:</span> 6 tháng (không bao gồm vỡ màn hình)</li>
                        </ul>
                        <p>Để bảo hành, vui lòng mang sản phẩm kèm hóa đơn đến các trung tâm bảo hành ủy quyền của hãng hoặc cửa hàng TechStore.</p>
                    </div>
                </div>

                <div class="faq-section">
                    <h3 class="faq-question">4. Các phương thức thanh toán tại TechStore?</h3>
                    <div class="faq-answer">
                        <p>TechStore chấp nhận các hình thức thanh toán sau:</p>
                        <ul class="faq-list">
                            <li><span class="highlight">Tiền mặt:</span> Thanh toán khi nhận hàng (COD) hoặc tại cửa hàng</li>
                            <li><span class="highlight">Chuyển khoản:</span> Qua các ngân hàng Vietcombank, Techcombank, BIDV</li>
                            <li><span class="highlight">Thẻ tín dụng:</span> Visa, MasterCard, JCB</li>
                            <li><span class="highlight">Ví điện tử:</span> Momo, ZaloPay, VNPay</li>
                        </ul>
                    </div>
                </div>

                <div class="faq-section">
                    <h3 class="faq-question">5. Làm thế nào để kiểm tra tình trạng đơn hàng?</h3>
                    <div class="faq-answer">
                        <p>Bạn có thể kiểm tra tình trạng đơn hàng bằng các cách sau:</p>
                        <ul class="faq-list">
                            <li>Truy cập website TechStore, vào mục "Tra cứu đơn hàng" và nhập mã đơn hàng</li>
                            <li>Liên hệ hotline 1900 633 049 cung cấp mã đơn hàng để nhân viên kiểm tra</li>
                            <li>Kiểm tra qua email/SMS mà hệ thống đã gửi khi bạn đặt hàng thành công</li>
                        </ul>
                    </div>
                </div>

                <div class="faq-section">
                    <h3 class="faq-question">6. TechStore có hỗ trợ trả góp không?</h3>
                    <div class="faq-answer">
                        <p>TechStore hợp tác với các ngân hàng cung cấp dịch vụ trả góp 0% lãi suất:</p>
                        <ul class="faq-list">
                            <li>Áp dụng cho các sản phẩm từ 5 triệu đồng trở lên</li>
                            <li>Kỳ hạn từ 3-12 tháng</li>
                            <li>Chỉ cần CMND/CCCD và sao kê lương (nếu có)</li>
                        </ul>
                        <p>Để biết thêm chi tiết, vui lòng liên hệ hotline hoặc đến trực tiếp cửa hàng.</p>
                    </div>
                </div>

                <div class="faq-section">
                    <h3 class="faq-question">7. Làm sao để nhận thông báo khuyến mãi từ TechStore?</h3>
                    <div class="faq-answer">
                        <p>Bạn có thể đăng ký nhận thông báo khuyến mãi bằng cách:</p>
                        <ul class="faq-list">
                            <li>Đăng ký email trên website TechStore</li>
                            <li>Theo dõi fanpage Facebook TechStore</li>
                            <li>Cài đặt ứng dụng TechStore trên điện thoại</li>
                            <li>Đăng ký nhận SMS khuyến mãi tại cửa hàng</li>
                        </ul>
                    </div>
                </div>

                <div class="faq-contact">
                    <p>Nếu bạn có bất kỳ câu hỏi nào khác, vui lòng liên hệ:</p>
                    <p><span class="highlight">Hotline:</span> 1900 633 049<br>
                        <span class="highlight">Email:</span> support@techstore.vn<br>
                        <span class="highlight">Giờ làm việc:</span> 8:00 - 20:00 (Thứ 2 - Thứ 7), 8:00 - 17:00 (Chủ nhật)</p>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>