<%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 09/02/2024
  Time: 22:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
Landing Page
<a href="${pageContext.request.contextPath}/restaurant/food">Go TO Food Page</a>
<form method="get" id="transportForm">
    <button data-action="transport/loginForm">Transportation Login</button>
    <button data-action="transport/portal">Transportation Portal</button>
    <button data-action="transport/transportForm">Transportation Form</button>
</form>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const transportForm = document.getElementById("transportForm");
        const buttons = transportForm.querySelectorAll("button");

        buttons.forEach(function (button) {
            button.addEventListener("click", function () {
                transportForm.action = this.getAttribute("data-action");
            });
        });
    });

</script>
</body>
</html>