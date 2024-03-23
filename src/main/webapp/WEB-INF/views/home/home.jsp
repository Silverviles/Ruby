<%--
  Created by IntelliJ IDEA.
  User: silverviles
  Date: 09/02/2024
  Time: 22:26
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--    Use this tag to include the header and the footer in your html page.--%>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/common/header.css">
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<%--Your page content--%>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>