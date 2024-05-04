<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 5/3/2024
  Time: 9:11 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Order Form</title>
    <script src="${pageContext.request.contextPath}/scripts/restaurant/foodForm.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #b69c49;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #cbe9ca;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2),
            0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        h2 {
            font-weight: bold;
            color: #333;
            margin: 5px auto;
            text-align: center;
            font-size: xx-large;
        }

        form {
            margin-bottom: 20px;
            margin-top: 20px;
        }

        label {
            font-weight: bold;
            color: #000;
            font-size: 19px;
        }

        select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            border: none;
        }

        button {
            padding: 10px 20px;
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 19px;
            cursor: pointer;
            font-size: 18px;
            font-weight: 700;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2),
            0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        button:hover {
            background-color: #45a049;
        }

        .output {
            width: fit-content;
            font-size: 20px;
            margin: 40px auto;
        }

        .total-price {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
    </style>

</head>
<body>
<div class="container">
    <h2>Choose a Dish</h2>
    <form>
        <label for="mealType">Meal Type:</label>
        <select id="mealType">
            <option value="">Select Meal Type</option>
            <option value="breakfast">Breakfast</option>
            <option value="lunch">Lunch</option>
            <option value="dinner">Dinner</option>
        </select>
        <br />
        <label for="mainCourse">Main Course:</label>
        <select id="mainCourse">
            <option value="">Select Main Course</option>
            <option value="18.99">Hoppers</option>
            <option value="16.99">Rice and Curry</option>
            <option value="14.99">Pittu</option>
            <option value="22.99">String Hoppers</option>
        </select>
        <br />
        <label for="drink">Drinks:</label>
        <select id="drink">
            <option value="">Select Drinks</option>
            <option value="8.99">Lime Juice</option>
            <option value="7.99">Mango Juice</option>
            <option value="9.99">Coffee</option>
            <option value="5.99">Herbal Juice</option>
        </select>
        <br />
        <label for="dessert">Desserts:</label>
        <select id="dessert">
            <option value="">Select Desserts</option>
            <option value="6.99">Watalappan</option>
            <option value="7.99">Ice Cream</option>
            <option value="6.99">Chocolate Cake</option>
            <option value="5.99">Cheese Cake</option>
        </select>
        <br />
        <button type="button" onclick="calculateTotal()">
            Calculate Total
        </button>
    </form>
    <div class="output">
        <p id="mealTypeOutput"></p>
        <p id="mainCourseOutput"></p>
        <p id="drinkOutput"></p>
        <p id="dessertOutput"></p>
        <p class="total-price" id="totalPrice">Total Price: $0.00</p>
        <button>Proceed to Payment</button>
    </div>

</div>
</body>
</html>

