<%@ page import="com.happyman.Ruby.masterService.dao.Menu" %><%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 4/20/2024
  Time: 1:07 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Menu menu = (Menu) request.getAttribute("editMenu"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Meal Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/restaurant/addMenuForm.css">
</head>
<body>
<form id="mealForm" method="post" action="${pageContext.request.contextPath}/restaurant/adminMenuPlan">
    <label for="mealName">Meal name:</label>
    <input type="text" id="mealName" name="menuName" value="<%= (menu != null) ? menu.getMenuName() : ""%>" required />

    <label for="mealType">Meal Type:</label>
    <input type="text" id="mealType" name="mealType" value="<%= (menu != null) ? menu.getMealType() : ""%>" required />

    <label for="dishType">Dish Type:</label>
    <input type="text" id="dishType" name="dishType" value="<%= (menu != null) ? menu.getDishType() : ""%>" required />

    <label for="price">Price:</label>
    <input
            type="number"
            id="price"
            name="price"
            min="0"
            step="0.01"
            value="<%= (menu != null) ? menu.getPrice() : ""%>"
            required
    />
    <input type="submit" value="Submit" />
</form>
</body>
</html>

