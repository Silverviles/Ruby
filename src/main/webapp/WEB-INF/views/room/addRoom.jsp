<%--
  Created by IntelliJ IDEA.
  User: Tashini
  Date: 19/04/2024
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.List" %>

<header class="section_container header_container">
    <h2 class="booking_heading">Add New Package</h2>
    <div class="booking_container">
        <form method="post" action="${pageContext.request.contextPath}/room/addroom">
            <div class="form_group">
                <div class="input_group">
                    <label for="roomName">Room Name</label><br>
                    <input type="text" id="roomName" name="roomName">
                </div>
                <p>Name of the room</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <label for="roomType">Room Type</label><br>
                    <input type="text" id="roomType" name="roomType">
                </div>
                <p>Type of the room</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <label for="roomCapacity">Price:</label><br>
                    <input type="number" id="roomCapacity" name="roomCapacity" required>
                </div>
                <p>Capacity of the room</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <label for="roomPrice">Price:</label><br>
                    <input type="number" id="roomPrice" name="roomPrice" step="0.01" required>
                </div>
                <p>Price of the room</p>
            </div>
            <div class="form_group">
                <div class="input_group">
                    <input type="checkbox" id="roomStatus" name="roomStatus" value="true">
                    <label for="roomStatus">: Status</label>
                </div>
                <p>1 for available, 0 for unavailable</p>
            </div>

            <button type="submit" class="btn">Add</button>
        </form>
    </div>
</header>