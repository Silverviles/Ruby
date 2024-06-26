<%@ page import="com.happyman.Ruby.masterService.dao.Reservation" %><%--
  Created by IntelliJ IDEA.
  User: tharindu
  Date: 18/04/2024
  Time: 17:48
--%>
<% Reservation reservation = (Reservation) request.getAttribute("reservation"); %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transport Form</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/transportation/transportForm.css" />
    <script type="module" src="${pageContext.request.contextPath}/scripts/transportation/transportForm.js"></script>
    <script type="module" src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/images/transportation/transportBackground.jpg')">
<div class="container">
    <div class="inner-container">
        <div class="left">
            <form method="post" action="${pageContext.request.contextPath}/booking/transport">
                <input type="hidden" id="bookingId" name="bookingId" value="<%= reservation.getBookingId()%>">
                <div class="input-container">
                    <div>
                        <label for="pac-input">Destination:</label><br>
                        <input type="text" id="pac-input" name="destination" placeholder="Destination"
                               aria-label="destination" required/>
                    </div>
                    <div>
                        <label for="distance">Distance:</label><br>
                        <input type="text" id="distance" name="distance" placeholder="Distance" readonly
                               aria-label="distance"/>
                    </div>
                    <div>
                        <label for="duration">Duration:</label><br>
                        <input type="text" id="duration" name="duration" placeholder="Duration" readonly
                               aria-label="duration"/>
                    </div>
                    <div>
                        <label for="vehicleDropdown">Select Vehicle:</label><br>
                        <select id="vehicleDropdown" name="vehicle" aria-label="vehicles">
                            <option value="car">Car</option>
                            <option value="van">Van</option>
                            <option value="bus">Bus</option>
                        </select>
                    </div>
                    <div>
                        <label for="pricePerKilometer">Total Cost:</label><br>
                        <input type="text" id="pricePerKilometer" name="totalCost"
                               aria-label="pricePerKilometer"/>
                    </div>
                    <div class="buttonDiv">
                        <button class="transportButton" id="skip" name="action" value="Skip">Skip</button>
                        <button class="transportButton" id="continue" name="action" value="Continue">Book a Vehicle</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="right">
            <div class="map-div">
                <div id="map"></div>
            </div>
        </div>
    </div>
</div>

<script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBfPafF0R1oIb1vV3sk2plRSQBvOtU8At8&callback=initAutocomplete&libraries=places&v=weekly"
        defer></script>
</body>
</html>