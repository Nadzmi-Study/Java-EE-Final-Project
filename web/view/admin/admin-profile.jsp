<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Profile</title>
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
    </body>
</html>
