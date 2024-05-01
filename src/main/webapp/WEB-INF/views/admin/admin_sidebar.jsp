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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/admin/admin_sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/admin/admin_form.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/admin/admin_table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/packages/add_package.css">

    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous"
    ></script>
    <title>Sidebar</title>
</head>

<body>
<div class="container">
    <div class="sidebar">
        <div class="head">
            <div id="logoNname">
                <div id="logo" style="text-align: center"><span id="happyMan">Happy Man</span> <br> <span id="village">VILLAGE</span>
                </div>
            </div>
        </div>

        <div class="nav">
            <div class="menu">
                <ul>
                    <li class="active">
                        <a href="#">
                            <i class='bx bx-home-alt-2'></i>
                            <span class="text">Dashboard</span>
                        </a>
                    </li>
                    <!-- Other navigation items -->
                    <!-- Rooms -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-hotel'></i>
                            <span class="text">Rooms</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li id="update_room_button">
                                <a href="#">
                                    <span class="text1">Update Room</span>
                                </a>
                            </li>
                            <li id="remove_room_button">
                                <a href="#">
                                    <span class="text1">Remove Room</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- restaurant -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-bowl-hot'></i>
                            <span class="text">Restaurant</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li id="add_food_button">
                                <a href="#">
                                    <span class="text1">Add Food</span>
                                </a>
                            </li>
                            <li id="all_food_button">
                                <a href="#">
                                    <span class="text1">Food List</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- package -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-category'></i>
                            <span class="text">Packages</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li id="new_package_button">
                                <a href="#">
                                    <span class="text1">Add New Package</span>
                                </a>
                            </li>
                            <li id="remove_package_button">
                                <a href="#">
                                    <span class="text1">Remove Package</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- events -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-calendar-event'></i>
                            <span class="text">Events</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li id="new_event_button">
                                <a href="#">
                                    <span class="text1">Add New Event</span>
                                </a>
                            </li>
                            <li id="remove_event_button">
                                <a href="#">
                                    <span class="text1">Remove Event</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- addons -->
                    <li>
                        <a href="#">
                            <i class="fas fa-puzzle-piece"></i>
                            <span class="text">Addons</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li id="new_addon_button">
                                <a href="#">
                                    <span class="text1">Add New Addon</span>
                                </a>
                            </li>
                            <li id="remove_addon_button">
                                <a href="#">
                                    <span class="text1">Remove Addon</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- employee management -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-network-chart'></i>
                            <span class="text">Employee Management</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li id="emp_registration_button">
                                <a href="#">
                                    <span class="text1">Employee registration </span>
                                </a>
                            </li>
                            <li id="emp_updateDelete_button">
                                <a href="#">
                                    <span class="text1">Employee Update /Delete </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- Transport -->
                    <li>
                        <a href="#">
                            <i class='bx bxs-car'></i>
                            <span class="text">Transport</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text1">T1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text1">T2</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- Feedbacks -->
                    <li>
                        <a href="#">
                            <i class='bx bx-dna'></i>
                            <span class="text">Feedbacks</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="text1">E1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="text1">E2</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- Pay -->
                    <li>
                        <a href="#">
                            <i class='bx bx-credit-card'></i>
                            <span class="text">Billing & Payment</span>
                            <i class='arrow bx bx-chevron-down'></i>
                        </a>
                        <ul class="sub-menu">
                            <li id="payments_button">
                                <a href="#">
                                    <span class="text1">b1</span>
                                </a>
                            </li>
                            <li id="refunds_button">
                                <a href="#">
                                    <span class="text1">b2</span>
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
            <jsp:include page="../roomReservation/add_update_room.jsp" />
        </div>

        <div id="remove_room" class="sub-contents">
            <jsp:include page="../roomReservation/all_rooms.jsp" />
        </div>

        <div id="add_food" class="sub-contents">
            <jsp:include page="../restaurant/add_update_meal.jsp" />
        </div>

        <div id="all_food" class="sub-contents">
            <jsp:include page="../restaurant/all_meals.jsp" />
        </div>

        <div id="new_package" class="sub-contents">
            <jsp:include page="../packages/add_package.jsp" />
        </div>

        <div id="remove_package" class="sub-contents">
            <jsp:include page="../packages/packages_updateDelete.jsp" />
        </div>

        <div id="new_event" class="sub-contents">
            <jsp:include page="../events/add_update_event.jsp" />
        </div>

        <div id="remove_event" class="sub-contents">
            <jsp:include page="../events/all_events.jsp" />
        </div>

        <div id="new_addon" class="sub-contents">
            <jsp:include page="../addons/add_addon.jsp" />
        </div>

        <div id="remove_addon" class="sub-contents">
            <!-- TODO: include update room jsp here. Create it in a separate jsp without head or body -->
        </div>

        <div id="emp_registration" class="sub-contents">
            <jsp:include page="../employeeManagement/Registration.jsp" />
        </div>

        <div id="emp_updateDelete" class="sub-contents">
            <jsp:include page="../employeeManagement/EmployeeManagement.jsp" />
        </div>

        <div id="payments" class="sub-contents">
            <jsp:include page="../billingAndReporting/adminPayments.jsp" />
        </div>

        <div id="refunds" class="sub-contents">
            <jsp:include page="../billingAndReporting/adminRefunds.jsp" />
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script src="${pageContext.request.contextPath}/scripts/admin/form.js"></script>
<script src="${pageContext.request.contextPath}/scripts/admin/sidebar.js"></script>
<script src="${pageContext.request.contextPath}/scripts/admin/filter.js"></script>
</body>

</html>
