<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: User--%>
<%--  Date: 4/16/2024--%>
<%--  Time: 3:39 AM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Employee Management</title>--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/employeeManagement/EmployeeManagement.css">--%>

<%--</head>--%>
<%--<body>--%>
<%--<h1>Employee Management</h1>--%>

<%--<div id="searchContainer">--%>
<%--    <input type="text" id="searchInput" placeholder="Search by First Name">--%>
<%--    <button onclick="searchEmployee()">Search</button>--%>
<%--</div>--%>

<%--<table id="employeeTable">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>First Name</th>--%>
<%--        <th>Last Name</th>--%>
<%--        <th>Email</th>--%>
<%--        <th>Contact Number</th>--%>
<%--        <th>Salary</th>--%>
<%--        <th>Shift Type</th>--%>
<%--        <th>Action</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody id="employeeBody">--%>
<%--    <!-- Iterate over the list of employees and populate table rows -->--%>
<%--    <tr th:each="employee : ${employees}">--%>
<%--        <td th:text="${employee.employeeId}">Employee ID</td>--%>
<%--        <td th:text="${employee.first_name}">First Name</td>--%>
<%--        <td th:text="${employee.last_name}">Last Name</td>--%>
<%--        <td th:text="${employee.email}">Email</td>--%>
<%--        <td th:text="${employee.mobile_no}">Contact Number</td>--%>
<%--        <td th:text="${employee.base_salary}">Salary</td>--%>
<%--        <td>Shift Type</td> <!-- Example column, replace with actual data -->--%>
<%--        <td>Action</td> <!-- Example column, replace with action buttons or links -->--%>
<%--    </tr>--%>
<%--    </tbody>--%>
<%--</table>--%>


<%--<script src="${pageContext.request.contextPath}/scripts/employeeManagement/EmployeeManagement.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/16/2024
  Time: 3:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/employeeManagement/EmployeeManagement.css">

</head>
<body>
<h1>Employee Management</h1>

<div id="searchContainer">
    <input type="text" id="searchInput" placeholder="Search by First Name">
    <button onclick="searchEmployee()">Search</button>
</div>

<table id="employeeTable">
    <thead>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Contact Number</th>
        <th>Salary</th>
        <th>Shift Type</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody id="employeeBody">
    <!-- Iterate over the list of employees and populate table rows -->
    <c:forEach items="${employees}" var="employee">
        <tr>
            <td>${employee.employeeId}</td>
            <td>${employee.firstName}</td>
            <td>${employee.lastName}</td>
            <td>${employee.email}</td>
            <td>${employee.mobileNo}</td>
            <td>${employee.baseSalary}</td>
            <td>Shift Type</td> <!-- Example column, replace with actual data -->
            <td>Action</td> <!-- Example column, replace with action buttons or links -->
        </tr>
    </c:forEach>
    </tbody>
</table>

<script src="${pageContext.request.contextPath}/scripts/employeeManagement/EmployeeManagement.js"></script>
</body>
</html>

