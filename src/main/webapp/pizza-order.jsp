<%--
  Created by IntelliJ IDEA.
  User: casanovageary
  Date: 11/2/22
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>
<h1>Pizza Order Form</h1>
<hr>
<form action="/pizza-order" method="post">
    <%-- DELIVERY ADDRESS --%>
    <section class="delivery-address">
        <h2><b>Delivery Address</b></h2>
        <label for="street-address">Street Address</label>
        <input type="text" name="location" id="street-address" placeholder="1234 S Pacific Way"> <br>
        <hr>
    </section>
    <h2>Create a Base</h2>
    <hr>
    <%-- CRUST TYPE --%>
    <section class="create-a-pizza">
        <label for="crust-type"><b>Crust Type</b></label>
        <select name="crust-type" id="crust-type">
            <option value="original-crust">Original Crust</option>
            <option value="epic-stuffed-crust">Epic Stuffed Crust</option>
            <option value="thin-crust">Thin Crust</option>
            <option value="gluten-free">Gluten Free Crust</option>
        </select>
    </section>
        <br>
        <br>
    <%-- CRUST SIZE --%>
    <section class="base">
        <label for="crust-size"><b>Crust Size</b></label>
        <select name="crust-size" id="crust-size">
            <option value="small">Small</option>
            <option value="medium">Medium</option>
            <option value="large">Large</option>
            <option value="extra-large">Extra Large</option>
        </select>
    </section>
        <br>
        <br>
    <%-- SAUCE TYPE --%>
    <section>
        <label for="sauce"><b>Sauce</b></label>
        <select name="sauce" id="sauce">
            <option value="none">None</option>
            <option value="bbq">BBQ</option>
            <option value="hummus-alfredo">Hummus Alfredo</option>
            <option value="marinara">Marinara</option>
            <option value="white">White</option>
        </select>
    </section>
        <br>
        <br>
    <%-- TOPPINGS --%>
        <h2>Toppings</h2>
        <hr>
    <section class="veggies">
        <span><b>Veggies</b></span><br>
        <input type="checkbox" name="veggies" id="roma-tomatoes" value="roma-tomatoes">
        <label for="roma-tomatoes">Roma Tomatoes</label><br>
        <input type="checkbox" name="veggies" id="mushrooms" value="mushrooms">
        <label for="mushrooms">Mushrooms</label><br>
        <input type="checkbox" name="veggies" id="pineapple" value="pineapple">
        <label for="pineapple">Pineapple</label><br>
        <input type="checkbox" name="veggies" id="green-chiles" value="green-chiles">
        <label for="green-chiles">Green Chiles</label><br>
        <input type="checkbox" name="veggies" id="jalepeno-peppers" value="jalepeno-peppers">
        <label for="jalepeno-peppers">Jalepeno Peppers</label><br>
        <input type="checkbox" name="veggies" id="onions" value="onions">
        <label for="onions">Onions</label><br>
        <input type="checkbox" name="veggies" id="green-peppers" value="green-peppers">
        <label for="green-peppers">Green Peppers</label><br>
        <input type="checkbox" name="veggies" id="banana-peppers" value="banana-peppers">
        <label for="banana-peppers">Banana Peppers</label><br>
        <input type="checkbox" name="veggies" id="fresh-spinach" value="fresh-spinach">
        <label for="fresh-spinach">Fresh Spinach</label><br>
        <input type="checkbox" name="veggies" id="black-olives" value="black-olives">
        <label for="black-olives">Black Olives</label><br>
    </section>
    <hr>
    <input type="submit" value="Submit">
</form>
</body>
</html>
