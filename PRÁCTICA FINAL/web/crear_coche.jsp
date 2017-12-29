<%-- 
    Document   : crear_coche
    Created on : 08-dic-2017, 17:58:45
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Crea tu circuito</title>
        <script>
            function potencia(val) {
                if (val < 4 || val > 10) {
                    alert("Los valores han de estar comprendidos entre 4 y 10");
                    location.reload(true);
                }

            }


        </script>

    </head>
    <body>
    <center><H1>Simulador de ganancia de potencia en circuitos de F1</H1></center><hr>
    <form action="c_coche" method="POST" align="center">
        <table align="center">
            <tr>
                <td>
                    <p>Nombre del coche: </p>
                </td>
                <td>
                    <input type="text" name="Nombre" placeholder="Introduce aqui el nombre" required maxlength="30"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Ganancia de potencia por cada curva : </p>
                </td>
                <td>
                    <input type="number" name="Ganancia" placeholder="Introduce aqui la ciudad" required onchange="potencia(this.value)" maxlength="3"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Crear">
                </td>

            </tr>

        </table>
    </form>

</body>
</html>
