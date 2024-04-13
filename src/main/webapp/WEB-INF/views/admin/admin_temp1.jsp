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
            <div class="subTopic" style="text-align: center;">Function_Name</div>
            <div class="container">
                <form>
                    <div class="form-group">
                        <label for="text-input">Text Input:</label>
                        <input type="text" id="text-input" name="text-input">
                    </div>
                    <div class="form-group">
                        <label for="email-input">Email Input:</label>
                        <input type="email" id="email-input" name="email-input">
                    </div>
                    <div class="form-group">
                        <label for="password-input">Password Input:</label>
                        <input type="password" id="password-input" name="password-input">
                    </div>
                    <div class="form-group">
                        <label for="date">Date Input:</label>
                        <input type="date" id="date" name="date">
                    </div>
                    <div class="form-group">
                        <label for="number-input">Number Input:</label>
                        <input type="number" id="number-input" name="number-input">
                    </div>
                    <div class="form-group">
                        <label for="textarea-input">Textarea Input:</label>
                        <textarea id="textarea-input" name="textarea-input"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="select-input">Select Input:</label>
                        <select id="select-input" name="select-input">
                            <option value="option1">Option 1</option>
                            <option value="option2">Option 2</option>
                            <option value="option3">Option 3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="checkbox-input">Checkbox Input:</label>
                        <input type="checkbox" id="checkbox-input" name="checkbox-input">
                    </div>
                    <div class="form-group">
                        <label >Radio Input:</label>
                        <br>
                        <input type="radio" id="radio-input1" name="radio-input" value="option1">
                        <label for="radio-input2">Option 1</label>
                        <br>
                        <input type="radio" id="radio-input2" name="radio-input" value="option2">
                        <label for="radio-input2">Option 2</label>
                    </div>
                    <div class="form-group">
                        <label for="file-input">Drag and drop files here or click to upload:</label>
                        <div class="drop-area" id="drop-area">
                            <input type="file" id="file-input" name="file-input">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="tel-input">Tel Input:</label>
                        <input type="tel" id="tel-input" name="tel-input" placeholder="Enter phone number">
                    </div>
                    <div class="form-group">
                        <label for="url-input">URL Input:</label>
                        <input type="url" id="url-input" name="url-input" placeholder="Enter URL">
                    </div>
                    <br><br>
                    <button class="subbtn" type="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/scripts/admin/admin.js"></script>
<script src="${pageContext.request.contextPath}/scripts/admin/dragAndDrop.js"></script>

</body>
</html>