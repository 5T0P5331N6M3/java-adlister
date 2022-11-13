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
<form action="/pick-color.jsp">
    <label for="colorChoice">Select a Color:</label>
    <input type="color" id="colorChoice" name="colorChoice" value="#FF00EA">
    <br>
    <br>
    <input type="Submit">
</form>
</body>
</html>
