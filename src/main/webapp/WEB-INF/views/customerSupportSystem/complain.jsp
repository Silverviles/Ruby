<%--
  Created by IntelliJ IDEA.
  User: Dhanuka
  Date: 4/19/2024
  Time: 6:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Customer complaints</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/customerSupport/complaintCSS.css">
    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<div class="container">
    <span class="big-circle one"></span>
    <span class="big-circle two"></span>

    <div class="form">
        <div class="contact-info">
            <h3 class="title">Tell Us About Your Issue</h3>
            <p class="text">
                We're here to listen and address your needs promptly.
            </p>

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

        <div class="ticket-form">
            <span class="circle one"></span>
            <span class="circle two"></span>

            <form action="${pageContext.request.contextPath}/customerSupport/saveComplaint" method="post" autocomplete="off">
                <h3 class="title">Drop your ticket</h3>

                <input type="hidden" id="bookingId" name="bookingId" value="">

                <div class="input-container">
                    <input id="customerName" type="text" name="name" class="input" />
                    <label for="customerName">Name: </label>
                    <span>Name</span>
                </div>

                <div class="input-container">
                    <input id="email" type="email" name="email" class="input" />
                    <label for="email">Email</label>
                    <span>Email</span>
                </div>

                <div class="input-container textarea">
                    <textarea id="complaint" name="complaintDesc" class="input"></textarea>
                    <label for="complaint">Complaint</label>
                    <span>Complaint</span>
                </div>

                <input type="submit" value="Submit" class="btn" />
            </form>
        </div>
    </div>
</div>

<!--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>-->
<script src="${pageContext.request.contextPath}/scripts/customerSupportSystem/complaintJS.js"></script>
</body>
</html>