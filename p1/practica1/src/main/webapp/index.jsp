<%-- 
    Document   : index
    Created on : 9 sept 2026, 18:05:05
    Author     : alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% out.println("<h2>Primera Práctica - Aplicaciones web – Aplicaciones Distribuidas</h2>"); %>
        <% out.println("<h3>Esta es una prueba del tercer título</h3>"); %>
        <% out.println("<ul> <li> Esto es una lista desordenada</li> "); %>
        <% out.println("<li>segundo elemento</li>"); %>
        <% out.println("<li>tercer elemento</li></ul>"); %>
        <h2>Nuevos usuarios:</h2>
        <form action="addUser.jsp">
            <button type="submit"> new user </button>
        </form>
        <h2>Lista de usuarios:</h2>
        <form action="SvAddUser" method="GET">
            <button type="submit"> show </button>
        </form>
        <h2>Mis imagenes</h2>
        <p>Añade tu usuario para ver tus imagenes:</p>
        <form action="SvImages" method="GET">
            <p><label> username </label> <input type="text" name="username"></p>
            <button type="submit"> search </button>
        </form>
    </body>
</html>
