<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 8/6/2022
  Time: 11:17 PM
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

<div class="row mt-5">
    <div class="col-lg-3"></div>
    <div class="col-lg-6 shadow-lg">
        <h1 class="text-center">Create Facility Form</h1>
        <form class="mt-5">
            <div class="mb-3" id="facilityType">
                <div class="form-check-inline">
                    <b>Choice Facility Type:</b>
                </div>
                <div class="form-check form-check-inline " onclick="displayForm(inlineRadio1.value)">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Villa</label>
                </div>
                <div class="form-check form-check-inline" onclick="displayForm(inlineRadio2.value)">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                    <label class="form-check-label" for="inlineRadio2">House</label>
                </div>
                <div class="form-check form-check-inline" onclick="displayForm(inlineRadio3.value)">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                    <label class="form-check-label" for="inlineRadio2">Room</label>
                </div>
            </div>

            <div class="mb-3">
                <label for="name" class="form-label"><b>Name:</b></label>
                <input type="text" class="form-control" id="name">
            </div>

            <div class="mb-3">
                <label for="area" class="form-label"><b>Area:</b></label>
                <input type="number" class="form-control" id="area">
            </div>

            <div class="mb-3">
                <label for="cost" class="form-label"><b>Cost:</b></label>
                <input type="number" class="form-control" id="cost">
            </div>

            <div class="mb-3">
                <label for="maxPeople" class="form-label"><b>Max People:</b></label>
                <input type="number" class="form-control" id="maxPeople">
            </div>

            <div class="mb-3">
                <label for="rentType" class="form-label"><b>Rent Type:</b></label>
                <select id="rentType" class="form-select" aria-label="Default select example">
                    <option selected>select rent type</option>
                    <option value="1">Year</option>
                    <option value="2">Month</option>
                    <option value="3">Day</option>
                    <option value="4">Hour</option>
                </select>
            </div>

            <div class="mb-3" id="opt1" style="display: none">
                <label for="roomStandard" class="form-label"><b>Room Standard:</b></label>
                <select id="roomStandard" class="form-select" aria-label="Default select example">
                    <option selected>select room standard</option>
                    <option value="1">3</option>
                    <option value="2">4</option>
                    <option value="3">5</option>
                </select>
            </div>
            <div class="mb-3" id="opt2" style="display: none">
                <label for="poolArea" class="form-label"><b>Pool Area:</b></label>
                <input type="number" class="form-control" id="poolArea">
            </div>
            <div class="mb-3" id="opt3" style="display: none">
                <label for="numberOfFloors" class="form-label"><b>Number Of Floors:</b></label>
                <input type="number" class="form-control" id="numberOfFloors">
            </div>
            <div class="mb-3" id="opt4" style="display: none">
                <label for="descriptionOtherConvenience" class="form-label"><b>Description Other Convenience:</b></label>
                <input type="number" class="form-control" id="descriptionOtherConvenience">
            </div>
            <div class="mb-3" id="opt5" style="display: none">
                <label for="freeServiceIncluded" class="form-label"><b>Free Service Included:</b></label>
                <input type="number" class="form-control" id="freeServiceIncluded">
            </div>

            <button type="submit" class="btn btn-primary mb-3">Submit</button>
        </form>
    </div>
    <div class="col-lg-3"></div>
</div>

<%@ include file="/include/footer.jsp" %>
<script>
    function displayForm(value) {
        switch (value) {
            case "option1":
                document.getElementById("opt1").style.display = "block";
                document.getElementById("opt2").style.display = "block";
                document.getElementById("opt3").style.display = "block";
                document.getElementById("opt4").style.display = "block";
                document.getElementById("opt5").style.display = "none";
                break;
            case "option2":
                document.getElementById("opt1").style.display = "block";
                document.getElementById("opt2").style.display = "none";
                document.getElementById("opt3").style.display = "block";
                document.getElementById("opt4").style.display = "block";
                document.getElementById("opt5").style.display = "none";
                break;
            case "option3":
                document.getElementById("opt1").style.display = "none";
                document.getElementById("opt2").style.display = "none";
                document.getElementById("opt3").style.display = "none";
                document.getElementById("opt4").style.display = "none";
                document.getElementById("opt5").style.display = "block";
                break;
        }
    }
</script>
<script src="/common/popper.min.js"></script>
<script src="/common/bootstrap-5.0.2-dist/js/bootstrap.js"></script>
</body>
</html>
