<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin | Add New Food</title>
    </head>
    <body>
        <a href="/link/admin">Home</a>

        <form action="" method="post">
            <input type="text" name="name" placeholder="Food Name" />
            <input type="number" name="price" placeholder="Food Price" />
            <select name="typeId">
                ${foodTypeList}
                <!-- output a list of food types
                <option value="<< foodTyped.id >>"><< foodType.name >></option> -->
            </select>

            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
