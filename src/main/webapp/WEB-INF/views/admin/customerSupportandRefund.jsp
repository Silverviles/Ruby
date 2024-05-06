<%--
  Created by IntelliJ IDEA.
  User: ASUS TUF
  Date: 5/4/2024
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Support and Refunds</title>
</head>
<form action="${pageContext.request.contextPath}/customerSupport/feedback" method="get">
    <button type="submit">Add Feedback</button>
</form>

<form action="${pageContext.request.contextPath}/customerSupport/giveComplaintForm" method="get">
    <button type="submit">Give Complaints</button>
</form>

<form action="${pageContext.request.contextPath}/payments/refundPage" method="get">
    <button type="submit">Request Refund</button>
</form>

<form action="${pageContext.request.contextPath}/transport/loginForm" method="get">
    <button type="submit">Driver Login</button>
</form>

<body>

</body>
</html>
