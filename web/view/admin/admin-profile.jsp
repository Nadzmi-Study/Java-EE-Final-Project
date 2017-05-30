<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<html>
    <head>
        <title>Admin | Profile</title>

        <!-- bootstrap -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- custom -->
    </head>
    <body>
        <a href="/link/admin/order-list">List of orders</a>
        <ol>Food
            <li><a href="/link/food/add">Add new food</a></li>
            <li><a href="/link/food/delete">Delete existing food</a></li>
            <li><a href="/link/food/edit">Edit existing food</a></li>
        </ol>
        <ol>Food Type
            <li><a href="/link/food-type/add">Add new food type</a></li>
            <li><a href="/link/food-type/delete">Delete existing food type</a></li>
            <li><a href="/link/food-type/edit">Edit existing food type</a></li>
        </ol>

        <h3>Admin Profile</h3>
        <table>
            <tr>
                <td>ID:</td>
                <td>${admin.id}</td>
            </tr>
            <tr>
                <td>Login:</td>
                <td>${admin.login}</td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>${admin.password}</td>
            </tr>
        </table>

        <form action="/users/logout" method="post">
            <input type="submit" value="Logout" />
        </form>

        <!-- bootstrap -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <!-- custom -->
    </body>
</html>
