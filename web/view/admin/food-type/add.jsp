<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Add New Food Type</title>
    </head>
    <body>
        <a href="/link/admin">Home</a>

        <form action="/foods/food-type/register" method="post">
            <input type="text" name="name" placeholder="Food type name" />

            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
