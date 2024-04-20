<%--
  Created by IntelliJ IDEA.
  User: Tashini
  Date: 19/04/2024
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/roomReservation/addroom.css">
    <title>Room Booking</title>
</head>

<body>

<header class="section_container header_container">
    <h2 class="booking_heading">Add New Package</h2>
    <div class="booking_container">
        <form method="post" action="${pageContext.request.contextPath}room/displayRoom">
            <div class="form_group">
                <div class="input_group">
                    <label for="roomName">Room Name</label><br>
                    <input type="text" id="roomName" name="roomName">
                </div>
                <p>Name of the room</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <label for="roomType">Room Type</label><br>
                    <input type="text" id="roomType" name="roomType">
                </div>
                <p>Type of the room</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <label for="roomCapacity">Capacity:</label><br>
                    <input type="number" id="roomCapacity" name="roomCapacity" required>
                </div>
                <p>Capacity of the room</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <label for="roomPrice">Price:</label><br>
                    <input type="number" id="roomPrice" name="roomPrice" step="0.01" required>
                </div>
                <p>Price of the room</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="checkbox" id="roomStatus" name="roomStatus" value="true">
                    <label for="roomStatus">: Status</label>
                </div>
                <p>1 for available, 0 for unavailable</p>
            </div>

            <button type="submit" class="btn">Add</button>
        </form>
    </div>
</header>

</body>
</html>