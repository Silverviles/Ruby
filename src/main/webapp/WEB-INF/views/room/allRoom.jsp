<%--
  Created by IntelliJ IDEA.
  User: Tashini
  Date: 19/04/2024
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Room" %>
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
    @SuppressWarnings("unchecked")
    List<Room> roomList = (List<Room>) request.getAttribute("room");
%>

<header class="section_container header_container">
    <h2 class="booking_heading">Rooms</h2>
    <div class="booking_container">
        <table >
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Capacity</th>
                <th>Price</th>
                <th>Status</th>
            </tr>

            <div class="tbody">
                <% if (roomList != null && !roomList.isEmpty()) {
                    for (Room room : roomList) {%>
                <tr>
                    <div class="aaa">
                        <td><%= room.getId()%>

                        <td>
                            <div class="editdeleteIcon" title="update" onclick="showUpdatePopup()">
                                <i class="fa-solid fa-pen-to-square" id="update_btn"></i>

                                <div class="popup_background popup" id="popup_update_package">

                                    <div class="popup_container">
                                        <div class="popup_close">
                                            <i class="fa-solid fa-xmark"></i>
                                        </div>
                                        <form method="post" action="${pageContext.request.contextPath}/room/updateRoom">
                                            <div class="form_group">
                                                <div class="input_group">
                                                    <label for="roomName">Room Name</label><br>
                                                    <input type="text" id="roomName" name="roomName" value="<%= room.getRoomName()%>">
                                                </div>
                                                <p>Name of the room</p>
                                            </div>
                                            <div class="form_group">
                                                <div class="input_group">
                                                    <label for="roomType">Room Type</label><br>
                                                    <input type="text" id="roomType" name="roomType" value="<%= room.getRoomType()%>">
                                                </div>
                                                <p>Type of the room</p>
                                            </div>
                                            <div class="form_group">
                                                <div class="input_group">
                                                    <label for="roomCapacity">Capacity:</label><br>
                                                    <input type="number" id="roomCapacity" name="roomCapacity" value="<%= room.getRoomCapacity()%>" required>
                                                </div>
                                                <p>Capacity of the room</p>
                                            </div>
                                            <div class="form_group">
                                                <div class="input_group">
                                                    <label for="roomPrice">Price:</label><br>
                                                    <input type="number" id="roomPrice" name="roomPrice" step="0.01" value="<%= room.getRoomPrice()%>" required>
                                                </div>
                                                <p>Price of the room</p>
                                            </div>
                                            <div class="form_group">
                                                <div class="input_group">
                                                    <input type="checkbox" id="roomStatus" name="roomStatus" value="<%= room.getRoomStatus()%>">
                                                    <label for="roomStatus">Status :</label>
                                                </div>
                                                <p>1 for available, 0 for unavailable</p>
                                            </div>

                                            <button type="submit" class="btn">Update</button>
                                            <button type="reset" class="btn">Reset</button>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </td>
                    </div>

                </tr>
                <tr>
                    <td>
                        <div class="editdeleteIcon" title="Delete" onclick="showDeletePopup()">
                            <i class="fa-solid fa-trash" id="delete_btn"></i>
                            <div class="popup_background popup" id="popup_delete_package">
                                <div class="popup_close">
                                    <i class="fa-solid fa-xmark"></i>
                                </div>
                                <div class="popup_container">
                                    <p>Are you sure want to delete the room?</p>
                                    <br>
                                    <form action="room/deleteRoom" method="post">
                                        <button type="submit">Yes</button>
                                        <button>No</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>


                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="9" style="text-align: center"> No Records Available.</td>
                </tr>
                <% } %>
            </div>

        </table>
    </div>
</header>
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