<%@ page import="com.happyman.Ruby.masterService.dao.Feedback" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Dhanuka
  Date: 4/19/2024
  Time: 11:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    List<Feedback> feedbackList = new ArrayList<Feedback>();
    feedbackList = (List<Feedback>) request.getAttribute("feedbacks");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/customerSupport/feedbackAdmin.css">
</head>
<body>
<div id="feedback" class="sub-contents"></div>
<table>
    <tr>
        <th>Username</th>
        <th>Email</th>
        <th>Booking ID</th>
        <th>Message</th>
        <th>Action</th>
    </tr>
    <% if (feedbackList != null && !feedbackList.isEmpty()) { %>
    <% for (Feedback feedback : feedbackList) { %>
    <tr>
        <td><%= feedback.getUserName()%></td>
        <td><%= feedback.getEmail()%></td>
        <td><%= feedback.getBookingID()%></td>
        <td><%= feedback.getMessage()%></td>

        <td>
            <form method="post" action="${pageContext.request.contextPath}/customerSupport/acceptFeedback">
                <button class="accept-button" name="feedbackId" value="<%= feedback.getId()%>">Accept</button>
            </form>
            <form method="post" action="${pageContext.request.contextPath}/customerSupport/deleteFeedback">
                <button class="delete-button" name="feedbackId" value="<%= feedback.getId()%>">Delete</button>
            </form>
        </td>
    </tr>
    <% } %>
    <% } else { %>
    <tr><td colspan="5">No Records</td></tr>
    <% } %>
</table>
</body>
</html>

