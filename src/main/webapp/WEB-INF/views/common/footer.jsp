<%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 3/16/2024
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
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
</head>

<body>

<footer class="footer">

    <div id="fitem1">QUICK LINKS</div>

    <div id="fitem2">
        <ul class="nav2">
            <li><a href="">Gallery</a></li>
            <li><a href="">Dinning</a></li>
            <li><a href="">Rooms</a></li>
            <li><a href="">Packages</a></li>
            <li><a href="">Experience</a></li>
            <li><a href="">Event</a></li>
            <li><a href="">Transport</a></li>
            <form method="get" action="${pageContext.request.contextPath}/payments/refundButton">
<%--                <input type="hidden" value="<%= employee.getId()%>" name="employeeId"/>--%>
                <button class="refund-button">Customer Support And Refund</button>
            </form>
            <li><a href="">Feedback</a></li>
        </ul>

    </div>

    <div id="fitem3" class="middle-item">
        <a href="#call">
            <i class="fa-solid fa-phone-volume"></i>
            +94 77 719 8192
        </a>
    </div>

    <div id="fitem4" class="middle-item">
        <a href="happymanvillage@gmail.com">
            <i class="fa-solid fa-at"></i>
            happymanvillage@gmail.com
        </a>
    </div>

    <div id="fitem5" class="middle-item">
        <a href="www.facebook.com"><i class="fa-brands fa-facebook-f"></i></i></a>
        <a href="www.twitter.com"><i class="fa-brands fa-twitter"></i></a>
        <a href="www.instargram.com"><i class="fa-brands fa-instagram"></i></a>
    </div>

    <div id="fitem6">CONTACT US</div>

    <div id="fitem7">
        No. 219 B <br>
        Nape Kosgoda <br>
        Bentota 80570
    </div>

    <div id="fitem8">
        &copy;HappyManVillage.lk | Designed and Developed by Team
    </div>

</footer>
</body>
</html>
<%--<footer class="footer">--%>
<%--    <h1>Happy Man Village</h1>--%>
<%--    <div class="footer-nav">--%>
<%--        <a href="">Home</a>--%>
<%--        <a href="">Gallery</a>--%>
<%--        <a href="">Dinning</a>--%>
<%--        <a href="">Rooms</a>--%>
<%--        <a href="">Packages</a>--%>
<%--        <a href="">Experience</a>--%>
<%--        <a href="">Event</a>--%>
<%--        <a href="">Transport</a>--%>

<%--    </div>--%>

<%--    <p class="fabout">THave <br>mona<br>hsi<br>magulak<br>methana<br>dannan<br>puluwan</p>--%>
<%--    <p class="conDetails">Address <br>Contact<br>&<br>details</p>--%>

<%--    <div class="sicons">--%>
<%--        <a href=""><img src="images/.png"></a>--%>
<%--        <a href=""><img src="images/.png"></a>--%>
<%--        <a href=""><img src="images/.png"></a>--%>
<%--        <a href=""><img src="images/.png"></a>--%>
<%--    </div>--%>

<%--    <p class="footer-company-name">© xxxxxxxxxx</p>--%>
<%--</footer>--%>
