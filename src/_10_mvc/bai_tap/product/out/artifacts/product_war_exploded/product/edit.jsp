<%--
  Created by IntelliJ IDEA.
  User: ledinhthinh
  Date: 12/20/2020
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to list product</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="description" id="description"
                           value="${requestScope["product"].getDescription()}"></td>
            </tr>
            <tr>
                <td>Producer</td>
                <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}">
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
