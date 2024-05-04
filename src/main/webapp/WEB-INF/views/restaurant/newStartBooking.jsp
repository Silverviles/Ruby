<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 5/2/2024
  Time: 12:33 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Booking</title>
    <style>
        body,
        html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .hero {
            min-height: 100vh;
            background-color: #f3f4f6;
            background-image: url(https://www.ucsf.edu/sites/default/files/styles/article_feature_banner__image/public/2019-09/vegetables-cooking-food-banner-size.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-content {
            text-align: center;
        }

        .max-w-md {
            max-width: 28rem;
            margin: 0 auto;
        }

        .text-5xl {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }

        .py-6 {
            padding-top: 1.5rem;
            padding-bottom: 1.5rem;
        }

        .btn {
            display: inline-block;
            font-weight: 400;
            color: #fff;
            text-align: center;
            vertical-align: middle;
            user-select: none;
            background-color: #6366f1;
            border: 1px solid transparent;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.375rem;
            transition: all 0.15s ease-in-out;
            cursor: pointer;
            text-decoration: none;
        }

        .btn-primary {
            background-color: #6366f1;
        }

        .btn-primary:hover {
            background-color: #4f52b3;
        }
    </style>
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
            <form action="${pageContext.request.contextPath}/restaurant/newdateTime" method="get">

                    <button type="submit" class="btn btn-primary">
                        Book a table
                    </button>

            </form>
<%--            <button--%>
<%--                    class="btn btn-primary"--%>
<%--                    onclick="window.location.href='DateTime.html'"--%>
<%--            >--%>
<%--                Book a table--%>
<%--            </button>--%>
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
