<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 8/7/2022
  Time: 12:09 AM
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
      <h1>Employee Management</h1>

    </div>
  </div>

  <div class="row mt-2">
    <div class="col-lg-12 d-flex justify-content-center">
      <!-- Button Create Employee modal -->
      <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#createModal">
        Add New Employee
      </button>
    </div>
  </div>
  <div class="row mt-3">
    <div class="col-lg-12">
      <table class="table">
        <thead>
        <tr class="table-success">
          <th scope="col">ID</th>
          <th scope="col">Name</th>
          <th scope="col">Date of birth</th>
          <th scope="col">Id card</th>
          <th scope="col">Email</th>
          <th scope="col">Education degree</th>
          <th scope="col">Position</th>
          <th scope="col">Division</th>
          <th scope="col">Salary</th>
          <th scope="col"></th>
          <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td></td>
          <td>Otto</td>
          <td>@mdo</td>
          <td>@mdo</td>
          <td>@mdo</td>
          <td>@mdo</td>
          <td>@mdo</td>
          <td>
            <!-- Button Edit Employee modal -->
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#editModal">
              Edit
            </button>
          </td>
          <td>
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#modalDelete">
              Delete
            </button>
          </td>

        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Jacob</td>
          <td></td>
          <td>Thornton</td>
          <td>@fat</td>
          <td>@fat</td>
          <td>@fat</td>
          <td>@fat</td>
          <td>@fat</td>
          <td>
            <!-- Button Edit Employee modal -->
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#editModal">
              Edit
            </button>
          </td>
          <td>
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#modalDelete">
              Delete
            </button>
          </td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Larry the Bird</td>
          <td></td>
          <td>@twitter</td>
          <td>@twitter</td>
          <td>@twitter</td>
          <td>@twitter</td>
          <td>@twitter</td>
          <td>@twitter</td>
          <td>
            <!-- Button Edit Employee modal -->
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#editModal">
              Edit
            </button>
          </td>
          <td>
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#modalDelete">
              Delete
            </button>
          </td>
        </tr>
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

<!-- Modal Create -->
<div class="modal fade" id="createModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabelCreate">Enter Employee Information</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="">
        <div class="modal-body">
          <div class="mb-3">
            <label for="nameOfEmployee" class="form-label"><b>Name: </b></label>
            <input type="text" class="form-control" id="nameOfEmployee" aria-describedby="emailHelp">
          </div>
          <div class="mb-3">
            <label for="dateOfBirth" class="form-label"><b>Date of Birht:</b></label>
            <input type="date" class="form-control" id="dateOfBirth">
          </div>
          <div class="mb-3">
            <label for="idCard" class="form-label"><b>Id Card:</b></label>
            <input type="text" class="form-control" id="idCard">
          </div>
          <div class="mb-3">
            <label for="email" class="form-label"><b>Email:</b></label>
            <input type="email" class="form-control" id="email">
          </div>

          <div class="mb-3">
            <label for="educationDegree" class="form-label"><b>Education Degree:</b></label>
            <select id="educationDegree" class="form-select" aria-label="Default select example">
              <option selected>select education degree</option>
              <option value="1">Trung Cấp</option>
              <option value="2">Cao Đẳng</option>
              <option value="3">Đại Học</option>
              <option value="4">Sau Đại Học</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="position" class="form-label"><b>Position:</b></label>
            <select id="position" class="form-select" aria-label="Default select example">
              <option selected>select position</option>
              <option value="1">Lễ Tân</option>
              <option value="2">Phục vụ</option>
              <option value="3">Chuyên Viên</option>
              <option value="4">Giám Sát</option>
              <option value="5">Quản Lý</option>
              <option value="6">Giám ĐỐc</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="division" class="form-label"><b>Division:</b></label>
            <select id="division" class="form-select" aria-label="Default select example">
              <option selected>select division</option>
              <option value="1">Sale – Marketing</option>
              <option value="2">Hành Chính</option>
              <option value="3">Phục Vụ</option>
              <option value="4">Quản Lý</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="salary" class="form-label"><b>Salary:</b></label>
            <input type="number" class="form-control" id="salary">
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal Edit -->
<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabelEdit">Edit Employee Information</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="">
        <div class="modal-body">
          <div class="mb-3">
            <label for="nameOfEmployeeEdit" class="form-label"><b>Name: </b></label>
            <input type="text" class="form-control" id="nameOfEmployeeEdit" aria-describedby="emailHelp">
          </div>
          <div class="mb-3">
            <label for="dateOfBirhtEdit" class="form-label"><b>Date of Birht:</b></label>
            <input type="text" class="form-control" id="dateOfBirhtEdit">
          </div>
          <div class="mb-3">
            <label for="idCardEdit" class="form-label"><b>Id Card:</b></label>
            <input type="text" class="form-control" id="idCardEdit">
          </div>
          <div class="mb-3">
            <label for="emailEdit" class="form-label"><b>Email:</b></label>
            <input type="email" class="form-control" id="emailEdit">
          </div>

          <div class="mb-3">
            <label for="educationDegreeEdit" class="form-label"><b>Education Degree:</b></label>
            <select id="educationDegreeEdit" class="form-select" aria-label="Default select example">
              <option selected>select education degree</option>
              <option value="1">Trung Cấp</option>
              <option value="2">Cao Đẳng</option>
              <option value="3">Đại Học</option>
              <option value="4">Sau Đại Học</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="positionEdit" class="form-label"><b>Position:</b></label>
            <select id="positionEdit" class="form-select" aria-label="Default select example">
              <option selected>select position</option>
              <option value="1">Lễ Tân</option>
              <option value="2">Phục vụ</option>
              <option value="3">Chuyên Viên</option>
              <option value="4">Giám Sát</option>
              <option value="5">Quản Lý</option>
              <option value="6">Giám ĐỐc</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="divisionEdit" class="form-label"><b>Division:</b></label>
            <select id="divisionEdit" class="form-select" aria-label="Default select example">
              <option selected>select division</option>
              <option value="1">Sale – Marketing</option>
              <option value="2">Hành Chính</option>
              <option value="3">Phục Vụ</option>
              <option value="4">Quản Lý</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="salaryEdit" class="form-label"><b>Salary:</b></label>
            <input type="number" class="form-control" id="salaryEdit">
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </form>
    </div>
  </div>
</div>

<%@ include file="/include/footer.jsp" %>
<script src="/common/popper.min.js"></script>
<script src="/common/bootstrap-5.0.2-dist/js/bootstrap.js"></script>

</body>
</html>
