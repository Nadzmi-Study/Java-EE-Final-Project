<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Edit Exsiting Food Type</title>
    </head>
    <body>
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
                <form action="" method="post">
                    <td><< no: 1 >></td>
                    <td><< foodType.id: 1 >></td>
                    <td><input type="text" name="name" placeholder="Edit the name" value="<< foodType.name: vegetable >>" /></td>
                    <td>
                        <button type="submit" value="<< foodType.id: 1 >>">Edit</button>
                    </td>
                </form>
            </tr>
            -->
        </table>
    </body>
</html>
