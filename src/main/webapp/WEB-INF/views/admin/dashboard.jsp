<%@ page import="com.happyman.Ruby.admin.dto.DashboardDTO" %><%--
  Created by IntelliJ IDEA.
  User: tharindu
  Date: 03/05/2024
  Time: 19:57
--%>
<% DashboardDTO dashboard = (DashboardDTO) request.getAttribute("summary"); %>
<div class="admin-grid-container">
    <div class="dashboard-grid-item">
        <h3>Room Summary</h3>
        <div class="dashboard-item">
            <p>Total number of rooms: <%=dashboard.getTotalRooms()%></p>
            <p>Available Rooms: </p>
            <p>Unavailable Rooms: </p>
            <p>Total Villa Capacity: </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Restaurant Summary</h3>
        <div class="dashboard-item">
            <p>Registered Meals: </p>
            <p>Available Meals: </p>
            <p>Unavailable Meals: </p>
            <p>Total Restaurant Capacity: </p>
            <p>Available Seats: </p>
            <p>Booked Seats: </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Packages Summary</h3>
        <div class="dashboard-item">
            <p>All Packages: </p>
            <p>Available Packages: </p>
            <p>Package with Highest Addons: </p>
            <p>Available Addon Count: </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Event Summary</h3>
        <div class="dashboard-item">
            <p>All Events: </p>
            <p>Available Events: </p>
            <p>Event with Highest Addons: </p>
            <p>Available Addon Count: </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Customer Support Summary</h3>
        <div class="dashboard-item">
            <p>Feedback Count: </p>
            <p>Pending Complaints: </p>
            <p>Resolved Complaints: </p>
            <p>5 Star Ratings: </p>
            <p>1 Star Ratings: </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Employee Summary</h3>
        <div class="dashboard-item">
            <p>All Employees: </p>
            <p>Day shift Employees: </p>
            <p>Night Shift Employees: </p>
            <p>Average Employee Salary: </p>
            <p>Highest Employee Salary: </p>
        </div>
    </div>
</div>
