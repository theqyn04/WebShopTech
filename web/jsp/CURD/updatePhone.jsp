
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.phone,java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styleForm.css" rel="stylesheet">
    </head>
    <body>
        <%List<phone> list=
                    (List<phone>)request.getAttribute("list");
        phone phone = list.get(0);
        %>
        <form action="PhoneURL" method="post">
            <input type="hidden" name="service" value="updatePhone">
            <table>
                <tr>
                    <td>Mã sản phẩm</td>
                    <td><input type="text" name="phone_id" id="" value="phone.getPhone_id()"></td>
                </tr>
                <tr>
                    <td>Tên sản phẩm</td>
                    <td><input type="text" name="phone_name" id="" value="phone.getPhone_name()"></td>
                </tr>
                <tr>
                    <td>Mã loại sản phẩm</td>
                    <td><input type="text" name="phone_type_id" id="" value="phone.getPhone_type_id()"></td>
                </tr>
                <tr>
                    <td>Giá</td>
                    <td><input type="text" name="price" id="" value="phone.getPrice()"></td>
                </tr>
                <tr>
                    <td>Số lượng tồn trong kho</td>
                    <td><input type="text" name="stock_quantity" id="" value="phone.getStock_quantity()"></td>
                </tr>
                <tr>
                    <td>Mô tả</td>
                    <td><input type="text" name="description" id=""value="phone.getDescription()"></td>
                </tr>
                <tr>
                    <td>Đường link ảnh</td>
                    <td><input type="text" name="imageURL" id=""value="phone.getImageURL()"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" 
                               value="updatePhone"></td>
                    <td><input type="reset" value="Clear"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
