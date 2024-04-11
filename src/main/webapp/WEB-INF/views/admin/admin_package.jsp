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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/admin/formstyles.css">

</head>

<body>
<div class="whole">
    <jsp:include page="admin_sidebar.jsp"/>

    <div class="content">
        <div class="top2">
            <div class="topic">Packages</div>
            <div class="admin_pro">
                <a href="#">
                    <i class="fa-solid fa-user-tie"></i>
                    Admin
                    <hr>
                </a>
            </div>
        </div>

        <hr style="margin: 0 10px 0 10px;">

        <div class="middle">
            <%--            <div class="subTopic" style="text-align: center;">Function_Name</div>--%>
            <div class="container">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Discontinue Date</th>
                        <th>Availability</th>
                        <th>Type</th>
                        <th>No of Max Adults</th>
                    </tr>

                    <div class="tbody">
                    <c:forEach var="package" items="${package}">
                        <tr>
                            <td>${package.packageId}</td>
                            <td>${package.name}</td>
                            <td>${package.description}</td>
                            <td>${package.price}</td>
                            <td>${package.discontinueDate}</td>
                            <td>${package.availability}</td>
                            <td>${package.type}</td>
                            <td>${package.maxAdults}</td>
                        </tr>

                        <div class="edit" title="Edit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </div>

                        <div class="delete" title="Delete">
                            <i class="fa-solid fa-trash"></i>
                        </div>
                    </c:forEach>
                    </div>

                </table>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/scripts/admin/admin.js"></script>

</body>
</html>