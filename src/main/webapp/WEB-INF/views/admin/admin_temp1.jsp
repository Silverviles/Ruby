<%--
  Created by IntelliJ IDEA.
  User: sdilr
  Date: 4/10/2024
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/20733750a5.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Fjalla+One&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/admin/admin_sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/admin/admin.css">

</head>

<body>
<div class="whole">

        <jsp:include page="admin_sidebar.jsp">

    <div class="content">
        <div class="top2">
            <div class="topic">Topic_Name</div>
            <div class="admin_pro">
                <a href="">
                    <i class="fa-solid fa-user-tie"></i>
                    Admin
                    <hr>
                </a>
            </div>
        </div>

        <hr style="margin: 0 10px 0 10px;">

        <div class="middle">
            <div class="subTopic">Function_Name</div>
            <div class="form">
                <form action="">
                    <table border="1">
                        <tr>
                            <td>
                                <label for="x">Name :</label>
                                <input type="text" name="" id="x" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="date">Date : </label>
                                <input type="date" id="date">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="y">Description :</label>
                                <textarea name="" id="y" rows="1" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="lastrow">
                                <label for="z">Image :</label>
                                <input type="text" name="" id="z"> <!-- url or path -->
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <input class="submitbtn" type="submit" value="SUBMIT">
                            </td>
                        </tr>

                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    let btn = document.querySelector('#btn');
    let sidebar = document.querySelector('.sidebar');

    btn.onclick = function(){
        sidebar.classList.toggle('active');
    };
</script>

<script src="${pageContext.request.contextPath}/scripts/admin/admin.js"></script>
</body>
</html>
