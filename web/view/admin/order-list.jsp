<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Order List</title>
    </head>
    <body>
        <a href="admin-profile.jsp">Home</a>

        <h3>All ordered food list</h3>
        <table>
            <tr>
                <th>No.</th>
                <th>ID</th>
                <th>Food Type</th>
                <th>Name</th>
                <th>Price (RM)</th>
                <th>User ID</th>
            </tr>

            ${foodList}
            <!-- output a list of this <tr> from the controller
            <tr>
                <td><< no: 1 >></td>
                <td><< food.id: 1 >></td>
                <td><< foodType.name: vegetables >></td>
                <td><< food.name: Banana >></td>
                <td><< food.price: 10.00 >></td>
                <td><< user.id: 1 >></td>
            </tr>
            -->
        </table>
    </body>
</html>
