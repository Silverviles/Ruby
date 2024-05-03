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
<div class="background-overlay" style="background-image: url('${pageContext.request.contextPath}/images/events/villa.jpg');"></div>
<div class="slideshow-container">
    <div class="slide">
        <img src="${pageContext.request.contextPath}/images/events/events.jpg" alt="Slide 1">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/images/events/decoration.jpg" alt="Slide 2">
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
    <h2>Available Events</h2>
</div>
<div class="event-content">

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/villa.jpg">
        </div>
        <div class="item-info">
            <p>Description for Event 1</p>
        </div>
    </div>

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/rose.jpg">
        </div>
        <div class="item-info">
            <p>Description for Event 1</p>
        </div>
    </div>

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/food.jpg">
        </div>
        <div class="item-info">
            <p>Description for Event 1</p>
        </div>
    </div>

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/events.jpg">
        </div>
        <div class="item-info">
            <p>Description forhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh Event 1</p>
        </div>
    </div>

    <div class="bitems">
        <div class="item-img">
            <img src="${pageContext.request.contextPath}/images/events/decoration.jpg">
        </div>
        <div class="item-info">
            <p>Description for Event 1</p>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/scripts/events/event_slideshow.js"></script>
</body>
</html>

