<%--
  Created by IntelliJ IDEA.
  User: Dhanuka
  Date: 4/20/2024
  Time: 8:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <div class="feedback">
        <p>Had a wonderful dining experience at your restaurant. The ambiance was great, and the staff were friendly and attentive.</p>
        <div class="meta">John Doe on 2024-04-12</div>
    </div>
    <div class="feedback">
        <p>The wait time for our food was longer than usual, but the flavors were amazing once it arrived. Perhaps consider improving the efficiency of the kitchen.</p>
        <div class="meta">Jane Smith on 2024-04-11</div>
    </div>

</div>
</body>
</html>

