<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 5/2/2024
  Time: 12:36 PM
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
            text-align: center;
            margin-bottom: 20px;
            display: flex;
        }

        .filter-dropdown {
            padding: 10px 20px;
            border: none;
            background-color: #ccc;
            color: #333;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            border-radius: 5px; /* Rounded corners */
        }

        .filter-dropdown:focus {
            outline: none; /* Remove focus outline */
        }

        /* Styling for dropdown arrow */
        .filter-dropdown:after {
            content: "\25BC"; /* Unicode for down arrow */
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
        }

        .filter-dropdown:hover {
            background-color: #b3b3b3;
        }

        .filter-dropdown option {
            padding: 10px 20px;
            background-color: #ccc;
            color: #333;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .filter-dropdown option:hover {
            background-color: #b3b3b3;
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

    <script src="${pageContext.request.contextPath}/scripts/restaurant/newMenu.js"></script>
</head>
<body>
<div class="container">
    <h1>Pick your Meal</h1>
    <div style="display: flex; justify-content: space-between;">
        <div class="filter-buttons">
            <select id="meal-dropdown" class="filter-dropdown">
                <option value="Breakfast">Breakfast</option>
                <option value="Launch">Launch</option>
                <option value="Dinner">Dinner</option>
            </select>
        </div>
        <div>
            <button class="btn" onclick="window.location='DateTime.html'">
                Continue
            </button>
        </div>
    </div>


    <table id="food-table">
        <thead>
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody id="food-list">
        <!-- Food items will be dynamically added here -->
        </tbody>
    </table>
</div>




</body>
</html>
