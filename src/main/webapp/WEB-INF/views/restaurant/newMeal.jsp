<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 5/2/2024
  Time: 12:25 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Food Menu</title>
    <style>
        /* CSS styles for the food menu */

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1000px;
            margin: 20px auto;
            padding: 0 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .filter-buttons {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .filter-btn {
            padding: 10px 20px;
            border: none;
            background-color: #ccc;
            color: #333;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .filter-btn.active {
            background-color: #6366f1;
            color: #fff;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ccc;
        }

        thead {
            background-color: #f2f2f2;
        }

        th,
        td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th:first-child,
        td:first-child {
            width: 20%;
        }

        th:nth-child(2),
        td:nth-child(2) {
            width: 40%;
        }

        th:nth-child(3),
        td:nth-child(3) {
            width: 20%;
            text-align: center;
        }

        button {
            padding: 5px 10px;
            border: none;
            background-color: #6366f1;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #4f52b3;
        }

        input[type="number"] {
            width: 40px;
            text-align: center;
        }

        .selected-food {
            margin-top: 20px;
        }
        .btn {
            display: inline-block;
            font-weight: 400;
            color: #fff;
            text-align: center;
            vertical-align: middle;
            user-select: none;
            background-color: #6366f1;
            border: 1px solid transparent;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.375rem;
            transition: all 0.15s ease-in-out;
            cursor: pointer;
            text-decoration: none;
        }

        .btn-primary {
            background-color: #6366f1;
        }

        .btn-primary:hover {
            background-color: #4f52b3;
        }
    </style>
    <script src="${pageContext.request.contextPath}/scripts/restaurant/newMeal.js"></script>

</head>
<body>
<div class="container">
    <h1>Pick your Meal</h1>
    <div class="filter-buttons">
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

<div style="display: flex; justify-content: center">
    <form action="${pageContext.request.contextPath}/restaurant/newsummary" method="get">

        <button class="btn">
            continue
        </button>

    </form>

</div>


</body>
</html>
