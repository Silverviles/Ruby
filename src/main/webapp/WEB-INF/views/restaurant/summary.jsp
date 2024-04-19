<%--
  Created by IntelliJ IDEA.
  User: tharindu
  Date: 19/04/2024
  Time: 09:33
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"
            integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    ></script>
    <title>Reservation Card</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        /* Card container */
        .card {
            width: 400px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: 20px auto;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        /* Title */
        .card h2 {
            margin: 0 0 20px 0;
            color: #333;
            font-size: 28px;
        }

        /* Content container */
        .content {
            display: flex;
            justify-content: space-between;
        }

        /* Content labels */
        .label {
            color: #555;
            font-size: 18px;
        }

        /* Content values */
        .value {
            color: #333;
            font-size: 18px;
            font-weight: bold;
        }

        /* Button */
        .card button {
            padding: 12px 24px;
            border: none;
            background-color: #6366f1;
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
            align-self: flex-end;
        }

        .card button:hover {
            background-color: #4f52b3;
        }

        /* Dishes container */
        .dishes {
            margin-bottom: 20px;
        }

        /* Dish item */
        .dish {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        /* Dish details */
        .dish .name,
        .dish .quantity,
        .dish .price {
            font-size: 18px;
            color: #333;
        }

        /* Service charge and total price */
        .service-charge,
        .total {
            display: flex;
            justify-content: space-between;
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
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
</head>
<body>
<div>
    <h1>Header</h1>
</div>
<div id="card-holder">
    <div class="card">
        <h2>Reservation Details</h2>
        <div class="content">
            <div class="label">Number of Guests:</div>
            <div class="value">4</div>
        </div>
        <div class="content">
            <div class="label">Date:</div>
            <div class="value" id="date">April 14, 2024</div>
        </div>
        <div class="content">
            <div class="label">Time:</div>
            <div class="value" id="secTime">7:00 PM</div>
        </div>
        <div class="content">
            <div class="label">Table Number:</div>
            <div class="value" id="secTable"></div>
        </div>
        <button onclick="window.location.href='DateTime.html'">Edit Reservation</button>
    </div>

    <div class="card">
        <h2>Order Details</h2>

        <!-- Dishes -->
        <div class="dishes" id="dish-list"></div>

        <!-- Service charge and total price -->
        <div class="service-charge">
            <div>Service Charge:</div>
            <div>$5.00</div>
        </div>
        <div class="total">
            <div>Total:</div>
            <div id="total-price">$5.00</div>
        </div>

        <button onclick="window.location.href='Meal.html'">Edit Order</button>
    </div>
</div>

<div style="display: flex; justify-content: center; gap: 2rem">
    <div>
        <button class="btn" id="pdfButton">Download a copy of summary</button>
    </div>
    <div><button class="btn">Procced to Payment</button></div>
</div>
<div>
    <h1>Footer</h1>
</div>

<script>
	document.addEventListener("DOMContentLoaded", function () {
		// Retrieve the number of guests from localStorage
		var selDate = localStorage.getItem("selectedDate");
		var selTime = localStorage.getItem("selectedTime");
		var selTable = localStorage.getItem("selectedTable");

		// Update the value of the guests element with the retrieved value
		document.getElementById("date").textContent = selDate;
		document.getElementById("secTime").textContent = selTime;
		document.getElementById("secTable").textContent = selTable;

		// Retrieve saved food items from localStorage
		const savedItems = JSON.parse(localStorage.getItem("selectedFoods"));

		// Get the dish list container
		const dishList = document.getElementById("dish-list");

		// Initialize total price to 0
		let totalPrice = 0;

		// Loop through saved items and create HTML for each dish
		savedItems.forEach((item) => {
			const dishDiv = document.createElement("div");
			dishDiv.classList.add("dish");
			dishDiv.innerHTML = `
      <div class="name">${item.name}</div>
      <div class="quantity">${item.quantity}</div>
      <div class="price">$${item.totalPrice}</div>
    `;
			dishList.appendChild(dishDiv);

			// Add the price of the dish to the total price
			totalPrice += parseFloat(item.totalPrice);
		});

		// Get the total price element
		const totalPriceElement = document.getElementById("total-price");

		// Add the service charge to the total price
		totalPrice += 5.0; // Assuming a service charge of $5.00
		totalPriceElement.textContent = `$${totalPrice.toFixed(2)}`;

		function download_pdf(id) {
			html2pdf().from(id).save();
		}

		document
			.getElementById("pdfButton")
			.addEventListener("click", function () {
				const d = document.getElementById('card-holder')
				download_pdf(d);
			});
	});
</script>
</body>
</html>
