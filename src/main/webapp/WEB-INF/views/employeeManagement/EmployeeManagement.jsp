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
        <input type="text" aria-label="Search Input" id="searchInput" placeholder="Search by First Name">
    </div>

    <table id="adminTable" class="adminTable">
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

<script>
	function searchEmployee() {
		var input, filter, table, tr, td, i, txtValue;
		// Search bar id tag here
		input = document.getElementById("searchInput");
		filter = input.value.toUpperCase();

		// Table needs to be searched here
		table = document.getElementById("adminTable");
		tr = table.getElementsByTagName("tr");

		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[1]; // Index 1 for first name column
			if (td) {
				txtValue = td.textContent || td.innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	}

	window.onload = function () {
		var searchInput = document.getElementById("searchInput");
		searchInput.addEventListener("input", searchEmployee);
	};

</script>