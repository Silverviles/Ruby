<%@ page import="com.happyman.Ruby.masterService.dao.Reservation" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% Reservation reservation = (Reservation) request.getAttribute("reservation"); %>
<!DOCTYPE html>
<html>
<title>Billing and payments</title>
<head>
    <title>Happy Man Village
        <h2>Payment Gateway</h2></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/billingAndPayments/billingHomeCSS.css">
</head>
<body>
<h1>Payments</h1>
<form method="post" action="${pageContext.request.contextPath}/booking/generateBill">
    <input type="hidden" id="bookingId" name="bookingId" value="<%= reservation.getBookingId()%>">
    <fieldset>
        <legend>Customer Details</legend>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address">
        </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email">
        </div>
    </fieldset>
    <fieldset>
        <legend>Items</legend>
        <table>
            <tr>
                <th>Description</th>
                <th>Price</th>
            </tr>
            <tr>
                <% if(reservation.getRoomReservation() != null) { %>
                <td>Room Reservation</td>
                <td id="roomPrice"><%= String.format("%.2f", reservation.getRoomReservation().getFullPrice())%></td>
                <% } %>
            </tr>
            <tr>
                <% if(reservation.getMenu() != null) { %>
                <td>Menu</td>
                <td id="menuPrice"><%= String.format("%.2f", reservation.getMenu().getPrice())%></td>
                <% } %>
            </tr>
            <tr>
                <% if(reservation.getPackageField() != null) { %>
                <td>Package</td>
                <td id="packagePrice"><%= String.format("%.2f", reservation.getPackageField().getPrice())%></td>
                <% } %>
            </tr>
            <tr>
                <% if(reservation.getEvent() != null) { %>
                <td>Event</td>
                <td id="eventPrice"><%= String.format("%.2f", reservation.getEvent().getPrice())%></td>
                <% } %>
            </tr>
            <tr>
                <% if(reservation.getTrip() != null) { %>
                <td>Room Reservation</td>
                <td id="tripPrice"><%= String.format("%.2f", reservation.getTrip().getTotalCost())%></td>
                <% } %>
            </tr>
        </table>
    </fieldset>
    <fieldset>
        <legend>Summary</legend>
        <div class="form-group">
            <label for="subtotal">Sub Total:</label>
            <input type="text" id="subtotal" name="subtotal" value="" class="uneditable-textbox" readonly>

            <br><br>
        </div>
        <div class="form-group">
            <label for="deposit">15% Refundable Deposit:</label>
            <input type="text" id="deposit" name="deposit" value="" class="uneditable-textbox" readonly>
            <br><br>
        </div>
        <div class="form-group">
            <label for="total">Total:</label>
            <input type="text" id="total" name="total" value="" class="uneditable-textbox" readonly>
            <br><br>
        </div>
    </fieldset>
    <fieldset>
        <legend>Payment Plan</legend>
        <div class="form-group">
            <label for="payment">Payment Method:</label>
            <select id="payment" name="paymentMethod">
                <option value="bank">Bank Transfer</option>
                <option value="online">Online Payment</option>
            </select>
        </div>
    </fieldset>
    <button type="submit" class="submit-button">Submit</button>
</form>
<script>
	document.addEventListener("DOMContentLoaded", () => {
		setTimeout(() => {
			const roomPriceElement = document.getElementById("roomPrice");
			const menuPriceElement = document.getElementById("menuPrice");
			const packagePriceElement = document.getElementById("packagePrice");
			const eventPriceElement = document.getElementById("eventPrice");
			const tripPriceElement = document.getElementById("tripPrice");

			const roomPrice = roomPriceElement ? parseFloat(roomPriceElement.innerHTML) : 0;
			const menuPrice = menuPriceElement ? parseFloat(menuPriceElement.innerHTML) : 0;
			const packagePrice = packagePriceElement ? parseFloat(packagePriceElement.innerHTML) : 0;
			const eventPrice = eventPriceElement ? parseFloat(eventPriceElement.innerHTML) : 0;
			const tripPrice = tripPriceElement ? parseFloat(tripPriceElement.innerHTML) : 0;

			const subTotal = roomPrice + menuPrice + packagePrice + eventPrice + tripPrice;
			const refundableDeposit = subTotal * 15 / 100;
			const total = subTotal + refundableDeposit;

			document.getElementById("subtotal").value = subTotal.toFixed(2);
			document.getElementById("deposit").value = refundableDeposit.toFixed(2);
			document.getElementById("total").value = total.toFixed(2);
		}, 1000);
	});
</script>
</body>
</html>

