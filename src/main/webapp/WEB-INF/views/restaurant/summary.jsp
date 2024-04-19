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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/restaurant/summary.css">
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
        <form method="post" action="${pageContext.request.contextPath}/restaurant/dateTime">
            <button>Edit Reservation</button>
        </form>
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

        <form action="${pageContext.request.contextPath}/restaurant/meal">
            <button>Edit Order</button>
        </form>
    </div>
</div>

<div style="display: flex; justify-content: center; gap: 2rem">
    <div>
        <button class="btn" id="pdfButton">Download a copy of summary</button>
    </div>
    <div><button class="btn">Proceed to Payment</button></div>
</div>
<div>
    <h1>Footer</h1>
</div>
<script src="${pageContext.request.contextPath}/scripts/restaurant/summary.js"></script>
</body>
</html>
