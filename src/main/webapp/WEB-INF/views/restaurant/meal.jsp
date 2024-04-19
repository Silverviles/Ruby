<%--
  Created by IntelliJ IDEA.
  User: tharindu
  Date: 19/04/2024
  Time: 09:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Food" %>
<%@ page import="java.util.List" %><%
    List<Food> foodList = (List<Food>) request.getAttribute("foodList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Food Menu</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/restaurant/meal.css">
</head>
<body>
<div class="container">
    <h1>Pick your Meal</h1>
    <div class="filter-buttons">
        <button id="breakfast-btn" class="filter-btn">Breakfast</button>
        <button id="launch-btn" class="filter-btn">Launch</button>
        <button id="dinner-btn" class="filter-btn">Dinner</button>
        <button id="main-dishes-btn" class="filter-btn active">
            Main Dishes
        </button>
        <button id="drinks-btn" class="filter-btn">Drinks</button>
        <button id="desserts-btn" class="filter-btn">Desserts</button>
    </div>
    <table id="food-table">
        <thead>
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Add</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody id="food-list">
        <!-- Food items will be dynamically added here -->
        </tbody>
    </table>

    <div class="selected-food">
        <h2>Selected Food</h2>
        <ul id="selected-food-list"></ul>
    </div>
</div>

<div style="display: flex; justify-content: center;">
    <form method="get" action="${pageContext.request.contextPath}/restaurant/summary">
        <button class="btn">Continue</button>
    </form>
</div>
<script src="${pageContext.request.contextPath}/scripts/restaurant/meal.js"></script>
<script>
	<% for (Food food : foodList) { %>
	foodItems.push({
		name: "<%= food.getFoodName() %>",
		category: "<%= food.getFoodCategory() %>",
		suitableFor: "<%= food.getFoodCategory() %>",
		imgSrc: "<%= food.getFoodImg() %>",
		price: "<%= food.getFoodPrice() %>",
		quantity: "1"
	});
	<% } %>
</script>
</body>
</html>
