<%@ page import="com.happyman.Ruby.masterService.dao.Event" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 27/04/2024
  Time: 06:49
--%>
<%
    @SuppressWarnings("unchecked") List<Event> eventList = (List<Event>) request.getAttribute("events");
%>

<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" class="searchInput" aria-label="Search Input" id="searchEventInput" placeholder="Search by Event Name">
    </div>

    <table id="eventTable" class="adminTable">
        <thead class="tableHead">
        <tr>
            <th>Event ID</th>
            <th>Event Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Availability</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody class="tableBody">
        <% if (eventList != null && !eventList.isEmpty()) { %>
        <% for (Event event : eventList) { %>
        <tr>
            <td><%= event.getEventId()%></td>
            <td><%= event.getEventName()%></td>
            <td><%= event.getDescription()%></td>
            <td><%= event.getPrice()%></td>
            <td><%= event.getAvailability()%></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/event/navigateToUpdate">
                    <input type="hidden" value="<%= event.getEventId()%>" name="eventId"/>
                    <button class="edit-button">Edit</button>
                </form>
                <form method="post" action="${pageContext.request.contextPath}/event/delete">
                    <input type="hidden" value="<%= event.getEventId()%>" name="eventId"/>
                    <button class="delete-button">Delete</button>
                </form>
            </td>
        </tr>
        <% } %>
        <% } %>
        </tbody>
    </table>
</div>
