<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>${user_data.login} | Profile</title>

        <!-- bootstrap -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- custom -->
    </head>
    <body>
        <a href="/link/user/order-list">Order List</a>
        <a href="/link/order-food">Order Food</a>

        <h3>User Profile</h3>
        <table>
            <tr>
                <td>ID:</td>
                <td>${user_data.id}</td>
            </tr>
            <tr>
                <td>Login:</td>
                <td>${user_data.login}</td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>${user_data.password}</td>
            </tr>
        </table>

        <form action="/users/logout" method="post">
            <input type="submit" value="Logout" />
        </form>

        <!-- bootstrap -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- custom -->
    </body>
</html>
