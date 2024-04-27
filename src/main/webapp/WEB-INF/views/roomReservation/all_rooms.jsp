<%@ page import="com.happyman.Ruby.masterService.dao.Room" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Tashi
  Date: 27/04/2024
  Time: 10:52
--%>
<%
    @SuppressWarnings("unchecked") List<Room> roomList = (List<Room>) request.getAttribute("rooms");
%>

<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" class="searchInput" aria-label="Search Input" id="searchRoomInput" placeholder="Search by Room Name">
    </div>

    <table id="roomTable" class="adminTable">
        <thead class="tableHead">
        <tr>
            <th>Room ID</th>
            <th>Room Name</th>
            <th>Room Type</th>
            <th>Room Capacity</th>
            <th>Room Status</th>
            <th>Room Price</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody class="tableBody">
        <% if (roomList != null && !roomList.isEmpty()) { %>
        <% for (Room room : roomList) { %>
        <tr>
            <td><%= room.getRoomId()%></td>
            <td><%= room.getRoomName()%></td>
            <td><%= room.getRoomType()%></td>
            <td><%= room.getRoomCapacity()%></td>
            <td><%= room.getRoomStatus()%></td>
            <td><%= room.getRoomPrice()%></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/room/navigateToUpdate">
                    <input type="hidden" value="<%= room.getRoomId()%>" name="roomId"/>
                    <button class="edit-button">Edit</button>
                </form>
                <form method="post" action="${pageContext.request.contextPath}/room/delete">
                    <input type="hidden" value="<%= room.getRoomId()%>" name="roomId"/>
                    <button class="delete-button">Delete</button>
                </form>
            </td>
        </tr>
        <% } %>
        <% } %>
        </tbody>
    </table>
</div>
