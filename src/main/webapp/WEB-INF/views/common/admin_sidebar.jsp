<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/03/2024
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- ICONS -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://unpkg.com/@phosphor-icons/web"></script>
    <!-- STYLESHEET -->
    <link rel="stylesheet" href="sidebarcss.css" />

    <title>Sidebar</title>
</head>
<body>
<div class="container">
    <div class="sidebar">
        <div class="head">
            <!-- User information -->
            <div class="user-img">
                <img src="img1.png" alt="">
            </div>
            <div class="user-details">
                <p class="title">Happy Man Village</p>
                <p class="name">Tashini</p>
            </div>
        </div>
        <div class="nav">
            <div class="menu">
                <!-- Main navigation -->
                <p class="title">Main</p>
                <ul>
                    <li class="active">
                        <a href="#">
                            <i class='bx bx-home-alt-2' ></i>
                            <span class="text">Dashboard</span>
                        </a>
                    </li>
                    <!-- Other navigation items -->
                    <!-- Rooms -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-hotel' ></i>
                            <span class="text">Rooms</span>
                            <i class='arrow bx bx-chevron-down' ></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href=".vscode/addANewRoom.html">
                                    <span class="text">Update Room</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">Remove Room</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- restaurant -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-bowl-hot' ></i>
                            <span class="text">Restaurant</span>
                            <i class='arrow bx bx-chevron-down' ></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text">R1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">R2</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- package -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-category' ></i>
                            <span class="text">Packages</span>
                            <i class='arrow bx bx-chevron-down' ></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text">P1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">P2</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- events -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-calendar-event' ></i>
                            <span class="text">Events</span>
                            <i class='arrow bx bx-chevron-down' ></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text">E1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">E2</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- employee management -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-network-chart' ></i>
                            <span class="text">Employee Management</span>
                            <i class='arrow bx bx-chevron-down' ></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text">Employee shift management</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">Employee registration </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">Employee Update /Delete </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- Transport -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-car'></i>
                            <span class="text">Transport</span>
                            <i class='arrow bx bx-chevron-down' ></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text">T1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">T2</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- Feedbacks -->
                    <li>
                        <a href="#">
                            <i class='bx bx-dna'></i>
                            <span class="text">Feedbacks</span>
                            <i class='arrow bx bx-chevron-down' ></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text">E1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">E2</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- Pay -->
                    <li>
                        <a href="#">
                            <i class='bx bx-credit-card'></i>
                            <span class="text">Billing & Payment</span>
                            <i class='arrow bx bx-chevron-down' ></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text">b1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">b2</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text">b3</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div> <!-- End of Main navigation -->

        </div> <!-- End of nav -->

    </div> <!-- End of sidebar -->

    <!--content-->
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
                        <p>priceof the room</p>
                    </div>
                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="guests">
                            <label>Guests</label>
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
                            </div><hr>
                            <p>Double Luxury room, Ocean view</p>
                        </div>
                    </div>
                </div>
            </div>

        </header>
    </div>
</div>
<!-- End of container -->

<!-- Jquery -->
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js"
        integrity="sha512-8Z5++K1rB3U+USaLKG6oO8uWWBhdYsM3hmdirnOEWp8h2B1aOikj5zBzlXs8QOrvY9OxEnD2QDkbSKKpfqcIWw=="
        crossorigin="anonymous"
></script>
<script src="src/main/webapp/styles/common/sidebar.js"></script>
</body>
</html>
