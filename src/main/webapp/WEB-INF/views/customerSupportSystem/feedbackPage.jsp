<%@ page import="com.happyman.Ruby.masterService.dao.Feedback" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Dhanuka
  Date: 4/20/2024
  Time: 8:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<% List<Feedback> feedbackList = new ArrayList<>(); %>
<% feedbackList = (List<Feedback>) request.getAttribute("acceptedFeedbacks"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer feedbacks</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/customerSupport/feedbackPageCSS.css">
    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous">
    </script>
</head>
<body>
<div class="container">
    <div class="header">
        <h3 class="title">Customer feedback</h3>
        <a href="#" class="top-right-button">
            <img src="${pageContext.request.contextPath}/images/customerSupport/addition.png" class="icon" alt="">
        </a>

    </div>
    <% if (feedbackList != null && !feedbackList.isEmpty()) { %>
    <% for (Feedback feedback : feedbackList) { %>
    <div class="feedback">
        <p><%= feedback.getMessage()%></p>
        <div class="meta"><%=feedback.getUserName()%></div>
    </div>
    <% } %>
    <% } %>
</div>
</body>
</html>

