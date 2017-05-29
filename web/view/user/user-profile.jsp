<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<html>
    <head>
        <title>${user.login} | Profile</title>
    </head>
    <body>
        <a href="/link/user/order-list">Order List</a>
        <a href="/link/order-food">Order Food</a>

        <h3>User Profile</h3>
        <table>
            <tr>
                <td>ID:</td>
                <td>${user.id}</td>
            </tr>
            <tr>
                <td>Login:</td>
                <td>${user.login}</td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>${user.password}</td>
            </tr>
        </table>

        <form action="/users/logout" method="post">
            <input type="submit" value="Logout" />
        </form>
    </body>
</html>
