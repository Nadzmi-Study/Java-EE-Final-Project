<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title><c:out value="${user_data.login}" /> | Order List</title>

        <!-- bootstrap -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- custom -->
    </head>
    <body>
        <a href="/link/user">Home</a>

        <h3>Ordered food list</h3>
        <table>
            <tr>
                <th>No.</th>
                <th>Name</th>
                <th>Food Type</th>
                <th>Price (RM)</th>
            </tr>

            <c:forEach varStatus="loop" var="order" items="${orderListByUserId}">
                <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost/mini_restaurant"
                                   user="root" password="" />
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
                        <c:forEach var="item" items="${food.rows}">
                            <td><c:out value="${item.name}" /></td>
                        </c:forEach>
                    </td>
                    <td>
                        <c:forEach var="item" items="${foodType.rows}">
                            <c:out value="${item.name}" />
                        </c:forEach>
                    </td>
                    <td>
                        <c:forEach var="item" items="${food.rows}">
                            <td><c:out value="${item.price}" /></td>
                        </c:forEach>
                    </td>
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
