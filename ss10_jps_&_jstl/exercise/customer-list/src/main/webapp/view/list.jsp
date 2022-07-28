<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/28/2022
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sách khách hàng</h1>

<table border="1">
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>${customer.getName()}</td>
            <td>${customer.getBirthDay()}</td>
            <td>${customer.getAddress()}</td>
            <td><img width="100px" src="${customer.getPicture()}" alt=""></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
