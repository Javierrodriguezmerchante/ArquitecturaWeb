<%-- 
    Document   : TablaVotos
    Created on : 05-dic-2017, 23:29:08
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>Votaci&oacute;n mejor jugador liga ACB</title></head>
    <body>
        <font size=10>
        Votaci&oacute;n al mejor jugador de la liga ACB 2013/2014
        <hr>
        <%
            String nombreP = (String) session.getAttribute("nombreCliente");
        %>
        <br>Muchas gracias <%=nombreP%> por su voto
        </font>
        <br>
        <br> <a href="index.html"> Ir al comienzo</a>
    </body>
</html>
