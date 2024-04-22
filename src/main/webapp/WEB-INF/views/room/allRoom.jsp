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
                        <td><%= room.getRoomName()%>
                        </td>
                        <td><%= room.getRoomType()%>
                        </td>
                        <td><%= room.getRoomCapacity()%></td>
                        <td><%= room.getRoomPrice()%>
                        </td>
                        <td><%= room.getRoomStatus()%>
                        </td>

                        <td>
                            <div class="editdeleteIcon" title="update" onclick="showUpdatePopup()">
                                <i class="fa-solid fa-pen-to-square" id="update_btn"></i>

                                <div class="popup_background popup" id="popup_update_package">

                                    <div class="popup_container">
                                        <div class="popup_close">
                                            <i class="fa-solid fa-xmark"></i>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </td>
                    </div>
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