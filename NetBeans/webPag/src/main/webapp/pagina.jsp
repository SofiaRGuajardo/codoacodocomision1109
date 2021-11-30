<%-- 
    Document   : pagina
    Created on : 28 nov. 2021, 20:33:15
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String saludo="Hola";
            String nombre="Sofia";
        %>
        <h1>Mi página JSP</h1>
        <p> <%=saludo+ " " + nombre%></p>
            
        <p> <%= new java.util.Date()
            %></p>
    </body>
</html>
