<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/30/2022
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="common/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <h1>Product List</h1>
        <h5 class="justify-content-end">
            <c:if test='${requestScope["message"] != null}'>
                <span class="message">${requestScope["message"]}</span>
            </c:if>
        </h5>
        <form method="get" class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-secondary" type="submit">Search</button>
        </form>
        </div>
    </div>
</nav>
<table class="table table-hover mt-5 text-center">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">Name</th>
        <th scope="col"></th>
        <th scope="col">Producer</th>
        <th scope="col">Price</th>
        <th scope="col">Status</th>
        <th scope="col">Picture</th>
        <th scope="col">Edit</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${products}" >
        <tr>
            <th scope="row">${product.id}</th>
            <td>${product.name}</td>
            <td>
                <button type="button" class="btn btn-secondary">
                    <a href="Products?action=seeDetails&id=${product.id}" class="text-decoration-none text-white">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg>
                    </a>
                </button>
            </td>
            <td>${product.producer}</td>
            <td>${product.price}$</td>
            <td>${product.status}</td>
            <td>${product.picture}</td>
            <td>
                <button type="button" class="btn btn-secondary">
                    <a href="Products?action=update&id=${product.id}" class="text-decoration-none text-white">Edit</a>
                </button>
            </td>
            <td>
                <button type="button" class="btn btn-secondary">
                    <a href="Products?action=delete&id=${product.id}" class="text-decoration-none text-white">Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <th colspan="9">
            <button type="button" class="btn btn-secondary btn-lg">
                <a class="text-decoration-none text-white" href="Products?action=create">Creat New Product</a>
            </button>
        </th>
    </tr>
    </tbody>
</table>
<script src="common/bootstrap-5.0.2-dist/js/bootstrap.js"></script>
</body>
</html>
