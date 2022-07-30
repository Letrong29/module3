<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/30/2022
  Time: 3:15 PM
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
    <h1>Creat Form</h1>
    <form method="post">
        <h5>Product information</h5>
        <div class="mb-3">
            <label for="name" class="form-label">Name: </label>
            <input type="text" name="name" id="name" class="form-control"  aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="producer" class="form-label">Producer: </label>
            <input type="text" name="producer" id="producer" class="form-control"  aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price: </label>
            <input type="text" name="price" id="price" class="form-control"  aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="status" class="form-label">Status: </label>
            <input type="text" name="status" id="status" class="form-control"  aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="picture" class="form-label">Picture link: </label>
            <input type="text" name="picture" id="picture" class="form-control"  aria-describedby="emailHelp">
        </div>
        <button type="submit" class="btn btn-primary" value="Create">Submit</button>
        <button type="submit" class="btn btn-primary" value="Create">
            <a class="text-decoration-none text-white" href="/Products">Back to product list</a>
        </button>
    </form>
    <h2>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </h2>
</div>
<script src="common/bootstrap-5.0.2-dist/js/bootstrap.js"></script>
</body>
</html>
