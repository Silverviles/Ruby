<%@ page import="com.happyman.Ruby.packages.dto.PackageDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Addon" %>
<%
    List<PackageDTO> packagesList = (List<PackageDTO>) request.getAttribute("allPackages");
%>

<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" class="searchInput" aria-label="Search Input" id="searchPackageInput" placeholder="Search by Package Name">
    </div>

    <table id="packageTable" class="adminTable" style="width: 1100px;">
        <thead class="tableHead">
        <tr>
            <th>Package ID</th>
            <th>Package Name</th>
            <th style="width: 500px;">Package Description</th>
            <th>Price</th>
            <th>Discontinue Date</th>
            <th>Availability</th>
            <th>Maximum Adults</th>
            <th>No of Nights</th>
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
            <td><%= packageDTO.getPackageNoOfNights()%></td>

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
