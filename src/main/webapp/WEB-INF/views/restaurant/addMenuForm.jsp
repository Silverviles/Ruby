<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 4/20/2024
  Time: 1:07 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Meal Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/restaurant/addMenuForm.css">
</head>
<body>
<form id="mealForm">
    <label for="mealName">Meal name:</label>
    <input type="text" id="mealName" name="mealName" required />

    <label for="mealType">Meal Type:</label>
    <select id="mealType" name="mealType">
        <option value="breakfast">Breakfast</option>
        <option value="lunch">Lunch</option>
        <option value="dinner">Dinner</option>
    </select>

    <label for="dishType">Dish Type:</label>
    <select id="dishType" name="dishType">
        <option value="mainDish">Main Dish</option>
        <option value="drink">Drink</option>
        <option value="dessert">Dessert</option>
    </select>

    <label for="price">Price:</label>
    <input
            type="number"
            id="price"
            name="price"
            min="0"
            step="0.01"
            required
    />

    <label for="image">Image:</label>
    <input type="file" id="image" name="image" accept="image/*" required />

    <input type="submit" value="Submit" />
</form>
</body>
</html>

