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
    <input type="text" id="username" placeholder="Enter Username">
    <br>
    <label for="password">Password: </label>
    <input type="text" id="password" placeholder="Enter Password">
    <br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
