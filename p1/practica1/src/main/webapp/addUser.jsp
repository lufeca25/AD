<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Añade un nuevo usuario!</h1>
        <form action="SvAddUser" method="POST">
            <p><label> username </label> <input type="text" name="username"></p>
            <p><label> password </label> <input type="text" name="password"></p>
            <p><button type="submit"> añadir </button></p>
        </form>
    </body>
</html>
