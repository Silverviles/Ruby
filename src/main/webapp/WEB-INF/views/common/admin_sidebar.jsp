<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/03/2024
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy Man Village</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="../../../styles/common/admin_sidebar.css">
    <script>
        let btn = document.querySelector('#btn');
        let sidebar = document.querySelector('.sidebar');

        btn.onclick = function(){
            sidebar.classList.toggle('active');
        };
    </script>
</head>
<body>

    <div class="sidebar">
        <div class="top">
            <div class="logo">
                <i class='bx bxl-codepen'></i>
                <span>Happy Man Village</span>
            </div>
            <i class='bx bx-menu' id="btn"></i>
        </div>
        <div class="user">
            <img src="img1.png" alt="me" class="user-img">
        </div>
        <br>
        <ul>
            <li>
                <a href="#">
                    <i class='bx bx-grid-alt'></i>
                    <span class="nav-item">Dashboard</span>
                </a>
                <span class="tooltip">Dashboard</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bxs-bowl-hot' ></i>
                    <span class="nav-item">Restaurant</span>
                </a>
                <span class="tooltip">Restaurant</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bxs-category' ></i>
                    <span class="nav-item">Packages</span>
                </a>
                <span class="tooltip">Packages</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bxs-calendar-event' ></i>
                    <span class="nav-item">Events</span>
                </a>
                <span class="tooltip">Events</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bxs-hotel' ></i>
                    <span class="nav-item">Rooms</span>
                </a>
                <span class="tooltip">Rooms</span>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-credit-card'></i>
                    <span class="nav-item">Billing & Payment</span>
                </a>
                <span class="tooltip">Settings</span>
            </li>

        </ul>
    </div>

    <div class="main-content">
        <div class="container">
            <h1>Happy Man Village</h1>
            <h1>Right Side</h1>
        </div>
    </div>

</body>


</html>