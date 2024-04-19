<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Employee" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    List<Employee> employeeList = new ArrayList<>();
	employeeList = (List<Employee>) request.getAttribute("employees");
%>

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
    <% if (employeeList != null && !employeeList.isEmpty()) { %>
        <% for (Employee employee : employeeList) { %>
        <tr>
            <td><%= employee.getId()%></td>
            <td><%= employee.getFirstName()%></td>
            <td><%= employee.getLastName()%></td>
            <td><%= employee.getEmail()%></td>
            <td><%= employee.getMobileNo()%></td>
            <td><%= employee.getShiftCategory()%></td>
            <td><%= employee.getBaseSalary()%></td>
            <td>
<%--                <form action="${pageContext.request.contextPath}/employeeManagement/deleteEmployee" method="post">--%>
<%--                    <input type="submit"  value="<%= employee.getId()%>" name="delete">--%>
<%--                </form>--%>
<%--                <form action="${pageContext.request.contextPath}/employeeManagement/updateEmployeeDetails" method="post">--%>
<%--                    <input type="submit" value="<%= employee.getId()%>" name="update">--%>
<%--                </form>--%>


                    <form action="${pageContext.request.contextPath}/employeeManagement/deleteEmployee" method="post">
                         <input type="hidden" name="employeeId" value="<%= employee.getId()%>">
                                  <button type="submit" name="delete">Delete</button>
                   </form>
                   <form action="${pageContext.request.contextPath}/employeeManagement/updateEmployeeDetails" method="post">
                         <input type="hidden" name="employeeId" value="<%= employee.getId()%>">
                                   <button type="submit" name="update">Update</button>
                   </form>
            </td>
        </tr>
        <% } %>
    <% } %>
    </tbody>
</table>

