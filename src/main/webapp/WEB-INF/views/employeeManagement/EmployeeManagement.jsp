<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Employee" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    List<Employee> employeeList = new ArrayList<>();
    employeeList = (List<Employee>) request.getAttribute("employees");
%>

<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" class="searchInput" aria-label="Search Input" id="searchEmployeeInput" placeholder="Search by First Name">
    </div>

    <table id="employeeTable" class="adminTable">
        <thead class="tableHead">
        <tr>
            <th>Employee ID</th>
            <th>Employee Name</th>
            <th>Email</th>
            <th>Contact Number</th>
            <th>Shift Type</th>
            <th>Base Salary</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody class="tableBody">
        <% if (employeeList != null && !employeeList.isEmpty()) { %>
        <% for (Employee employee : employeeList) { %>
        <tr>
            <td><%= employee.getId()%></td>
            <td><%= employee.getFirstName() + " " + employee.getLastName()%></td>
            <td><%= employee.getEmail()%></td>
            <td><%= employee.getMobileNo()%></td>
            <td><%= employee.getShiftCategory()%></td>
            <td><%= employee.getBaseSalary()%></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/employeeManagement/navigateToUpdate">
                    <input type="hidden" value="<%= employee.getId()%>" name="employeeId"/>
                    <button class="edit-button">Edit</button>
                </form>
                <form method="post" action="${pageContext.request.contextPath}/employeeManagement/delete">
                    <input type="hidden" value="<%= employee.getId()%>" name="employeeId"/>
                    <button class="delete-button">Delete</button>
                </form>
            </td>
        </tr>
        <% } %>
        <% } %>
        </tbody>
    </table>
</div>