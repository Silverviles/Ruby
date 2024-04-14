<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/13/2024
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Packages</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- ICONS -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <script src="https://unpkg.com/@phosphor-icons/web"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/employeeManagement/Registration.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js"
            integrity="sha512-8Z5++K1rB3U+USaLKG6oO8uWWBhdYsM3hmdirnOEWp8h2B1aOikj5zBzlXs8QOrvY9OxEnD2QDkbSKKpfqcIWw=="
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="sidebar active">
        <div class="menu-btn">
            <i class='bx bxs-chevron-left' ></i>
        </div>
        <div class="head">
            <!-- User information -->
            <div class="user-img">
                <img src="${pageContext.request.contextPath}/images/employeeManagement/user.jpg" alt="">
            </div>
            <div class="user-details">
                <p class="title">Happy Man Village</p>
                <p class="name">Admin</p>
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

            <!-- Settings -->
            <div class="menu">
                <p class="title">Settings</p>
                <ul>
                    <li class="active">
                        <a href="#">
                            <i class='bx bxs-cog' ></i>
                            <span class="text">Setting</span>
                        </a>
                    </li>
                </ul>
            </div> <!-- End of Settings -->

        </div> <!-- End of nav -->

        <!-- "helps" section -->
        <div class="menu">
            <p class="title">Helps</p>
            <ul>
                <li>
                    <a href="#">
                        <i class='bx bx-help-circle' ></i>
                        <span class="text">Help</span>
                    </a>
                </li>
            </ul>
        </div> <!-- End of helps section -->

    </div> <!-- End of sidebar -->

    <div class="xxx">
        <h2>Employee Management</h2>
        <header class="section_container header_container">
            <h2 class="registration_heading">Employee Registration</h2>

            <div class="registration_container">
                <form action="${pageContext.request.contextPath}/employeeManagement/registerEmployee" method="post">

                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="empID" id="empID" readonly>
                            <label>Employee Id</label>
                        </div>

                    </div>


                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="Employee Fname">
                            <label>Employee First Name</label>
                        </div>
                        <!-- <p>Type of the shifts</p>-->
                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="Employee Lname">
                            <label>Employee Last Name</label>
                        </div>
                        <!-- <p>Type of the shifts</p>-->
                    </div>


                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="emali">
                            <label>Email</label>
                        </div>

                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="contact ">
                            <label>Contact No</label>
                        </div>

                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="salary ">
                            <label>Salary</label>
                        </div>

                    </div>







                    <button class="btn">Add</button>
                </form>
                <div class="header_content">
                    <div class="popular_card">
                        <img src="${pageContext.request.contextPath}/images/employeeManagement/reg.jpeg" alt="villa ">

                    </div>
                </div>
            </div>

        </header>


    </div>

</div>

<script src="${pageContext.request.contextPath}/scripts/employeeManagement/Registration.js"></script>
</body>
</html>
