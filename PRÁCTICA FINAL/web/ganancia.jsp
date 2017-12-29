<%-- 
    Document   : ganancia
    Created on : 13-dic-2017, 18:45:17
    Author     : javier
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            .boton_index{
                text-decoration: none;
                padding: 3px;
                padding-left: 10px;
                padding-right: 10px;
                font-family: helvetica;
                font-weight: 300;
                font-size: 25px;
                font-style: italic;
                color: #006505;
                background-color: #82b085;
                border-radius: 15px;
                border: 3px double #006505;
            }
            .boton_index:hover{
                opacity: 0.6;
                text-decoration: none
            }
        </style>
        <title>Calculo ganancia</title>
    </head>
    <body>
    <center><H1>Calculo de ganancia de potencial</H1></center><hr>
    <form action="c_ganancia" id="formulario" method="POST">
         <%
            try {
                Class.forName("org.postgresql.Driver");
                Connection conn = DriverManager.getConnection("jdbc:postgresql://ec2-54-228-235-198.eu-west-1.compute.amazonaws.com:5432/d8u3d530u8fkto?sslmode=require",
                        "jjaffgqzirsrnb", "15141bd0b6d5bdfaa482cf1b114ec0158f6b85a630988ef6c816a247307966fd");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("SELECT nombre FROM \"CIRCUITO\";");
        %> 

        <p align="center">  
        <p align="center">Circuito: <select name="a" id="a"> 


                <%
                    while (rs.next()) {
                        String fnombre = rs.getString("nombre");
                %> 
                <option value="<%=fnombre%>"><%=fnombre%></option> 
                <%
                        }
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                %>
            </select>


            <%
                try {
                    Class.forName("org.postgresql.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:postgresql://ec2-54-228-235-198.eu-west-1.compute.amazonaws.com:5432/d8u3d530u8fkto?sslmode=require",
                            "jjaffgqzirsrnb", "15141bd0b6d5bdfaa482cf1b114ec0158f6b85a630988ef6c816a247307966fd");
                    Statement st = conn.createStatement();
                    ResultSet rs = st.executeQuery("SELECT nombre FROM \"COCHE\";");
            %> 

        <p align="center">  
        <p align="center">Coche: <select name="b" id="b"> 
                <%
                    while (rs.next()) {
                        String fnombre = rs.getString("nombre");
                %> 
                <option value="<%=fnombre%>"><%=fnombre%></option> 
                <%
                        }
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                %>
            </select>
            <input type="submit" value="Calcular">
    </form>
</body>
</html>
