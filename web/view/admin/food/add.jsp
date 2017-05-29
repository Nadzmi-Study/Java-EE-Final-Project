<%@ page import="java.util.List" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Add New Food</title>
    </head>
    <body>
        <a href="/link/admin">Home</a>

        <form action="/foods/register" method="post">
            <input type="text" name="name" placeholder="Food Name" />
            <input type="number" name="price" placeholder="Food Price" />

            <select name="typeId">
                <option value="-">...</option>
                <c:forEach var="foodType" items="${foodTypeList}">
                    <option value="${foodType.id}">${foodType.name}</option>
                </c:forEach>
            </select>

            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
