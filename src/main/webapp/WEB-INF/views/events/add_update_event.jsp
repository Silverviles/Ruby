<%@ page import="com.happyman.Ruby.masterService.dao.Event" %><%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 27/04/2024
  Time: 06:32
--%>
<% Event event = (Event) request.getAttribute("editEvent"); %>

<div class="formContainer">
    <span class="big-circle one"></span>
    <span class="big-circle two"></span>

    <div class="form">
        <div class="contact-info">
            <img src="${pageContext.request.contextPath}/images/employeeManagement/employeeReg.png"  alt="employee picture"/>
        </div>
        <div class="ticket-form">
            <span class="circle one"></span>
            <span class="circle two"></span>

            <form method="post" action="${pageContext.request.contextPath}/event/addEvent">
                <h3 class="title">Add Event</h3>

                <div class="input-container">
                    <input type="hidden" name="eventId" class="input"
                           value="<%= event != null ? event.getEventId() : "" %>"/>
                </div>

                <div class="input-container">
                    <input type="text" id="eventName" name="eventName"
                           value="<%= event != null ? event.getEventName() : "" %>" class="input"/>
                    <label for="eventName">Event Name: </label>
                    <span>Event Name</span>
                </div>

                <div class="input-container checkboxes">
                    <input type="checkbox" id="availability" name="availability"
                           value="<%= event != null ? event.getAvailability() : ""%>" class="input"/>
                    <label for="availability">Availability: </label>
                    <span>Availability</span>
                </div>

                <div class="input-container textarea">
                    <textarea id="description" name="description" class="input">
                        <%= event != null ? event.getDescription() : ""%>
                    </textarea>
                    <label for="description">Description: </label>
                    <span>Description</span>
                </div>

                <div class="input-container">
                    <input type="number" id="price" name="price" value="<%= event != null ? event.getPrice() : ""%>" class="input"/>
                    <label for="price">Price: </label>
                    <span>Price</span>
                </div>

                <input type="submit" value="Submit" class="btn"/>
            </form>
        </div>
    </div>
</div>
