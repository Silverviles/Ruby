<%@ page import="com.happyman.Ruby.transportation.dto.TripDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Driver" %><%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 22/03/2024
  Time: 11:36
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    @SuppressWarnings("unchecked")
    Map<String, List<TripDTO>> allJobs = (Map<String, List<TripDTO>>) request.getAttribute("allJobs");
    Driver driver = (Driver) request.getAttribute("driver");

    List<TripDTO> availableTrips = allJobs.get("available");
    List<TripDTO> inProgressTrips = allJobs.get("inProgress");
    List<TripDTO> completedTrips = allJobs.get("completed");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Portal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/transportation/driver_portal.css">
</head>
<body>
<div class="sidebar">
    <div class="driver-info">
        <h3>Driver Name: <br><%=driver.getFirstName() + " " + driver.getLastName()%></h3>
        <p>Email: <%= driver.getEmail()%></p>
        <p>Mobile No: <%= driver.getMobileNo()%></p>
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
            <tr>
                <th>Trip ID</th>
                <th>Trip Destination</th>
                <th>Total Pay</th>
                <th>Action</th>
            </tr>
            <% for (TripDTO job : availableTrips) { %>
            <tr>
                <td><%= job.getId() %>
                </td>
                <td><%= job.getTripDestination() %>
                </td>
                <td><%= job.getTotalCost() %>
                </td>
                <td>
                    <form action="${pageContext.request.contextPath}/transport/accept" method="post">
                        <input type="hidden" name="jobId" value="<%= job.getId() %>">
                        <input type="hidden" name="driverId" value="<%= driver.getId()%>">
                        <button type="submit">Accept</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
    </div>

    <div id="in-progress-jobs" class="jobs">
        <h2>In Progress Jobs</h2>
        <table>
            <tr>
                <th>Trip ID</th>
                <th>Driver Name</th>
                <th>Trip Destination</th>
                <th>Total Pay</th>
                <th>Action</th>
            </tr>
            <% for (TripDTO job : inProgressTrips) { %>
            <tr>
                <td><%= job.getId() %>
                </td>
                <td><%= job.getDriver().getFirstName() + " " + job.getDriver().getLastName() %>
                </td>
                <td><%= job.getTripDestination() %>
                </td>
                <td><%= job.getTotalCost() %>
                </td>
                <td>
                    <form action="${pageContext.request.contextPath}/transport/complete" method="post">
                        <input type="hidden" name="jobId" value="<%= job.getId() %>">
                        <input type="hidden" name="driverId" value="<%= driver.getId()%>">
                        <button type="submit">Complete</button>
                    </form>
                    <form action="${pageContext.request.contextPath}/transport/cancel" method="post">
                        <input type="hidden" name="jobId" value="<%= job.getId() %>">
                        <input type="hidden" name="driverId" value="<%= driver.getId()%>">
                        <button type="submit">Cancel</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
    </div>

    <div id="history" class="jobs">
        <h2>History</h2>
        <table>
            <tr>
                <th>Trip ID</th>
                <th>Driver Name</th>
                <th>Trip Destination</th>
                <th>Total Pay</th>
                <th>Completed Date</th>
            </tr>
            <% for (TripDTO job : completedTrips) { %>
            <tr>
                <td><%= job.getId() %>
                </td>
                <td><%= job.getDriver().getFirstName() + " " + job.getDriver().getLastName() %>
                </td>
                <td><%= job.getTripDestination() %>
                </td>
                <td><%= job.getTotalCost() %>
                </td>
                <td><%= job.getFinishedDate() %></td>
            </tr>
            <% } %>
        </table>
    </div>
</div>

<script src="${pageContext.request.contextPath}/scripts/transportation/driver_portal.js"></script>
</body>
</html>