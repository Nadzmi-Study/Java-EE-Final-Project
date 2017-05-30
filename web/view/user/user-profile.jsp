<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<html>
    <head>
        <title>${user.login} | Profile</title>

        <!-- bootstrap -->
        <link rel="stylesheet" href="../src/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../src/css/bootstrap-theme.min.css" />
        <!-- custom -->
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

        <!-- bootstrap -->
        <script src="src/js/jquery-3.2.1.min.js"></script>
        <script src="src/js/bootstrap.min.js"></script>
        <script src="src/js/npm.js"></script>
        <!-- custom -->
    </body>
</html>
