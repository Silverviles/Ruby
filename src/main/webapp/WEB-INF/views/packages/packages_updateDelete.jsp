<%@ page import="com.happyman.Ruby.packages.dto.PackageDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Addon" %>
<%
    List<PackageDTO> packagesList = new ArrayList<>();
    packagesList = (List<PackageDTO>) request.getAttribute("allPackages");
%>

<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" aria-label="Search Input" id="searchInput" placeholder="Search by First Name">
    </div>

    <table id="packageTable" class="adminTable">
        <thead class="tableHead">
        <tr>
            <th>Package ID</th>
            <th>Package Name</th>
            <th>Package Description</th>
            <th>Price</th>
            <th>Discontinue Date</th>
            <th>Availability</th>
            <th>Maximum Adults</th>
            <th>Addons</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody class="tableBody">
        <% if (packagesList != null && !packagesList.isEmpty()) { %>
        <% for (PackageDTO packageDTO : packagesList) { %>
        <tr>
            <td><%= packageDTO.getId()%></td>
            <td><%= packageDTO.getPackageName()%></td>
            <td><%= packageDTO.getPackageDescription()%></td>
            <td><%= packageDTO.getPackagePrice()%></td>
            <td><%= packageDTO.getPackageDiscontinueDate()%></td>
            <td><%= packageDTO.getPackageAvailability()%></td>
            <td><%= packageDTO.getMaxAdults()%></td>
            <td><% if (!packageDTO.getAddonList().isEmpty()) { %>
                <ul>
                    <% for (Addon addon : packageDTO.getAddonList()) { %>
                        <li>
                            <input type="hidden" name="addonId" value="<%= addon.getId()%>">
                            <input type="hidden" name="packageId" value="<%= packageDTO.getId()%>">
                            <%= addon.getAddonName()%>
                        </li>
                </ul>
                <% } %>
                <% } %>
            </td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/packages/navigateToUpdate">
                    <input type="hidden" value="<%= packageDTO.getId()%>" name="packageId"/>
                    <button class="edit-button">Edit</button>
                </form>
                <form method="post" action="${pageContext.request.contextPath}/packages/deletePackage">
                    <input type="hidden" value="<%= packageDTO.getId()%>" name="packageId"/>
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
		table = document.getElementById("packageTable");
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