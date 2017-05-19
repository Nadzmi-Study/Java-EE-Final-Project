<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Profile</title>
    </head>
    <body>
        <a href="order-list.jsp">List of orders</a>
        <ol>Food
            <li><a href="food/add.jsp">Add new food</a></li>
            <li><a href="food/delete.jsp">Delete existing food</a></li>
            <li><a href="food/edit.jsp">Edit existing food</a></li>
        </ol>
        <ol>Food Type
            <li><a href="food-type/add.jsp">Add new food type</a></li>
            <li><a href="food-type/delete.jsp">Delete existing food type</a></li>
            <li><a href="food-type/edit.jsp">Edit existing food type</a></li>
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

        <form action="" method="post">
            <input type="submit" value="Logout" />
        </form>
    </body>
</html>
