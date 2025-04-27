<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chính sách đổi trả - TechStore</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/homeStyle.css" rel="stylesheet">
        <style>
            .policy-container {
                background-color: white;
                border-radius: 10px;
                padding: 2rem;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                margin: 2rem auto;
                max-width: 900px;
            }

            .policy-header {
                color: var(--secondary);
                margin-bottom: 1.5rem;
                position: relative;
                padding-bottom: 0.5rem;
            }

            .policy-header::after {
                content: '';
                position: absolute;
                left: 0;
                bottom: 0;
                width: 80px;
                height: 2px;
                background-color: var(--primary);
            }

            .policy-section {
                margin-bottom: 2rem;
            }

            .policy-question {
                color: var(--secondary);
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .policy-answer {
                line-height: 1.6;
                margin-bottom: 1rem;
            }

            .highlight {
                color: var(--primary);
                font-weight: bold;
            }

            ul.policy-list {
                margin-left: 1.5rem;
            }

            ul.policy-list li {
                margin-bottom: 0.5rem;
                position: relative;
                list-style-type: none;
            }

            ul.policy-list li::before {
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

            .warning {
                color: var(--danger);
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <div class="policy-container">
                <h1 class="policy-header">Chính sách đổi trả và bảo hành</h1>

                <div class="policy-section">
                    <h3 class="policy-question">1. Điều kiện đổi trả sản phẩm</h3>
                    <div class="policy-answer">
                        <p>TechStore áp dụng chính sách đổi trả trong vòng 7 ngày kể từ ngày nhận hàng với các điều kiện sau:</p>
                        <ul class="policy-list">
                            <li>Sản phẩm còn nguyên seal, chưa qua sử dụng</li>
                            <li>Còn đầy đủ hộp, phụ kiện đi kèm và phiếu bảo hành</li>
                            <li>Có lỗi từ nhà sản xuất hoặc không đúng với mô tả</li>
                            <li>Hóa đơn mua hàng còn nguyên vẹn</li>
                        </ul>
                        <p class="warning">Không áp dụng đổi trả với các trường hợp:</p>
                        <ul class="policy-list">
                            <li>Sản phẩm đã kích hoạt bảo hành</li>
                            <li>Sản phẩm có dấu hiệu va đập, trầy xước do người dùng</li>
                            <li>Không có hóa đơn mua hàng</li>
                            <li>Sản phẩm thuộc danh mục không được đổi trả</li>
                        </ul>
                    </div>
                </div>

                <div class="policy-section">
                    <h3 class="policy-question">2. Quy trình đổi trả hàng</h3>
                    <div class="policy-answer">
                        <p>Để yêu cầu đổi trả sản phẩm, quý khách vui lòng:</p>
                        <ol>
                            <li>Liên hệ hotline 1900 633 049 hoặc email support@techstore.vn thông báo lý do đổi trả</li>
                            <li>Cung cấp hình ảnh/video minh chứng sản phẩm lỗi (nếu có)</li>
                            <li>Mang sản phẩm đến cửa hàng TechStore gần nhất hoặc gửi qua dịch vụ chuyển phát</li>
                            <li>Nhân viên sẽ kiểm tra và xử lý yêu cầu trong vòng 3-5 ngày làm việc</li>
                        </ol>
                        <p class="note">Lưu ý: Phí vận chuyển đổi trả sẽ do TechStore chi trả nếu sản phẩm có lỗi từ nhà sản xuất.</p>
                    </div>
                </div>

                <div class="policy-section">
                    <h3 class="policy-question">3. Chính sách hoàn tiền</h3>
                    <div class="policy-answer">
                        <p>TechStore áp dụng các hình thức hoàn tiền sau:</p>
                        <ul class="policy-list">
                            <li><span class="highlight">Hoàn tiền 100%:</span> Áp dụng khi sản phẩm có lỗi từ nhà sản xuất hoặc giao sai sản phẩm</li>
                            <li><span class="highlight">Hoàn tiền 70-90%:</span> Áp dụng khi sản phẩm không còn nguyên seal nhưng chưa qua sử dụng</li>
                            <li><span class="highlight">Không hoàn tiền:</span> Đối với sản phẩm đã qua sử dụng hoặc hư hỏng do người dùng</li>
                        </ul>
                        <p>Thời gian hoàn tiền:</p>
                        <ul class="policy-list">
                            <li>3-5 ngày làm việc đối với thanh toán qua thẻ tín dụng/chuyển khoản</li>
                            <li>Ngay tại cửa hàng đối với thanh toán tiền mặt</li>
                        </ul>
                    </div>
                </div>

                <div class="policy-section">
                    <h3 class="policy-question">4. Chính sách bảo hành</h3>
                    <div class="policy-answer">
                        <p>Tất cả sản phẩm tại TechStore được bảo hành chính hãng:</p>
                        <ul class="policy-list">
                            <li><span class="highlight">Điện thoại:</span> 12 tháng tại các trung tâm bảo hành ủy quyền</li>
                            <li><span class="highlight">Phụ kiện:</span> 6 tháng (pin, sạc, tai nghe)</li>
                            <li><span class="highlight">Màn hình:</span> 6 tháng (không bao gồm vỡ màn hình)</li>
                        </ul>
                        <p class="warning">Điều kiện không được bảo hành:</p>
                        <ul class="policy-list">
                            <li>Sản phẩm đã hết hạn bảo hành</li>
                            <li>Hư hỏng do sử dụng không đúng cách</li>
                            <li>Sản phẩm đã qua sửa chữa bởi đơn vị không được ủy quyền</li>
                            <li>Mất phiếu bảo hành hoặc tem bảo hành</li>
                        </ul>
                    </div>
                </div>

                <div class="policy-section">
                    <h3 class="policy-question">5. Sản phẩm không được đổi trả</h3>
                    <div class="policy-answer">
                        <p>Các sản phẩm sau đây không được áp dụng chính sách đổi trả:</p>
                        <ul class="policy-list">
                            <li>Sản phẩm khuyến mãi, giảm giá đặc biệt</li>
                            <li>Phụ kiện đã qua sử dụng (ốp lưng, dán màn hình, cáp sạc)</li>
                            <li>Phần mềm, ứng dụng có bản quyền</li>
                            <li>Thẻ nhớ, thẻ sim đã kích hoạt</li>
                        </ul>
                    </div>
                </div>

                <div class="policy-contact">
                    <p>Mọi thắc mắc về chính sách đổi trả, vui lòng liên hệ:</p>
                    <p><span class="highlight">Hotline:</span> 1900 633 049<br>
                        <span class="highlight">Email:</span> support@techstore.vn<br>
                        <span class="highlight">Giờ làm việc:</span> 8:00 - 20:00 (Thứ 2 - Thứ 7)</p>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>