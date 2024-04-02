<%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 17/03/2024
  Time: 05:23
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Register Portal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/transportation/driver_login.css">
</head>
<body>
<div id="login-page" class="login-page">
    <h2>Login</h2>
    <form id="login-form">
        <input aria-label="username" type="text" placeholder="Username" required>
        <input aria-label="password" type="password" placeholder="Password" required>
        <button type="submit">Login</button>
        <p>Don't have an account? <a href="#" onclick="showRegister()">Sign Up</a></p>
    </form>
</div>

<div id="register-page" class="register-page">
    <h2>Register</h2>
    <form id="register-form" method="post" action="${pageContext.request.contextPath}/transport/signup">
        <input aria-label="first_name" type="text" placeholder="First Name" required>
        <input aria-label="last_name" type="text" placeholder="Last Name" required>
        <input aria-label="v_type" type="text" placeholder="Vehicle Type" required>
        <input aria-label="v_number" type="text" placeholder="Vehicle Number" required>
        <input aria-label="seat_count" type="number" placeholder="Seat Count" required>
        <input aria-label="email" type="email" placeholder="Email" required>
        <input aria-label="mobile_no" type="tel" placeholder="Mobile Number" required>
        <input aria-label="password" type="password" placeholder="Password" required>
        <input aria-label="password" type="password" placeholder="Confirm Password" required>
        <button type="submit">Register</button>
        <p>Already have an account? <a id="show_login" href="#" onclick="showLogin()">Login</a></p>
    </form>
</div>

<script src="${pageContext.request.contextPath}/scripts/transportation/driver_login.js"></script>
</body>
</html>