<%@ page import="com.seladanghijau.model.Foods" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="org.springframework.mock.web.MockHttpServletRequest" %>
<%@ page import="org.springframework.mock.web.MockHttpServletResponse" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Delete Existing Food</title>
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

            ${foodList}
            <!-- output this for each row
            <tr>
                <td><< no: 1 >></td>
                <td><< food.id: 1 >></td>
                <td><< food.name: tomatoes >></td>
                <td><< foodType.name: vegetables >></td>
                <td><< food.price: 10.00 >></td>
                <td>
                    <form action="" method="post">
                        <button type="submit" value="<< food.id: 1 >>">Delete</button>
                    </form>
                </td>
            </tr>
            -->
        </table>
    </body>
</html>
