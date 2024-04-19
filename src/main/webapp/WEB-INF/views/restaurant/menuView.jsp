<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 4/20/2024
  Time: 2:12 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <select id="mealTypeFilter" onchange="filterByMealType(this.value)">
                <option value="all">All</option>
                <option value="breakfast">Breakfast</option>
                <option value="lunch">Lunch</option>
                <option value="dinner">Dinner</option>
            </select>
        </th>
        <th>
            <select id="dishTypeFilter" onchange="filterByDishType(this.value)">
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
    <!-- Meal items will be populated here -->
    </tbody>
</table>

<script src="${pageContext.request.contextPath}/scripts/restaurant/menuView.js"></script>
</body>
</html>

