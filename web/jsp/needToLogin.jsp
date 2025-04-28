<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Required - TechStore</title>
        <link href="css/homeStyle.css" rel="stylesheet">
        <style>
            .login-required-container {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                min-height: 60vh;
                text-align: center;
                padding: 2rem;
            }
            
            .login-required-card {
                background-color: white;
                border-radius: 10px;
                padding: 2rem;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                max-width: 500px;
                width: 100%;
            }
            
            .login-required-icon {
                font-size: 3rem;
                color: var(--primary);
                margin-bottom: 1rem;
            }
            
            .login-required-title {
                color: var(--secondary);
                margin-bottom: 1rem;
            }
            
            .login-required-message {
                margin-bottom: 2rem;
                color: var(--dark);
            }
            
            .login-btn {
                background-color: var(--primary);
                color: white;
                padding: 0.8rem 2rem;
                border-radius: 5px;
                text-decoration: none;
                font-weight: bold;
                transition: background-color 0.3s;
                display: inline-block;
            }
            
            .login-btn:hover {
                background-color: #2980b9;
                color: white;
            }
            
            .register-prompt {
                margin-top: 1.5rem;
                color: var(--dark);
            }
            
            .register-link {
                color: var(--primary);
                font-weight: bold;
                text-decoration: none;
            }
            
            .register-link:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="container">
            <div class="login-required-container">
                <div class="login-required-card">
                    <div class="login-required-icon">
                        <i class="fas fa-user-lock"></i>
                    </div>
                    <h2 class="login-required-title">Login Required</h2>
                    <p class="login-required-message">Bạn cần đăng nhập để tiếp tục mua hàng. Hãy đăng nhập hoặc đăng kí tài khoản.</p>
                    <a href="LoginURL" class="login-btn">
                        <i class="fas fa-sign-in-alt"></i> Đăng nhập ngay
                    </a>
                    <p class="register-prompt">
                        Bạn chưa có tài khoản? <a href="LoginURL?service=registerCustomer" class="register-link">Register here</a>
                    </p>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
        
        <!-- Font Awesome for icons -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    </body>
</html>F