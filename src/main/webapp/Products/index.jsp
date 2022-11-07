<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: casanovageary
  Date: 11/7/22
  Time: 10:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products Lecture/Example</title>
</head>
<body>
<h1>Products</h1>
<hr>
<c:forEach var="product" items="${products}">
    <div class="product">
        <h2>${product.name}</h2>
        <p>Price: $ ${product.price}</p>
    </div>
</c:forEach>
</body>
</html>
