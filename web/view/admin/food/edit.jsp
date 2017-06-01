<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Edit Existing Food</title>

        <!-- bootstrap -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- custom -->
    </head>
    <body>
        <a href="/link/admin">Home</a>

        <table>
            <tr>
                <th>No.</th>
                <th>ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Price (RM)</th>
                <th></th>
            </tr>

            <c:forEach varStatus="loop" var="food" items="${foodList}">
                <form action="/foods/update" method="post">
                    <tr>
                        <td><c:out value="${loop.index + 1}" /></td>
                        <td><c:out value="${food.id}" /></td>
                        <td><input type="text" name="name" value="${food.name}" /></td>
                        <td>
                            <select name="typeId">
                                <c:forEach var="foodType" items="${foodTypeList}">
                                    <option value="${foodType.id}"><c:out value="${foodType.name}" /></option>
                                </c:forEach>
                            </select>
                        </td>
                        <td><input type="number" name="price" value="${food.price}" /></td>
                        <td>
                            <input type="hidden" name="id" value="${food.id}" />
                            <input type="submit" value="Edit" />
                        </td>
                    </tr>
                </form>
            </c:forEach>
        </table>

        <!-- bootstrap -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <!-- custom -->
    </body>
</html>
