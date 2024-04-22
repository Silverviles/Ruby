<%--
  Created by IntelliJ IDEA.
  User: Tashini
  Date: 11/04/2024
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<nav>
    <div class="nav_logo">Happy Man Village</div>
    <ul class="nav_link">
        <li class="link"><a href="#">Home</a></li>
        <li class="link"><a href="#">Room</a></li>
        <li class="link"><a href="#">event</a></li>
        <li class="link"><a href="#">package</a></li>
    </ul>
</nav>
<header class="section_container header_container">
    <h2 class="booking_heading">Confirm Your Booking</h2>
    <div class="booking_container">
        <form>
            <div class="form_group">
                <div class="input_group">
                    <input type="text" name="roomType">
                    <label>Room Type</label>
                </div>
                <p>What type of a room do you prefer?</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="text" name="checkInDate">
                    <label>Check-in date</label>
                </div>
                <p>Add date</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="text" name="checkOutDate">
                    <label>Check-out date</label>
                </div>
                <p>Add date</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="text" name="guests">
                    <label>Guests</label>
                </div>
                <p>add the number of guests</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="text" name="Price">
                    <label>Price</label>
                </div>
                <p>room price for a day</p>
            </div>
            <button class="btn">Confirm</button>
        </form>
        <div class="header_content">
            <div class="popular_card">
                <img src="${pageContext.request.contextPath}/images/roomReservation/room1_double_luxe.jpg" alt="popular room">
                <div class="popular_content">
                    <div class="popular_card_header">
                        <h4>Pinky Room</h4>
                        <h4>$1000</h4>
                    </div><hr>
                    <p>Double Luxury room, Ocean view</p>
                </div>
            </div>
        </div>
    </div>

</header>
<section class="section_container">
    <div class="reward_container">
        <p>100+ discount</p>
        <h4>Make your billing & payment</h4>
        <button class="reard_btn">Pay Now</button>
    </div>
</section>

</body>
</html>
