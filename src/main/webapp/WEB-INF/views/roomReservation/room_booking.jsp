<%--
  Created by IntelliJ IDEA.
  User: Tashini
  Date: 11/04/2024
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/roomReservation/roomstyle.css">
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
    <div class="header_image_container">
        <div class="header_content">
            <h1>Enjoy Your Dream Vacation</h1>
            <p>Book hotels and stay packages at lowest price.</p>
        </div>
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
            </form>
            <button id="searchBtn" class="btn"><i class="ri-search-line"></i></button>
        </div>
    </div>
</header>
<!-----------------------enf of the header part---------------------------------------------->
<section class="section_container popular_container">
    <h2 class="section_header">Popular Rooms</h2><br>
    <hr>
    <div class="popular_grid">
        <a class="card_link" href="Booking_confirm_form.jsp">
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
        </a>
        <a class="card_link" href="#">
            <div class="popular_card">
                <img src="${pageContext.request.contextPath}/images/roomReservation/room2_double.jpeg" alt="double room">
                <div class="popular_content">
                    <div class="popular_card_header">
                        <h4>Double Room</h4>
                        <h4>$800</h4>
                    </div><hr>
                    <p>Double room, King bed, Garder view</p>
                </div>
            </div>
        </a>
        <a class="card_link" href="#">
            <div class="popular_card">
                <img src="${pageContext.request.contextPath}/images/roomReservation/room3_fam_luxe.jpeg" alt="Luxe family room">
                <div class="popular_content">
                    <div class="popular_card_header">
                        <h4>Family Room</h4>
                        <h4>$2000</h4>
                    </div><hr>
                    <p>Luxe family room, Outdoor pool</p>
                </div>
            </div>
        </a>
        <a class="card_link" href="#">
            <div class="popular_card">
                <img src="${pageContext.request.contextPath}/images/roomReservation/room4_triple_luxe.jpeg" alt="Triple luxe room">
                <div class="popular_content">
                    <div class="popular_card_header">
                        <h4>Triple Room</h4>
                        <h4>$1600</h4>
                    </div><hr>
                    <p>Triple Luxe room, Garder view</p>
                </div>
            </div>
        </a>
        <a class="card_link" href="#">
            <div class="popular_card">
                <img src="${pageContext.request.contextPath}/images/roomReservation/room5_triple.jpg" alt="Triple room">
                <div class="popular_content">
                    <div class="popular_card_header">
                        <h4>Triple Room</h4>
                        <h4>$1400</h4>
                    </div><hr>
                    <p>Room with three bed, Oceand view</p>
                </div>
            </div>
        </a>
        <a class="card_link" href="#">
            <div class="popular_card">
                <img src="${pageContext.request.contextPath}/images/roomReservation/room6_fam.jpeg" alt="Triple room">
                <div class="popular_content">
                    <div class="popular_card_header">
                        <h4>Family Room</h4>
                        <h4>$1800</h4>
                    </div><hr>
                    <p>4 bed room for family, Outdoor pool</p>
                </div>
            </div>
        </a>
        <br><br><br><br><p style="text-align: center;">Please note: all room sizes are approximate.</p>
    </div>
</section>

<!-----------------------end of rooms grid---------------------------->
<section class="section_container">
    <div class="reward_container">
        <p>100+ discount</p>
        <h4>Join rewards & discover amazing discount on your Booking</h4>
        <button class="reard_btn">Join Reward</button>
    </div>
</section>
<div class="footer_bar">
    Tashini S. Hansanee...
</div>
</body>
</html>