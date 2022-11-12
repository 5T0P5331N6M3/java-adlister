<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: casanovageary
  Date: 11/12/22
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>
<body>
<h1>Login Page</h1>

<form action="login.jsp" method="post">
    <div class="row mb-3">
        <label for="username">Username:</label>
        <div class="col-sm-10">
            <input id="username" type="text" class="username" name="username" required="required">
        </div>
    </div>
    <div class="row mb-3">
        <label for="password">Password:</label>
        <div class="col-sm-10">
            <input id="password" type="text" class="password" name="password" required="required">
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Sign in</button>
</form>

<p>Username: ${param.username}</p>
<p>Password: ${param.password}</p>

<c:choose>
    <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
        <% response.sendRedirect("/profile.jsp"); %>
    </c:when>
</c:choose>
</body>
</html>