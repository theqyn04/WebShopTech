
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.phone,java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styleTable.css" rel="stylesheet">
    </head>
    <body>
        <% // get data from servlet
            List<phone> list = (List<phone>) request.getAttribute("phoneData");
            String titleTable=(String)request.getAttribute("titleTable");
        %>
        <form action="PhoneURL" method="get">
            <input type="hidden" name="service" value="listPhone">
            <p>Tìm kiếm theo mã sản phẩm
                <input type="text" name="pid"><!-- comment -->
            <p><input type="submit" name="submit" value="Search">
                <input type="reset" value="Clear">
         </form>
        
        <p><a href="PhoneURL?service=insertPhone">Thêm sản phẩm</a> 
        <table border=1>
            <caption><%=titleTable%></caption>
            <tr>
                <th>Mã sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Mã loại sản phẩm</th>
                <th>Giá</th>
                <th>Số lượng hàng tồn kho</th>
                <th>Mô tả</th>
                <th>Ảnh</th>
                <th>Chỉnh sửa</th>
                <th>Xóa</th>
            </tr>
            <%for (phone phone : list) {%>
            <tr>
                <td><%=phone.getPhone_id()%></td>
                <td><%=phone.getPhone_name()%></td>
                <td><%=phone.getPhone_type_id()%></td>
                <td><%=phone.getPrice()%></td>
                <td><%=phone.getStock_quantity()%></td>
                <td><%=phone.getDescription()%></td>
                <td> <img src="<%=phone.getImageURL()%>" alt="phoneURL"></td>
                <td><a href="PhoneURL?service=updatePhone&pid=<%=phone.getPhone_id()%>">Chỉnh sửa</a></td>
                <td><a href="PhoneURL?service=deletePhone&pid=<%=phone.getPhone_id()%>">Xóa</a></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
