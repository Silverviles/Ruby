<%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 09/02/2024
  Time: 22:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/common/header.css">
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div style="margin-top: 140px"></div>
<form method="get" id="transportForm">
    <button data-action="transport/loginForm">Transportation Login</button>
    <button data-action="transport/portal">Transportation Portal</button>
    <button data-action="payments/billing">Payment Portal</button>
    <button data-action="payments/billingHome">Payment Portal</button>
    <button data-action="packages/packHome">Packages</button>
    <button data-action="admin/adminHome">Admin Template 01</button>
    <button data-action="transport/transportForm">Transportation Form</button>
    <button data-action="customerSupport/feedback">Feedback</button>
    <button data-action="customerSupport/feedbackPage">Customer feedback</button>
    <button data-action="customerSupport/complaint">Complaint</button>
    <button data-action="employeeManagement/registerHome">Employee Registration</button>
    <button data-action="employeeManagement/managementHome">Employee Management</button>
    <button data-action="packages/pack">packageUpdateDelete</button>
    <button data-action="room/rooms">Book Now</button>
    <button data-action="employeeManagement/StartHome">Home</button>
    <button data-action="employeeManagement/admin/login">AdminLogin</button>
    <button data-action="restaurant/newStartBooking">StartBooking</button>
    <button data-action="eventBooking/eventHome">Events</button>
    <button data-action="eventBooking/eventBookingForm">Booking form</button>
</form>
<jsp:include page="../common/footer.jsp"/>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const transportForm = document.getElementById("transportForm");
        const buttons = transportForm.querySelectorAll("button");

        buttons.forEach(function (button) {
            button.addEventListener("click", function () {
                transportForm.action = this.getAttribute("data-action");
            });
        });
    });

</script>
</body>
</html>