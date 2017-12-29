<%-- 
    Document   : calcular
    Created on : 13-dic-2017, 23:24:22
    Author     : javier
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
            String resultado = (String) session.getAttribute("resultado");
        %>
    <center><H1>Calculo de ganancia de potencial</H1></center><hr>
    <br>La ganancia total seria <%=resultado%> dado el circuito seleccionado y el coche elegido
    <br> <a href="index.html"> Ir al comienzo</a>
</body>
</html>
