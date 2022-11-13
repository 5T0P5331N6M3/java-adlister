<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: casanovageary
  Date: 11/3/22
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick a Color</title>
</head>
<body>
<h1>What is your favorite color?</h1>
<form action="/pickcolor" method="post">
    <label for="color">Select a Color:</label>
    <input type="text" id="color" name="color" >
    <br>
    <br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
