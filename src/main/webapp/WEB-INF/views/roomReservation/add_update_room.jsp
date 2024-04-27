<%@ page import="com.happyman.Ruby.masterService.dao.Room" %><%--
  Created by IntelliJ IDEA.
  User: Tashi
  Date: 27/04/2024
  Time: 10:52
--%>
<% Room room = (Room) request.getAttribute("editRoom"); %>

<div class="formContainer">
    <span class="big-circle one"></span>
    <span class="big-circle two"></span>

    <div class="form">
        <div class="contact-info"
             style="background-image: url('${pageContext.request.contextPath}/images/employeeManagement/employeeReg.png')">
            <img src="${pageContext.request.contextPath}/images/employeeManagement/employeeReg.png"
                 alt="employee picture"/>
        </div>

        <div class="ticket-form">
            <span class="circle one"></span>
            <span class="circle two"></span>

            <form method="post" action="${pageContext.request.contextPath}/food/save">
                <h3 class="title">Add Room</h3>

                <div class="input-container">
                    <input type="hidden" name="roomId" class="input"
                           value="<%= room != null ? room.getRoomId() : "" %>"/>
                </div>

                <div class="input-container">
                    <input type="text" id="roomName" name="roomName"
                           value="<%= room != null ? room.getRoomName() : "" %>" class="input"/>
                    <label for="roomName">Room Name: </label>
                    <span>Room Name</span>
                </div>

                <div class="input-container">
                    <input type="text" id="roomType" name="roomType" value="<%= room != null ? room.getRoomType() : ""%>"
                           class="input"/>
                    <label for="roomType">Room Type: </label>
                    <span>Room Type</span>
                </div>

                <div class="input-container">
                    <input type="number" id="roomCapacity" name="roomCapacity" value="<%= room != null ? room.getRoomCapacity() : ""%>"
                           class="input"/>
                    <label for="roomCapacity">Room Capacity: </label>
                    <span>Room Capacity</span>
                </div>

                <div class="input-container">
                    <input type="number" id="roomPrice" name="roomPrice" value="<%= room != null ? room.getRoomPrice() : ""%>"
                           class="input"/>
                    <label for="roomPrice">Room Price: </label>
                    <span>Room Price</span>
                </div>

                <div class="input-container checkboxes">
                    <input type="checkbox" id="roomStatus" name="roomStatus"
                           value="<%= room != null ? room.getRoomStatus() : ""%>" class="input"/>
                    <label for="roomStatus">Room Status: </label>
                    <span>Room Status</span>
                </div>

                <input type="submit" value="Submit" class="btn"/>
            </form>
        </div>
    </div>
</div>

