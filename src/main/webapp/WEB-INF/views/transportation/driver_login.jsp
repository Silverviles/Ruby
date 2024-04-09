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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<div id="login-page" class="login-page">
    <h2>Login</h2>
    <form id="login-form" method="post" action="${pageContext.request.contextPath}/transport/login">
        <input id="loginEmail" name="email" aria-label="email" type="text" placeholder="Email" required>
        <input id="loginPassword" name="password" aria-label="password" type="password" placeholder="Password" required>
        <button type="submit">Login</button>
        <p>Don't have an account? <a href="#" onclick="showRegister()">Sign Up</a></p>
    </form>
</div>

<div id="register-page" class="register-page">
    <h2>Register</h2>
    <form id="register-form" method="post" action="${pageContext.request.contextPath}/transport/signup">
        <input id="first_name" name="first_name" aria-label="First Name" type="text" placeholder="First Name" required>
        <input id="last_name" name="last_name" aria-label="Last Name" type="text" placeholder="Last Name" required>
        <input id="v_type" name="v_type" aria-label="Vehicle Type" type="text" placeholder="Vehicle Type" required>
        <input id="v_number" name="v_number" aria-label="Vehicle Number" type="text" placeholder="Vehicle Number" required>
        <input id="seat_count" name="seat_count" aria-label="Seat Count" type="number" placeholder="Seat Count" required>
        <input id="signupEmail" name="email" aria-label="Email" type="email" placeholder="Email" required>
        <input id="mobile_no" name="mobile_no" aria-label="Mobile Number" type="tel" placeholder="Mobile Number" required>
        <input id="signupPassword" name="password" aria-label="Password" type="password" placeholder="Password" required>
        <input id="confirm_password" name="confirm_password" aria-label="Confirm Password" type="password" placeholder="Confirm Password" required>
        <button type="submit">Register</button>
        <p>Already have an account? <a id="show_login" href="#" onclick="showLogin()">Login</a></p>
    </form>
</div>

<script src="${pageContext.request.contextPath}/scripts/transportation/driver_login.js"></script>
</body>
</html>