<%--
  Created by IntelliJ IDEA.
  User: Dhanuka
  Date: 4/18/2024
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Feedback form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/feedbackCSS.css">

    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<div class="container">
    <span class="big-circle"></span>
    <div class="form">
        <div class="contact-info">
            <h3 class="title">We Want to Hear from You</h3>
            <p class="text">
                We greatly appreciate you taking the time to share your thoughts with us.
            </p>

            <div class="info">
                <div class="information">
                    <img src="${pageContext.request.contextPath}/images/location-pin.png" alt="">
                    <p>92 Cherry Drive Uniondale, NY 11553</p>
                </div>
                <div class="information">
                    <img src="${pageContext.request.contextPath}/images/email-2.png" alt="">
                    <p>lorem@ipsum.com</p>
                </div>
                <div class="information">
                    <img src="${pageContext.request.contextPath}/images/telephone.png" alt="">
                    <p>123-456-789</p>
                </div>
            </div>

            <div class="social-media">
                <p>Connect with us :</p>
                <div class="social-icons">
                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>
                </div>
            </div>
        </div>

        <div class="contact-form">
            <span class="circle one"></span>
            <span class="circle two"></span>

            <form action="index.html" autocomplete="off">
                <h3 class="title">Your feedback</h3>

                <div class="input-container">
                    <input type="text" name="name" class="input" />
                    <label>Username</label>
                    <span>Username</span>
                </div>

                <div class="input-container">
                    <input type="email" name="email" class="input" />
                    <label>Email</label>
                    <span>Email</span>
                </div>

                <div class="input-container">
                    <input type="text" name="bookingID" class="input" />
                    <label>Booking ID</label>
                    <span>Booking ID</span>
                </div>

                <div class="input-container textarea">
                    <textarea name="message" class="input"></textarea>
                    <label>Message</label>
                    <span>Message</span>
                </div>

                <input type="submit" value="Send" class="btn" />
            </form>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/script/feedbackJS.js"></script>
</body>
</html>
