<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 5/4/2024
  Time: 4:33 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    @SuppressWarnings("unchecked") List<Menu> menuList = (List<Menu>) request.getAttribute("menus");
%>

<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" class="searchInput" aria-label="Search Input" id="searchFoodInput" placeholder="Search by Food Name">
    </div>

    <table id="foodTable" class="adminTable">
        <thead class="tableHead">
        <tr>
            <th>Food ID</th>
            <th>Food Name</th>
            <th>Meal Type</th>
            <th>Dish Type</th>
            <th>Price</th>
            <th>Availability</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody class="tableBody">
        <% if (menuList != null && !menuList.isEmpty()) { %>
        <% for (Menu menu : menuList) { %>
        <tr>
            <td><%= menu.getId()%></td>
            <td><%= menu.getMenuName()%></td>
            <td><%= menu.getMealType()%></td>
            <td><%= menu.getDishType()%></td>
            <td><%= menu.getPrice()%></td>
            <td><%= menu.getAvailability()%></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/food/navigateToUpdate">
                    <input type="hidden" value="<%= menu.getId()%>" name="menuId"/>
                    <button class="edit-button">Edit</button>
                </form>
                <form method="post" action="${pageContext.request.contextPath}/food/delete">
                    <input type="hidden" value="<%= menu.getId()%>" name="menuId"/>
                    <button class="delete-button">Delete</button>
                </form>
            </td>
        </tr>
        <% } %>
        <% } %>
        </tbody>
    </table>
</div>
