<%@ page import="com.happyman.Ruby.packages.dto.PackageDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Addon" %>
<% List<PackageDTO> packageList = (List<PackageDTO>) request.getAttribute("packages"); %>

<header class="section_container header_container">
    <h2 class="booking_heading">Packages</h2>
    <div class="booking_container">
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Discontinue Date</th>
                <th>Availability</th>
                <th>Type</th>
                <th>No of Max Adults</th>
                <th>Addons</th>
            </tr>

            <div class="tbody">
                <% for (PackageDTO packageDTO : packageList) {%>
                    <tr>
                        <td><%= packageDTO.getId()%>></td>
                        <td><%= packageDTO.getName()%>
                        </td>
                        <td><%= packageDTO.getDescription()%>></td>
                        <td><%= packageDTO.getPrice()%>></td>
                        <td><%= packageDTO.getDiscontinueDate()%>></td>
                        <td><%= packageDTO.getAvailability()%>
                        </td>
                        <td><%= packageDTO.getType()%>></td>
                        <td><%= packageDTO.getMaxAdults()%>
                        </td>
                        <td>
                            <% for (Addon addon : packageDTO.getAddonList()) {%>
                            <div><%= addon.getAddonName()%>
                            </div>
                            <br>
                            <% } %>
                        </td>
                    </tr>

                    <div class="edit" title="Edit">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </div>

                    <div class="delete" title="Delete">
                        <i class="fa-solid fa-trash"></i>
                    </div>
                <% } %>
            </div>

        </table>
    </div>
</header>

<script src="${pageContext.request.contextPath}/scripts/admin/admin.js"></script>