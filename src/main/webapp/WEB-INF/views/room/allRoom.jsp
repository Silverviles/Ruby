<%--
  Created by IntelliJ IDEA.
  User: Tashini
  Date: 19/04/2024
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Room" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/roomReservation/addroom.css">
    <title>Room Booking</title>
</head>

<body>
<%
    List<Room> roomList = new ArrayList<>();
    roomList = (List<Room>) request.getAttribute("room");
%>

<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" aria-label="Search Input" id="searchInput" placeholder="Search by First Name">
    </div>

    <table id="adminTable" class="adminTable">
        <thead class="tableHead">
        <tr>
            <th>Room ID</th>
            <th>Room Type</th>
            <th>Guest Count</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody class="tableBody">
        <tr>
            <td>001</td>
            <td>Double</td>
            <td>2</td>
            <td>True</td>
            <td>
                <button class="edit-button">Action</button>
                <button class="delete-button">Action</button>
            </td>
        </tr>
        <tr>
            <td>002</td>
            <td>Triple</td>
            <td>3</td>
            <td>True</td>
            <td>
                <button class="edit-button">Edit</button>
                <button class="delete-button">Delete</button>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    function showUpdatePopup() {
        var updatePopup = document.getElementById("popup_update_package");
        var deletePopup = document.getElementById("popup_delete_package");

        if (deletePopup.classList.contains("show")) {
            deletePopup.classList.remove("show");
        }

        updatePopup.classList.toggle("show");
    }

    function showDeletePopup() {
        var updatePopup = document.getElementById("popup_update_package");
        var deletePopup = document.getElementById("popup_delete_package");

        if (updatePopup.classList.contains("show")) {
            updatePopup.classList.remove("show");
        }

        deletePopup.classList.toggle("show");
    }

</script>
</body>
</html>