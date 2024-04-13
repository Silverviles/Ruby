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
    <jsp:include page="${pageContext.request.contextPath}/common/admin_sidebar.jsp"/>

    <div class="content">
        <div class="top2">
            <div class="topic">Packages</div>
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
            <div class="subTopic" style="text-align: center;">Add New Package</div>
            <div class="container">
                <form method="post" action="#">
                    <div class="form-group">
                        <label for="name">Name:</label><br>
                        <input type="text" id="name" name="name" required><br><br>
                    </div>

                    <div class="form-group">
                        <label for="description">Description:</label><br>
                        <textarea id="description" name="description" rows="4" required></textarea><br><br>
                    </div>

                    <div class="form-group">
                        <label for="price">Price:</label><br>
                        <input type="number" id="price" name="price" step="0.01" required><br><br>
                    </div>

                    <div class="form-group">
                        <label for="discontinueDate">Discontinue Date:</label><br>
                        <input type="date" id="discontinueDate" name="discontinueDate"><br><br>
                    </div>

                    <div class="form-group">
                        <label for="availability">Availability (1 for available, 0 for unavailable):</label><br>
                        <input type="number" id="availability" name="availability" min="0" max="1" required><br><br>
                    </div>

                    <div class="form-group">
                        <label for="type">Type:</label><br>
                        <select id="type" name="type" required>
                            <option value="Family">Family</option>
                            <option value="Couple">Couple</option>
                            <option value="Business">Business</option>
                            <option value="Large Group">Large Group</option>
                        </select><br><br>
                    </div>

                    <div class="form-group">
                        <label for="maxAdults">Maximum Adults:</label><br>
                        <input type="number" id="maxAdults" name="maxAdults">
                    </div>
                    <br><br>
                    <button class="subbtn" type="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/scripts/admin/admin.js"></script>
</body>
</html>