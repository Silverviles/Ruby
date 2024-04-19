<%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 09/02/2024
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/common/header.css">
</head>
<body>
Landing Page
<jsp:include page="../common/header.jsp"/>

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

<%--Your page content--%>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>