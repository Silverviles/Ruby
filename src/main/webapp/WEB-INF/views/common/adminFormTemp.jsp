<%--
  Created by IntelliJ IDEA.
  User: sdilr
  Date: 4/13/2024
  Time: 12:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="contents">
        <header class="section_container header_container">
            <h2 class="booking_heading">Add a new room to the hotel</h2>
            <div class="booking_container">
                <form>
                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="roomType">
                            <label>Room Type</label>
                        </div>
                        <p>Type of the room</p>
                    </div>
                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="checkInDate">
                            <label>Price</label>
                        </div>
                        <p>price of the room</p>
                    </div>
                    <div class="form_group">
                        <div class="input_group">
                            <label>Guests</label>
                            <input type="text" name="guests">
                        </div>
                        <p>No of guests can added</p>
                    </div>
                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="checkOutDate">
                            <label>Info</label>
                        </div>
                        <p>Description about the room</p>
                    </div>
                    <button class="btn">Add</button>
                </form>
                <div class="header_content">
                    <div class="popular_card">
                        <img src=".vscode/room1_double_luxe.jpg" alt="popular room">
                        <div class="popular_content">
                            <div class="popular_card_header">
                                <h4>Pinky Room</h4>
                                <h4>$1000</h4>
                            </div>
                            <hr>
                            <p>Double Luxury room, Ocean view</p>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
</div>
</body>
</html>
