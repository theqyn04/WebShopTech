<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chính sách khiếu nại</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            /* Additional styles for policy page */
            .policy-container {
                background-color: white;
                border-radius: 10px;
                padding: 2rem;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                margin: 3rem auto;
                max-width: 800px;
            }
            
            .policy-container h2 {
                color: var(--secondary);
                margin-bottom: 1.5rem;
                position: relative;
                padding-bottom: 0.5rem;
                text-align: center;
            }
            
            .policy-container h2::after {
                content: '';
                position: absolute;
                left: 50%;
                bottom: 0;
                width: 50px;
                height: 2px;
                background-color: var(--primary);
                transform: translateX(-50%);
            }
            
            .policy-container p {
                font-size: 1.1rem;
                line-height: 1.6;
                color: var(--dark);
            }
            
            .policy-points {
                margin-left: 1.5rem;
            }
            
            .policy-points li {
                margin-bottom: 0.8rem;
                position: relative;
                list-style-type: none;
            }
            
            .policy-points li::before {
                content: "•";
                color: var(--primary);
                font-weight: bold;
                display: inline-block;
                width: 1em;
                margin-left: -1em;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="container">
            <div class="policy-container">
                <h2>Chính sách xử lý khiếu nại</h2>
                <div class="policy-content">
                    <ul class="policy-points">
                        <li>Tiếp nhận mọi khiếu nại của khách hàng liên quan đến việc sử dụng dịch vụ của công ty.</li>
                        <li>Tất cả mọi trường hợp bảo hành, quý khách có thể liên hệ với chúng tôi để làm thủ tục bảo hành.</li>
                        <li>Thời gian giải quyết khiếu nại trong thời hạn tối đa là 03 (ba) ngày làm việc kể từ khi nhận được khiếu nại của khách hàng.</li>
                        <li>Trong trường hợp bất khả kháng, hai bên sẽ tự thương lượng.</li>
                    </ul>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>