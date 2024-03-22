<%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 22/03/2024
  Time: 11:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Portal</title>
    <link rel="stylesheet" href="../../../styles/transportation/driver_portal.css">
</head>
<body>
<div class="sidebar">
    <div class="driver-info">
        <img src="../../../images/transportation/" alt="Driver Image">
        <h3>Driver Name</h3>
        <p>Email: driver@example.com</p>
        <p>Mobile No: +94 71 112 2234</p>
    </div>
    <div class="driver_portal_navigate">
        <p id="available_jobs_show">Available Jobs</p>
        <p id="in_progress_jobs_show">In Progress Jobs</p>
        <p id="job_history_show">Job History</p>
    </div>
</div>

<div class="content">
    <div id="available-jobs" class="jobs">
        <h2>Available Jobs</h2>
        <table>
            <!-- Table for available jobs -->
            <!-- Sample data -->
            <tr>
                <th>Trip ID</th>
                <th>Start Location</th>
                <th>End Location</th>
                <th>Time</th>
            </tr>
            <!-- Sample data rows -->
            <tr>
                <td>1</td>
                <td>Location A</td>
                <td>Location B</td>
                <td>10:00 AM</td>
            </tr>
        </table>
    </div>

    <div id="in-progress-jobs" class="jobs">
        <h2>In Progress Jobs</h2>
        <table>
            <!-- Table for in-progress jobs -->
            <!-- Sample data -->
            <tr>
                <th>Trip ID</th>
                <th>Start Location</th>
                <th>End Location</th>
                <th>Time</th>
            </tr>
            <!-- Sample data rows -->
            <tr>
                <td>2</td>
                <td>Location C</td>
                <td>Location D</td>
                <td>12:00 PM</td>
            </tr>
        </table>
    </div>

    <div id="history" class="jobs">
        <h2>History</h2>
        <table>
            <!-- Table for trip history -->
            <!-- Sample data -->
            <tr>
                <th>Trip ID</th>
                <th>Start Location</th>
                <th>End Location</th>
                <th>Time</th>
            </tr>
            <!-- Sample data rows -->
            <tr>
                <td>3</td>
                <td>Location E</td>
                <td>Location F</td>
                <td>2:00 PM</td>
            </tr>
        </table>
    </div>
</div>

<script src="../../../scripts/transportation/driver_portal.js"></script>
</body>
</html>