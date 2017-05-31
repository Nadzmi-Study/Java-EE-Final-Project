<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Order List</title>

        <!-- bootstrap -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- custom -->
    </head>
    <body>
        <a href="/link/admin">Home</a>

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

            <c:forEach varStatus="loop" var="order" items="${orderList}">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${order.foodId}</td>
                    <td><< foodType.name: vegetables >></td>
                    <td><< food.name: Banana >></td>
                    <td><< food.price: 10.00 >></td>
                    <td>${order.userId}</td>
                </tr>
            </c:forEach>
        </table>

        <!-- bootstrap -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <!-- custom -->
    </body>
</html>
