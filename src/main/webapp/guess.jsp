<%--
  Created by IntelliJ IDEA.
  User: casanovageary
  Date: 11/12/22
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess</title>
</head>
<body>
<h1>Guess the machines number between 1 and 3.</h1>
<form action="/guess" method="post">
    <label for="guess">Enter number:</label>
    <input type="text" id="guess" name="guess">
    <button>Submit</button>
</form>
</body>
</html>
