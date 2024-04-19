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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/common/admin_sidebar.css">

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
                <p class="name"></p>
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
                            <li id="update_room_button">
                                <a href="#">
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
        <div id="update_room" class="sub-contents">
            <!-- TODO: include update room jsp here. Create it in a separate jsp without head or body -->
        </div>
        <!-- TODO: Add other divs as needed. follow the id and class formats -->
    </div>
</div>
<!-- End of container -->

<!-- Jquery -->
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js"
        integrity="sha512-8Z5++K1rB3U+USaLKG6oO8uWWBhdYsM3hmdirnOEWp8h2B1aOikj5zBzlXs8QOrvY9OxEnD2QDkbSKKpfqcIWw=="
        crossorigin="anonymous"
></script>
<script src="${pageContext.request.contextPath}/scripts/common/sidebar.js"></script>
</body>
</html>
