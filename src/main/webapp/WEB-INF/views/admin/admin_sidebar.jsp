<%--
  Created by IntelliJ IDEA.
  User: sdilr
  Date: 4/10/2024
  Time: 12:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div class="sidebar">
    <div class="top">
        <div class="logo">
            <h3 style="text-align: center; transition: all 0.5s ease"><span id="happyMan">Happy Man</span> <br> <span id="village">VILLAGE</span></h3>
        </div>
        <!-- <div class="logo">
             <i class='bx bxl-codepen'></i>
            <span>Happy Man Village</span>
        </div> -->
        <i class='bx bx-menu' id="btn"></i>
    </div>
    <!-- <div class="user">
        <img src="img1.png" alt="me" class="user-img">
    </div> -->
    <br>
    <br>
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
                <i class='bx bx-book-add' ></i>
                <span class="nav-item">Addons</span>
            </a>
            <span class="tooltip">Addons</span>
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
            <span class="tooltip">Billing & Payment</span>
        </li>

    </ul>
</div>
<script>
    let btn = document.querySelector('#btn');
    let sidebar = document.querySelector('.sidebar');

    btn.onclick = function(){
        sidebar.classList.toggle('active');
    };
</script>
</body>
</html>
