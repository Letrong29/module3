<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/27/2022
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="bootstrap-5.0.2-dist\css\bootstrap.css">
  </head>
  <body>

  <form action="/ProductServlet" method="post">
    <h2>Product Description:</h2>
    <input name="productDescription" type="text">
    <h2>List Price:</h2>
    <input name="listPrice" type="text">
    <h2>Discount Percent:</h2>
    <input name="discountPercent" type="text">

    <button type="submit">Calculate Discount</button>

  </form>

  <script src="bootstrap-5.0.2-dist\js\bootstrap.js"></script>
  </body>
</html>
