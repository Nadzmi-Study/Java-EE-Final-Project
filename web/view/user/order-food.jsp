<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>${user.login} | Order Food</title>
    </head>
    <body>
        <a href="user-profile.jsp">Home</a>

        <h3>Order food here</h3>
        <table>
            <tr>
                <th>No.</th>
                <th>ID</th>
                <th>Food Type</th>
                <th>Name</th>
                <th>Price (RM)</th>
                <th></th>
            </tr>

            ${foodList}
            <!-- output a list of this <tr> from the controller
            <tr>
                <td><< no: 1 >></td>
                <td><< food.id: 1 >></td>
                <td><< foodType.name: vegetables >></td>
                <td><< food.name: Banana >></td>
                <td><< food.price: 10.00 >></td>
                <td>
                    <form action="" method="post">
                        <button type="submit" value="<< food.id: 1 >>">Order</button>
                    </form>
                </td>
            </tr>
            -->
        </table>
    </body>
</html>
