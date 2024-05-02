<%@ page import="com.happyman.Ruby.masterService.dao.Room" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Tashini
  Date: 11/04/2024
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<% @SuppressWarnings("unchecked") List<Room> roomList = (List<Room>) request.getAttribute("rooms"); %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/roomReservation/roomstyle.css">
    <title>Room Booking</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<header class="section_container header_container">
    <div class="header_image_container">
        <div class="header_content">
            <h1>Enjoy Your Dream Vacation</h1>
            <p>Book hotels and stay packages at lowest price.</p>
        </div>
        <div class="booking_container">
            <form>
                <div class="form_group">
                    <div class="input_group">
                        <input id="roomType" type="text" name="roomType">
                        <label for="roomType">Room Type</label>
                    </div>
                    <p>What type of a room do you prefer?</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <input id="roomPrice" type="text" pattern="[0-9]" name="roomPrice">
                        <label for="roomPrice">Price</label>
                    </div>
                    <p>Add Price</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <input id="guests" type="text" name="guests">
                        <label for="guests">Guests</label>
                    </div>
                    <p>add the number of guests</p>
                </div>
            </form>
            <button id="searchBtn" class="btn"><i class="ri-search-line"></i></button>
        </div>
    </div>
</header>
<!-----------------------enf of the header part---------------------------------------------->
<section class="section_container popular_container">
    <h2 class="section_header">All Rooms</h2><br>
    <hr>
    <div class="popular_grid">
        <% if (roomList != null && !roomList.isEmpty()) { %>
        <% int i = 0; %>
        <% for (Room room : roomList) { %>
        <% i++; if (i >= 17) i = 1; %>
        <form id="room_<%=room.getRoomId()%>" class="card_link" method="post" action="${pageContext.request.contextPath}/room/serveRoom">
            <button type="submit" style="border: none">
                <div class="popular_card">
                    <img src="${pageContext.request.contextPath}/images/roomReservation/room<%=i%>.jpg" alt="popular room">
                    <input type="hidden" id="roomId" name="roomId" value="<%= room.getRoomId() %>">
                    <div class="popular_content">
                        <div class="popular_card_header">
                            <input type="hidden" name="roomId" value="<%= room.getRoomId()%>">
                            <input type="hidden" name="imageName" value="${pageContext.request.contextPath}/images/roomReservation/room<%=i%>.jpg" />
                            <h4><%= room.getRoomName()%></h4>
                            <h4><%= room.getRoomPrice()%></h4>
                        </div><hr>
                        <p><%= room.getRoomType() + ": " + (room.getRoomStatus() ? "Available" : "Not Available") %></p>
                    </div>
                </div>
            </button>
        </form>
        <script>
            document.getElementById("room<%=i%>").addEventListener("click", document.getElementById("room<%=i%>").submit());
        </script>
        <% } %>
        <% } %>
        <br><br><br><br><p style="text-align: center;">Please note: all room sizes are approximate.</p>
    </div>
</section>

<!-----------------------end of rooms grid---------------------------->
<section class="section_container">
    <div class="reward_container">
        <p>100+ discount</p>
        <h4>Join rewards & discover amazing discount on your Booking</h4>
        <button class="reard_btn">Join Reward</button>
    </div>
</section>
<div class="footer_bar">
    Tashini S. Hansanee...
</div>
<jsp:include page="../common/footer.jsp" />
</body>
</html>