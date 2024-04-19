<%--
  Created by IntelliJ IDEA.
  User: Dhanuka
  Date: 4/19/2024
  Time: 11:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    </tr>
    <tr>
        <td>John Clark</td>
        <td>johnclark@gmail.com</td>
        <td>B11052</td>
        <td>Had a wonderful dining experience at your restaurant. The ambiance was great, and the staff were friendly and attentive.</td>

        <td>
            <button class="accept-button">Accept</button>
            <button class="delete-button">Delete</button>
        </td>
    </tr>
</table>
</body>
</html>

