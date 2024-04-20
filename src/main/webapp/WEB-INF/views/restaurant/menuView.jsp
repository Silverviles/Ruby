<%@ page import="com.happyman.Ruby.masterService.dao.Food" %>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Menu" %><%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 4/20/2024
  Time: 2:12 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<% List<Menu> foodList = (List<Menu>) request.getAttribute("foods"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Meal Table</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/restaurant/menuView.css">
</head>
<body>
<table id="mealTable">
    <thead>
    <tr>
        <th>Image</th>
        <th>Name</th>
        <th>
            <select id="mealTypeFilter">
                <option value="all">All</option>
                <option value="breakfast">Breakfast</option>
                <option value="lunch">Lunch</option>
                <option value="dinner">Dinner</option>
            </select>
        </th>
        <th>
            <select id="dishTypeFilter">
                <option value="all">All</option>
                <option value="mainDish">Main Dish</option>
                <option value="drink">Drink</option>
                <option value="dessert">Dessert</option>
            </select>
        </th>
        <th>Price</th>
        <th>Actions</th>

    </tr>
    </thead>
    <tbody id="mealBody">
    <% if (foodList != null && !foodList.isEmpty()) {%>
    <% for (Menu food : foodList) { %>
    <td>Image URL</td>
    <td><%= food.getMenuName()%></td>
    <td><%= food.getMealType()%></td>
    <td><%= food.getDishType()%></td>
    <td><%= food.getPrice()%></td>
    <td>
        <form method="post" action="${pageContext.request.contextPath}">
            <button class="edit-button" name="menuId" value="<%= food.getId()%>">Edit</button>
        </form>
        <form method="post" action="${pageContext.request.contextPath}/restaurant/deleteMenu">
            <button class="delete-button" name="menuId" value="<%= food.getId()%>">Delete</button>
        </form>
    </td>
    <% }%>
    <% } %>
    </tbody>
</table>

</body>
</html>

