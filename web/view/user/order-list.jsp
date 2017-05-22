<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>${user.login} | Order List</title>
    </head>
    <body>
        <a href="/link/user">Home</a>

        <h3>Ordered food list</h3>
        <table>
            <tr>
                <th>No.</th>
                <th>ID</th>
                <th>Food Type</th>
                <th>Name</th>
                <th>Price (RM)</th>
            </tr>

            ${orderListByUserId}
            <!-- output a list of this <tr> from the controller
            <tr>
                <td><< no: 1 >></td>
                <td><< food.id: 1 >></td>
                <td><< foodType.name: vegetables >></td>
                <td><< food.name: Banana >></td>
                <td><< food.price: 10.00 >></td>
            </tr>
            -->
        </table>
    </body>
</html>
