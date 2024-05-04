<%@ page import="com.happyman.Ruby.masterService.dao.FoodOrder" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 5/2/2024
  Time: 7:39 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
div class="tableDiv">
<%
    @SuppressWarnings("unchecked") List<FoodOrder> foodOrderList = (List<FoodOrder>) request.getAttribute("food_order");
%>
<div id="searchContainer" class="searchContainer">
    <input type="text" class="searchInput" aria-label="Search Input" id="searchRoomInput" placeholder="Search by Room Name">
</div>


<table id="roomTable" class="adminTable">
    <thead class="tableHead">
    <tr>
        <th>Order ID</th>
        <th>Table Number</th>
        <th>Date</th>
        <th>Time Slot</th>
        <th>Meal Type</th>


    </tr>
    </thead>
    <tbody class="tableBody">
    <% if (foodOrderList != null && !foodOrderList.isEmpty()) { %>
    <% for (FoodOrder room : foodOrderList) { %>
    <tr>
        <td><%= foodOrderList.getId%></td>
        <td><%= foodOrderList.getTableId()%></td>
        <td><%= foodOrderList.getTimeSlot()%></td>
        <td><%= foodOrderList.getMealType()%></td>
        <td><%= foodOrderList.getRoomStatus()%></td>
        <td>
<%--            <form method="post" action="${pageContext.request.contextPath}/room/navigateToUpdate">--%>
<%--                <input type="hidden" value="<%= room.getRoomId()%>" name="roomId"/>--%>
<%--                <button class="edit-button">Edit</button>--%>
<%--            </form>--%>
<%--            <form method="post" action="${pageContext.request.contextPath}/room/delete">--%>
<%--                <input type="hidden" value="<%= room.getRoomId()%>" name="roomId"/>--%>
<%--                <button class="delete-button">Delete</button>--%>
<%--            </form>--%>
        </td>
    </tr>
    <% } %>
    <% } %>
    </tbody>
</table>
</div>
