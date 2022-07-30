<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/30/2022
  Time: 7:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="common/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body>
<div class="container bg-light">
    <h1>Information product</h1>
    <table class="table">
        <thead>
        <tr>
            <th colspan="2">Product information</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>Id:</th>
            <td>${product.id}</td>
        </tr>
        <tr>
            <th>Name:</th>
            <td>${product.name}</td>
        </tr>
        <tr>
            <th>Producer:</th>
            <td>${product.producer}</td>
        </tr>
        <tr>
            <th>Price:</th>
            <td>${product.price}</td>
        </tr>
        <tr>
            <th>Status:</th>
            <td>${product.status}</td>
        </tr>
        <tr>
            <th>Picture:</th>
            <td><img width="50px" src="${product.picture}" alt=""></td>
        </tr>
        </tbody>
    </table>
    <button type="submit" class="btn btn-primary" value="Back">
        <a class="text-decoration-none text-white" href="/Products">Back to product list</a>
    </button>
</div>
<script src="common/bootstrap-5.0.2-dist/js/bootstrap.js"></script>
</body>
</html>
