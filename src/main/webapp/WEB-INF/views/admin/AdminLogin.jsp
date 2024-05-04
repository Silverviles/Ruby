<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/2/2024
  Time: 9:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 17/03/2024
  Time: 05:23
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Register Portal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/transportation/driver_login.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<%--<div id="login-page" class="login-page">--%>
<%--    <h2>Login</h2>--%>
<%--    <form id="login-form" method="post" action="${pageContext.request.contextPath}/transport/login">--%>
<%--        <input id="loginEmail" name="email" aria-label="email" type="text" placeholder="Email" required>--%>
<%--        <input id="loginPassword" name="password" aria-label="password" type="password" placeholder="Password" required>--%>
<%--        <button type="submit">Login</button>--%>
<%--        <p>Don't have an account? <a href="#" onclick="showRegister()">Sign Up</a></p>--%>
<%--    </form>--%>
<%--</div>--%>
    <div id="register-page" class="register-page" style="display: block;">
        <h2>Login</h2>
        <form id="register-form" method="get" action="${pageContext.request.contextPath}/admin/adminLogin">
            <input id="username" name="username" aria-label="username" type="text" placeholder="username" required>
            <input id="signupPassword" name="password" aria-label="Password" type="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
<%--<script src="${pageContext.request.contextPath}/scripts/employeeManagement/AdminLogin.js"></script>--%>
</body>
</html>