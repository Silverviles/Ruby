<%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 3/16/2024
  Time: 8:42 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/common/header.css">
    <script src="https://kit.fontawesome.com/20733750a5.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Fjalla+One&display=swap"
          rel="stylesheet">
</head>

<body>
<div id="header">
    <div id="logoNname">
        <div id="logo" style="text-align: center"><span id="happyMan">Happy Man</span> <br> <span id="village">VILLAGE</span></div>
    </div>

    <section>
        <div class="nav">
            <a href="">Home</a>
            <a href="">Gallery</a>
            <a href="">Dinning</a>
            <a href="">Rooms</a>
            <a href="${pageContext.request.contextPath}/packages/view">Packages</a>
            <a href="">Experience</a>
            <a href="">Event</a>
            <a href="">Transport</a>
            <a href="">Admin</a>
        </div>
    </section>
</div>

<script>
    window.addEventListener('scroll', function() {
        var header = document.getElementById('header');
        if (window.scrollY > 0) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    });
</script>
</body>
</html>

