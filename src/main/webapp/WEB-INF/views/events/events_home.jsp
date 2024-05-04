<%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 5/2/2024
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/events/event_home.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Home</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="background-overlay" style="background-image: url('${pageContext.request.contextPath}/images/events/villa.jpg');"></div>
<div class="slideshow-container">
    <div class="slide">
        <img src="${pageContext.request.contextPath}/images/events/events.jpg" alt="Slide 1">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/images/events/outdoor.cms" alt="Slide 2">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/images/events/rose.jpg" alt="Slide 3">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/images/events/food.jpg" alt="Slide 3">
    </div>

    <div class="navigation">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
        <span class="dot" onclick="currentSlide(4)"></span>
    </div>
</div>
<div class="home-text">
    <p>Available Events</p>
</div>
<div class="event-content">

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/birthday.jpg">
        </div>
        <div class="item-info">
            <h1  style="color: black">BirthDay Event</h1>
            <p>"Enjoy a fancy birthday party at our villa! Have delicious food, live music, and custom decorations in a lovely place. Make lasting memories with us!"</p>
            <form method="post" action="${pageContext.request.contextPath}/eventBooking/eventBookingForm">
                <button class="select-button">Book Now</button>
            </form>

        </div>
    </div>

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/holi.jpg">
        </div>
        <div class="item-info">
            <h1  style="color: black">Holi Event</h1>
            <p>"Celebrate Holi at our villa! Enjoy vibrant colors, traditional music, and delectable treats in a festive atmosphere. Create joyful memories with friends and family!"</p>

            <form method="post" action="${pageContext.request.contextPath}/eventBooking/eventBookingForm">
                <button class="select-button">Book Now</button>
            </form>
        </div>
    </div>

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/valentine.jpg">
        </div>
        <div class="item-info">
            <h1  style="color: black">Valentine Event</h1>
            <p> "Experience Valentine's Day at our villa! Delight in romantic ambiance, exquisite cuisine, and heartfelt decor in a charming setting. Cherish special moments with your beloved!"</p>
            <form method="post" action="${pageContext.request.contextPath}/eventBooking/eventBookingForm">
                <button class="select-button">Book Now</button>
            </form>
        </div>
    </div>

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/newyear.jpg">
        </div>
        <div class="item-info">
            <h1  style="color: black">New Year Event</h1>
            <p>"Ring in the New Year at our villa! Revel in festive cheer, gourmet delights, and dazzling decorations in a luxurious environment. Welcome the new beginnings in style!"</p>
            <form method="post" action="${pageContext.request.contextPath}/eventBooking/eventBookingForm">
                <button class="select-button">Book Now</button>
            </form>
        </div>
    </div>

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/wedding.jpg">
        </div>
        <div class="item-info">
            <h1  style="color: black">Wedding Event</h1>
            <p>"Say 'I do' at our villa! Exchange vows amidst elegance, enjoy gourmet feasts, and dance to live music in a picturesque setting. Begin your forever with cherished memories!"</p>
            <form method="post" action="${pageContext.request.contextPath}/eventBooking/eventBookingForm">
                <button class="select-button">Book Now</button>
            </form>

        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/scripts/events/event_slideshow.js"></script
<jsp:include page="../common/footer.jsp"/>
</body>
</html>

