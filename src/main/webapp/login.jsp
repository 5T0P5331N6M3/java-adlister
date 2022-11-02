<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<form action="login.jsp" method="POST">
    <label for="username">Username: </label>
    <input type="text" id="username" placeholder="Enter Username" name="uname">
    <br>
    <label for="password">Password: </label>
    <input type="text" id="password" placeholder="Enter Password" name="pwd">
    <br>
    <input type="submit" value="Submit">
</form>

<p>Username: ${param.uname}</p>
<p>Password: ${param.pwd}</p>

<c:choose>
    <c:when test="${param.uname.equals('admin') && param.pwd.equals('password')}">

        <% response.sendRedirect("/profile.jsp"); %>
    </c:when>
    <c:otherwise>
        <c:if test="${param.username == null && param.password == null}">
                <p>Enter Username and Password</p>
        </c:if>
        <c:if test="${param.username.equals('admin') && param.password.equals('password')}">
        <% response.sendRedirect("/login.jsp"); %>
        </c:if>
    </c:otherwise>
</c:choose>
</body>
</html>
