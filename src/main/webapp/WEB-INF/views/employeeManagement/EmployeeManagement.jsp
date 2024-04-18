<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<html>
<head>
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
        <th>Mobile Number</th>
        <th>Shift Type</th>
        <th>Base Salary</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody id="employeeBody">
    <!-- Sample data will be added dynamically by JavaScript -->
    </tbody>
</table>

<script src="${pageContext.request.contextPath}/scripts/employeeManagement/EmployeeManagement.js"></script>
</body>
</html>
