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

            ${foodTypeList}
            <!-- output this for each row
            <tr>
                <td><< no: 1 >></td>
                <td><< foodType.id: 1 >></td>
                <td><< foodType.name: Vegetables >></td>
                <td>
                    <form action="" method="post">
                        <button type="submit" value="<< foodType.id: 1 >>">Delete</button>
                    </form>
                </td>
            </tr>
            -->
        </table>
    </body>
</html>
