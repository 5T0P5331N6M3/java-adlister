
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form action="/register" method="post">
    <label for="email">Email:</label>
    <input type="email" name="email" id="email">
    <label for="username">Username:</label>
    <input type="text" name="username" id="username">
    <label for="password">Password:</label>
    <input type="password" name="password" id="password">
    <button type="submit">Register</button>
</form>
</body>
</html>
