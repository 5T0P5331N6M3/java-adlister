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
        <label for=street-address>Street Address</label>
        <input type="text" name="location" id="street-address" placeholder="1234 S Pacific Way"> <br>
        <hr>
    </section>
    <%-- CRUST TYPE --%>
    <section class="create-a-pizza">
        <label for="crust">Start by selecting your favorite crust.</label>
        <select name="crust" id=crust>
            <option value="original-crust">Original Crust</option>
            <option value="epic-stuffed-crust">Epic Stuffed Crust</option>
            <option value="thin-crust">Thin Crust</option>
            <option value="gluten-free">Gluten Free Crust</option>
        </select>
    </section>
        <hr>
        <%-- CRUST SIZE --%>
        <section class="base">
            <h2>Create a Base</h2>
            <span>Size</span> <br>
            <input type="radio" name="size" id="small-size" value="small-size">
            <label for="small-size">Small</label><br>
            <input type="radio" name="size" id="medium-size" value="medium-size">
            <label for="medium-size">Medium</label><br>
            <input type="radio" name="size" id="large-size" value="large-size">
            <label for="large-size">Large</label><br>
            <input type="radio" name="size" id="extra-large-size" value="extra-large-size">
            <label for="extra-large-size">Extra Large</label><br>
            <br>
        </section>
        <hr>
        <%-- SAUCE TYPE --%>
        <span>Sauce</span> <br>
        <input type="radio" name="sauce" id="none" value="none">
        <label for="none">None</label><br>
        <input type="radio" name="sauce" id="BBQ" value="BBQ">
        <label for="BBQ">BBQ</label><br>
        <input type="radio" name="sauce" id="ranch" value="ranch">
        <label for="ranch">Ranch</label><br>
        <input type="radio" name="sauce" id="original" value="original">
        <label for="original">Original</label><br>
        <input type="radio" name="sauce" id="buffalo" value="buffalo">
        <label for="buffalo">Buffalo</label><br>
        <input type="radio" name="sauce" id="alfredo" value="alfredo">
        <label for="alfredo">Alfredo</label><br>
        <%-- TOPPINGS --%>
        <section class="veggeis">
            <h2>Veggies</h2>
            <span>Veggies</span><br>
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
