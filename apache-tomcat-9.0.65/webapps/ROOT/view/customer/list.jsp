<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 8/7/2022
  Time: 12:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/common/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body>
<%@ include file="/include/header.jsp" %>

<div class="container-fluid">
    <div class="row mt-5">
        <div class="col-lg-12 text-center">
            <h1>Customer Management</h1>
        </div>
    </div>

    <div class="row mt-2">
        <div class="col-lg-12 d-flex justify-content-center">
            <button type="button" class="btn btn-success">Add New Customer</button>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-lg-12">
            <table class="table">
                <thead>
                <tr class="table-success">
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Birth Day</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Id Card</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Email</th>
                    <th scope="col">Customer Type</th>
                    <th scope="col">Address</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${customerList}" var="customer" varStatus="statust">
                    <tr>
                        <th scope="row">${statust.count}</th>
                        <td>${customer.name}</td>
                        <td>${customer.birthday}</td>
                        <td>${customer.gender}</td>
                        <td>${customer.id}</td>
                        <td>${customer.phoneNumber}</td>
                        <td>${customer.email}</td>
                        <td>${customer.typeOfCustomer}</td>
                        <td>${customer.address}</td>
                        <td><button type="button" class="btn btn-secondary">Edit</button></td>
                        <td>
                            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#modalDelete">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Modal delete -->
<div class="modal fade" id="modalDelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Confirm</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger">Delete</button>
            </div>
        </div>
    </div>
</div>
<!--Modal show detail-->
<div class="modal fade" id="showDetail" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel1">Detail</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <b>Name:</b>
                        <p>Name of facility</p>
                    </li>
                    <li class="list-group-item">
                        <b>Name:</b>
                        <p>Name of facility</p>
                    </li>
                    <li class="list-group-item">
                        <b>Name:</b>
                        <p>Name of facility</p>
                    <li class="list-group-item">
                        <b>Name:</b>
                        <p>Name of facility</p>
                    </li>
                    <li class="list-group-item">
                        <b>Name:</b>
                        <p>Name of facility</p>
                    </li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<%@ include file="/include/footer.jsp" %>
<script src="/common/popper.min.js"></script>
<script src="/common/bootstrap-5.0.2-dist/js/bootstrap.js"></script>
</body>
</html>
