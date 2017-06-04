<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
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
                <th>User</th>
                <th>Food</th>
                <th>Food Type</th>
                <th>Price (RM)</th>
                <th>Order Time</th>
            </tr>

            <c:forEach varStatus="loop" var="order" items="${orderList}">
                <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost/mini_restaurant"
                                   user="root" password="" />
                <sql:query var="user" dataSource="${db}">
                    SELECT * FROM users WHERE id LIKE ${order.userId};
                </sql:query>
                <sql:query var="food" dataSource="${db}">
                    SELECT * FROM foods WHERE id LIKE ${order.foodId};
                </sql:query>
                <sql:query var="foodType" dataSource="${db}">
                    SELECT * FROM food_types WHERE id LIKE (
                        SELECT type_id FROM foods WHERE id LIKE ${order.foodId}
                    );
                </sql:query>

                <tr>
                    <td><c:out value="${loop.index + 1}" /></td>
                    <td>
                        <c:forEach var="item" items="${user.rows}">
                            <c:out value="${item.login}" />
                        </c:forEach>
                    </td>
                    <td>
                        <c:forEach var="item" items="${food.rows}">
                            <c:out value="${item.name}" />
                        </c:forEach>
                    </td>
                    <td>
                        <c:forEach var="item" items="${foodType.rows}">
                            <c:out value="${item.name}" />
                        </c:forEach>
                    </td>
                    <td>
                        <c:forEach var="item" items="${food.rows}">
                            <c:out value="${item.price}" />
                        </c:forEach>
                    </td>
                    <td><c:out value="${order.orderTime}" /></td>
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
