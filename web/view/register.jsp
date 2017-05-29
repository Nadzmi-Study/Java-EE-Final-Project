<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<html>
    <head>
        <title>Mini Restaurant System | Register</title>
    </head>
    <body>
        <form action="/users/register" method="post">
            <input type="text" name="login" placeholder="Insert Login" />
            <input type="password" name="password" placeholder="Insert Password" />

            <input type="submit" value="Register" />
        </form>

        <a href="/link/login">Login</a>
    </body>
</html>
