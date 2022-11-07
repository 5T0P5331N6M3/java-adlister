<%--
  Created by IntelliJ IDEA.
  User: casanovageary
  Date: 11/7/22
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product a Create</title>
</head>
<body>
<h1>Create a Product</h1>
<form action="/products/create" method="POST">
    <label for="name">Name</label>
    <input type="text" name="name" id="name">
    <br />
    <label for="price">Price</label>
    <input type="text" name="pirce" id="price">
    <br />
    <input type="submit">
</form>
</body>
</html>
