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
    <title>Color Choice</title>
</head>
<body>
<form action="/pickcolor" method="POST">
<h1>What is your favorite color?</h1>
<label>
    <input type="text" class="text" name="text" placeholder="Enter color here.">
    <input type="text" class="submit" value="Submit" name="submit">
</label>
</form>
</body>
</html>
