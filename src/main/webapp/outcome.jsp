<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: casanovageary
  Date: 11/12/22
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Outcome</title>
</head>
<body>
<c:choose>
    <c:when test="${outcome}">
        <h1>You guessed correctly</h1>
    </c:when>
    <c:otherwise>
        <h1>You guessed incorrectly</h1>
    </c:otherwise>
</c:choose>

</body>
</html>
