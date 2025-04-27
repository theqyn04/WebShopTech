
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styleForm.css" rel="stylesheet">
    </head>
    <body>
        <form action="PhoneURL" method="post">
            <input type="hidden" name="service" value="insertPhone">
            <table>
                <tr>
                    <td>Tên sản phẩm</td>
                    <td><input type="text" name="phone_name" id=""></td>
                </tr>
                <tr>
                    <td>Mã loại sản phẩm</td>
                    <td><input type="text" name="phone_type_id" id=""></td>
                </tr>
                <tr>
                    <td>Giá</td>
                    <td><input type="text" name="price" id=""></td>
                </tr>
                <tr>
                    <td>Số lượng tồn trong kho</td>
                    <td><input type="text" name="stock_quantity" id=""></td>
                </tr>
                <tr>
                    <td>Mô tả</td>
                    <td><input type="text" name="description" id=""></td>
                </tr>
                <tr>
                    <td>Đường link ảnh</td>
                    <td><input type="text" name="imageURL" id=""></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" 
                               value="insertPhone"></td>
                    <td><input type="reset" value="Clear"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
