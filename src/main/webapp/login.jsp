<%--
  Created by IntelliJ IDEA.
  User: casanovageary
  Date: 11/2/22
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Login Form</title>
</head>
<body>
<h1>Login Form</h1>
<form action="/login.jsp" method="post">
    <label for="username">Username: </label>
    <input type="text" id="username" placeholder="Enter Username" name="uname">
    <br>
    <label for="password">Password: </label>
    <input type="text" id="password" placeholder="Enter Password" name="pwd">
    <br>
    <input type="submit" value="Submit">
</form>
<p>"username" parameter: ${param.uname}</p>
<p>"password" parameter: ${param.pwd}</p>
<c:if>
    <c:when test="${param.uname.equals('admin') && param.pwd.equals('password')}">
        <%response.sendRedirect("/profile.jsp");%>
    </c:when>
    <c:otherwise>
        <%response.sendRedirect("/login.jsp");%>
    </c:otherwise>
</c:if>
</body>
</html>
