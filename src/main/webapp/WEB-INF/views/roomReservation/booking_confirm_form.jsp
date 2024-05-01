<%@ page import="com.happyman.Ruby.masterService.dao.Room" %><%--
  Created by IntelliJ IDEA.
  User: Tashini
  Date: 11/04/2024
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<% Room room = (Room) request.getAttribute("room"); %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/roomReservation/Booking_confirm_form_css.css">
    <title>Room Booking</title>
</head>
<body>
<header class="section_container header_container">
    <h2 class="booking_heading">Confirm Your Booking</h2>
    <div class="booking_container">
        <form method="post" action="${pageContext.request.contextPath}/booking/room">
            <input type="hidden" name="roomId" value="<%= room.getRoomId()%>">
            <div class="form_group">
                <div class="input_group">
                    <input id="roomType" type="text" name="roomType" value="<%= room.getRoomType()%>" disabled>
                    <label for="roomType">Room Type</label>
                </div>
                <p>What type of a room do you prefer?</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input id="startDate" type="date" name="startDate" value="2024-05-04" min="2024-05-04">
                    <label for="startDate" class="focus">Check-in date</label>
                </div>
                <p>Add date</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input id="endDate" type="date" name="endDate" value="2024-05-04" min="2024-05-04">
                    <label for="endDate" class="focus">Check-out date</label>
                </div>
                <p>Add date</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input id="noGuest" type="number" name="noGuest" max="<%= room.getRoomCapacity()%>">
                    <label for="noGuest">Guests</label>
                </div>
                <p>add the number of guests</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input id="price" type="text" name="fullPrice" value="<%=room.getRoomPrice()%>" readonly>
                    <label for="price">Price</label>
                </div>
                <p>room price for a day</p>
            </div>
            <input type="submit" class="btn" value="Confirm"/>
        </form>
        <div class="header_content">
            <div class="popular_card">
                <img src="${imageName}" alt="popular room">
                <div class="popular_content">
                    <div class="popular_card_header">
                        <input type="hidden" name="roomId" value="<%= room.getRoomId()%>">
                        <h4><%= room.getRoomName()%></h4>
                        <h4 id="roomPrice"><%= room.getRoomPrice()%></h4>
                    </div><hr>
                    <p><%= room.getRoomType() + ": " + (room.getRoomStatus() ? "Available" : "Not Available") %></p>
                </div>
            </div>
        </div>
    </div>
    <script>
		document.addEventListener('DOMContentLoaded', function() {
			const startDateInput = document.getElementById('startDate');
			const endDateInput = document.getElementById('endDate');
			const pricePerDay = parseInt(document.getElementById('roomPrice').textContent);

			function calculateDays(startDate, endDate) {
				const start = new Date(startDate);
				const end = new Date(endDate);
				const millisecondsPerDay = 1000 * 60 * 60 * 24;
				return Math.round((end - start) / millisecondsPerDay);
			}

			function updateTotalPrice() {
				const startDate = startDateInput.value;
				const endDate = endDateInput.value;
				const numDays = calculateDays(startDate, endDate) + 1;
				document.getElementById('price').value = pricePerDay * numDays;
			}

			startDateInput.addEventListener('change', updateTotalPrice);
			endDateInput.addEventListener('change', updateTotalPrice);

			updateTotalPrice();
		});
    </script>
</header>
</body>
</html>
