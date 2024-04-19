<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 4/18/2024
  Time: 8:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Booking</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/restaurant/startBooking.css">
</head>
<body>
<div class="header">
    <h2>Header</h2>
</div>
<div class="hero">
    <div class="hero-content">
        <div class="max-w-md">
            <h1 class="text-5xl font-bold">Best food for your taste</h1>
            <p class="py-6">
                Our world-class chefs have created a wonderful dining experience
                catered to any and all tastes.
            </p>
            <form action="${pageContext.request.contextPath}/restaurant/dateTime" method="get">
                <button type="submit" class="btn btn-primary">
                    Book a table
                </button>
            </form>
            <button
                    class="btn btn-primary"
                    onclick="window.location.href='Menu.html'"
            >
                Explore Menu
            </button>
        </div>
    </div>
</div>
<div class="footer">
    <h2>Footer</h2>
</div>
</body>
</html>
