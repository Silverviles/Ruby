<%--
  Created by IntelliJ IDEA.
  User: ASUS TUF
  Date: 5/4/2024
  Time: 9:04 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Refund Request</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/transportation/driver_login.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>

<div id="refundRequest" class="refundRequest" style="display: block;">
    <h2>Refund</h2>
    <form id="request_refund" method="post" action="${pageContext.request.contextPath}/payments/refundRequest">
        <input id="bookingId" name="bookingId" aria-label="bookingId" type="text" placeholder="bookingId" required>
        <button type="submit">Request Refund</button>
    </form>
</div>
</body>
</html>

