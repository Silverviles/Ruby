<%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 09/02/2024
  Time: 22:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/common/header.css">
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div style="margin-top: 80px"></div>
<a href="${pageContext.request.contextPath}/restaurant/food" >Go TO Food Page</a>
<form method="get" id="transportForm">
    <button data-action="transport/loginForm">Transportation Login</button>
    <button data-action="transport/portal">Transportation Portal</button>
    <button data-action="packages/packHome">Packages</button>
    <button data-action="admin/temp1">Admin Template 01</button>
    <!--<button data-action="employeeManagement/shiftHome">EmployeeShift Management</button>-->
    <button data-action="employeeManagement/registerHome">Employee Registration</button>
   <button data-action="employeeManagement/managementHome">Employee Management</button>
</form>


<jsp:include page="../common/footer.jsp"/>



<script>
    document.addEventListener("DOMContentLoaded", function () {
        const transportForm = document.getElementById("transportForm");
        const buttons = transportForm.querySelectorAll("button");

        buttons.forEach(function (button) {
            button.addEventListener("click", function () {
                transportForm.action = this.getAttribute("data-action");
            });
        });
    });

</script>
</body>
</html>