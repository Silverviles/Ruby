<%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 4/20/2024
  Time: 2:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Event" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    List<Event> eventList = new ArrayList<>();
    eventList = (List<Event>) request.getAttribute("events");
%>

<h1>Events</h1>

<div id="searchContainer">
    <input type="text" id="searchInput" placeholder="Search by First Name">
    <button onclick="searchEmployee()">Search</button>
</div>

<table id="employeeTable">
    <thead>
    <tr>
        <th>Event Name</th>
        <th>Description</th>
        <th>Availability</th>
        <th>Image</th>
        <th>Price</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody id="employeeBody">
    <% if (eventList != null && !eventList.isEmpty()) { %>
    <% for (Event event : eventList) { %>
    <tr>
        <td><%= event.getEventName()%></td>
        <td><%= event.getDescription()%></td>
        <td><%= event.getAvailability()%></td>
        <td>Image eka</td>
        <td><%= event.getPrice()%></td>
        <td>

            <form action="${pageContext.request.contextPath}/employeeManagement/delete" method="post">
                <input type="hidden" name="employeeId" value="<%= event.getId()%>">
                <button type="submit" name="delete">Delete</button>
            </form>
            <form action="${pageContext.request.contextPath}/employeeManagement/update" method="post">
                <input type="hidden" name="employeeId" value="<%= event.getId()%>">
                <button type="submit" name="update">Update</button>
            </form>
        </td>
    </tr>
    <% } %>
    <% } %>
    </tbody>
</table>