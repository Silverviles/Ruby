<%@ page import="com.happyman.Ruby.masterService.dao.Event" %><%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 4/20/2024
  Time: 2:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<% Event update = (Event) request.getAttribute("event"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.o">
    <title>Add events</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/event/eventAdd.css">
</head>
<div class="container">

    <div class="xxx">
        <h1 class="Topic">Add Events</h1>
        <header class="section_container header_container">

                <div class="registration_container">
                    <form action="${pageContext.request.contextPath}/event/addEvents" method="post">
                        <input type="hidden" name="eventId" value="<%=  update != null && update.getEventName() != null ? update.getEventName() : "" %>">

                        <div class="form_group">
                            <div class="input_group">
                                <label>Event Name :</label><br>
                                <input type="text" name="eventName" id="eventName" value="<%=  update != null && update.getEventName() != null ? update.getEventName() : "" %>" required>
                            </div>
                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <label>Availability :</label>
                            <div class="check"><input type="checkbox" id="availability" name="availability" value="<%= update != null && update.getEventName() != null ? update.getAvailability() : true %>" ></div>
                            <br>
                        </div>
                    </div>


                    <div class="form_group">
                        <div class="input_group">
                            <div class="input_group">
                                <label>Description :</label><br>
                                <input type="text" name="description" id="description" value="<%= update != null && update.getEventName() != null ? update.getDescription() : "" %>" required>
                            </div>
                        </div>

                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <label>Price :</label><br>
                            <input type="text" name="price" id="price" pattern="[0-9]+(\.[0-9]+)?" value="<%= update != null && update.getEventName() != null ? update.getPrice() : "" %>" required>
                        </div>
                    </div>

                    <button class="btn">Submit</button>


                </form>

            </div>

        </header>


    </div>

</div>
</html>