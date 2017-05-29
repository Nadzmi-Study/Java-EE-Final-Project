<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Delete Existing Food Type</title>
    </head>
    <body>
        <a href="/link/admin">Home</a>

        <table>
            <tr>
                <th>No.</th>
                <th>ID</th>
                <th>Name</th>
                <th></th>
            </tr>

            <c:forEach var="foodType" items="${foodTypeList}">
                <tr>
                    <td><< no: 1 >></td>
                    <td><c:out value="${foodType.id}" /></td>
                    <td><c:out value="${foodType.name}" /></td>
                    <td>
                        <form action="/foods/food-type/delete" method="post">
                            <button type="submit" name="foodTypeId" value="${foodType.id}">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
