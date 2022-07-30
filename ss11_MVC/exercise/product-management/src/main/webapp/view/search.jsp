<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/30/2022
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

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
    <c:forEach var="product" items="${productList}" >
        <tr>
            <th scope="row">${productList.id}</th>
            <td>${productList.name}</td>
            <td>
                <button type="button" class="btn btn-outline-primary">
                    <a href="Products?action=seeDetails&id=${productList.id}" class="text-decoration-none text-dark">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg>
                    </a>
                </button>
            </td>
            <td>${productList.producer}</td>
            <td>${productList.price}$</td>
            <td>${productList.status}</td>
            <td>${productList.picture}</td>
            <td>
                <button type="button" class="btn btn-outline-primary">
                    <a href="Products?action=update&id=${productList.id}" class="text-decoration-none text-dark">Edit</a>
                </button>
            </td>
            <td>
                <button type="button" class="btn btn-outline-primary">
                    <a href="Products?action=delete&id=${productList.id}" class="text-decoration-none text-dark">Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
