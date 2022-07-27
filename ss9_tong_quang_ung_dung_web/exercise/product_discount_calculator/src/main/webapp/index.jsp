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
  </head>
  <body>

  <form action="/ProductServlet" method="get">

    <h2>Product Description:</h2>
    <input name="productDescription" type="text">
    <h2>List Price:</h2>
    <input name="listPrice" type="text">
    <h2>Discount Percent:</h2>
    <input name="discountPercent" type="text">

    <button type="submit">Calculate Discount</button>

  </form>

  </body>
</html>
