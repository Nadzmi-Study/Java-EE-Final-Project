<%@ page import="java.util.List" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Add New Food</title>
    </head>
    <body>
        <a href="/link/admin">Home</a>

        <form:errors path="foodTypes.*" />

        <form:form action="" method="post">
            <input type="text" name="name" placeholder="Food Name" />
            <input type="number" name="price" placeholder="Food Price" />
            <form:select path="foodTypeList">
                <form:option value="0" label="Select" />
                <form:options items="${foodTypeList}" />
            </form:select>

            <!--
            <select name="typeId">
                output a list of food types
                <option value="<< foodTyped.id >>"><< foodType.name >></option>
            </select>
            -->

            <input type="submit" value="Submit" />
        </form:form>
    </body>
</html>
