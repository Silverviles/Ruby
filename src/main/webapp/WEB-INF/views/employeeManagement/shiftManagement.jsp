<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- ICONS -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <script src="https://unpkg.com/@phosphor-icons/web"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Shift Management</title>

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
            <h2 class="shift_heading">Employee Shift Management</h2>
            <div class="shift_container">
                <!-- Shift management form -->
                <div class="shift_form_container">
                    <form id="shiftForm" class="shift_form">

                        <div class="form-group">
                            <label for="employeeNo">Employee ID:</label>
                            <select id="employeeNo" name="employeeNo" required>
                                <option value="">Select Employee No</option>
                                <%-- JSTL code to dynamically populate dropdown options --%>
                                <c:forEach var="employee" items="${employees}">
                                    <option value="${employee.empID}">${employee.empID}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="morningShift">Shift:</label><br>
                            <input type="radio" id="morningShift" name="shift" value="Morning Shift" required>
                            <label for="morningShift">Morning Shift</label><br>
                            <input type="radio" id="afternoonShift" name="shift" value="Afternoon Shift">
                            <label for="afternoonShift">Afternoon Shift</label><br>
                            <input type="radio" id="nightShift" name="shift" value="Night Shift">
                            <label for="nightShift">Night Shift</label>
                        </div>
                        <input type="submit" value="Submit">
                    </form>
                </div>
                <!-- Image container -->
                <div class="shift_image_container">
                    <div class="header_content">
                        <div class="popular_card">
                            <img class="shift_image" src="${pageContext.request.contextPath}/images/employeeManagement/shift.png" alt="Employee shifts">
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js" integrity="sha512-8Z5++K1rB3U+USaLKG6oO8uWWBhdYsM3hmdirnOEWp8h2B1aOikj5zBzlXs8QOrvY9OxEnD2QDkbSKKpfqcIWw==" crossorigin="anonymous"></script>

<script src="${pageContext.request.contextPath}/scripts/employeeManagement/Registration.js"></script>
</body>
</html>
