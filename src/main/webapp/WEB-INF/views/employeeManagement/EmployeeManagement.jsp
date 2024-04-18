<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Employee" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    List<Employee> employeeList = new ArrayList<>();
	employeeList = (List<Employee>) request.getAttribute("employees");
%>

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
<%--        <th>Mobile Number</th>--%>
<%--        <th>Shift Type</th>--%>
<%--        <th>Base Salary</th>--%>
<%--        <th>Action</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody id="employeeBody">--%>
<%--    <% if (employeeList != null && !employeeList.isEmpty()) { %>--%>
<%--        <% for (Employee employee : employeeList) { %>--%>
<%--        <tr>--%>
<%--            <td><%= employee.getId()%></td>--%>
<%--            <td><%= employee.getFirstName()%></td>--%>
<%--            <td><%= employee.getLastName()%></td>--%>
<%--            <td><%= employee.getEmail()%></td>--%>
<%--            <td><%= employee.getMobileNo()%></td>--%>
<%--            <td><%= employee.getShiftCategory()%></td>--%>
<%--            <td><%= employee.getBaseSalary()%></td>--%>
<%--            <td>--%>
<%--                <form>--%>
<%--                    <input type="submit" value="<%= employee.getId()%>" name="delete">--%>
<%--                </form>--%>
<%--                <form>--%>
<%--                    <input type="submit" value="<%= employee.getId()%>" name="update">--%>
<%--                </form>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <% } %>--%>
<%--    <% } %>--%>
<%--    </tbody>--%>
<%--</table>--%>

<h1>Employee Management</h1>

<div class="searchContainer">
    <input type="text" id="searchInput" placeholder="Search by Employee ID">
    <button onclick ="searchEmployee()">Search</button>

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
    <!-- Employee rows will be rendered here -->

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
            <form>
                <input type="submit" value="<%= employee.getId()%>" name="delete">
            </form>
            <form>
                <input type="submit" value="<%= employee.getId()%>" name="update">
            </form>
        </td>
    </tr>
    <% } %>
    <% } %>
    </tbody>
</table>

