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
</head>
<body>
<h1>Login</h1>
<form action="login.jsp" method="post">
    <label for="username">Username:</label>
    <input type="text" class="username" name="username" required="required">
    <label for="password">Password:</label>
    <input type="text" class="password" name="password" required="required">
</form>
</body>
</html>
