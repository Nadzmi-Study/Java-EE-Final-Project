<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Mini Restaurant System</title>
    </head>
    <body>
        <form action="/users/login" method="post">
            <input type="text" name="login" placeholder="Login" />
            <input type="password" name="password" placeholder="Password" />

            <input type="submit" value="Login" />
        </form>

        <a href="/link/register">Register</a>
    </body>
</html>
