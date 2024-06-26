<%@ page import="com.happyman.Ruby.masterService.dao.EventBook" %><%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 5/2/2024
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/events/booking_events.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <title>Event Booking</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<% EventBook eventbook = (EventBook) request.getAttribute("editEventbooking"); %>

<div class="backgroud_eventAdd" style="background-image: url('${pageContext.request.contextPath}/images/events/villaBookingImage.jpeg');"></div>
<header class="section_container header_container">
    <h2 class="booking_heading">Confirm Your Booking</h2>
    <div class="booking_container">
        <form method="post" action="${pageContext.request.contextPath}/eventBooking/bookEvents">
            <div class="form_group">

                <div class="input-container">
                    <input type="hidden" name="eventId" class="input" />
                </div>
                <div class="input_group">
                    <input type="text" name="customerName" required>
                    <label>Customer Name :</label>
                </div>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="date" name="date" id="date" required oninput="
                                const today = new Date().toISOString().split('T')[0];
                                this.setAttribute('min', today);">
                    <label>Date :</label>
                </div>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <label>Event Type :</label>
                    <select id="eventType" name="eventType" required>
                        <option value=""></option>
                        <option value="bithday">BirthDay</option>
                        <option value="valentineDay">Valentine'Day</option>
                        <option value="holi">Holi</option>
                        <option value="honewYearli">New Year</option>
                    </select>

                </div>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <label>Location:</label>

                    <select id="location" name="location" required>
                        <option value=""></option>
                        <option value="lakeFront">Lake Front</option>
                        <option value="indoor">Indoor</option>
                        <option value="roofTop">Roof Top</option>
                    </select>
                </div>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="text" id="noOfMembers" name="noOfMembers" required oninput="
                                    let value = this.value;
                                    value = value.replace(/\D/g, '').replace(/^0+/, '');
                                    this.value = value;">
                    <label>Number of members :</label>
                </div>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="text" name="customerDescription" id="customerDescription" required>
                    <label>Description</label>
                </div>
            </div>

            <button class="btn">Confirm</button>
        </form>
        <script>
            function showAlert() {
                alert("Booking confirmed!");
                return true;
            }
        </script>
    </div>
</header>
</body>
</html>
