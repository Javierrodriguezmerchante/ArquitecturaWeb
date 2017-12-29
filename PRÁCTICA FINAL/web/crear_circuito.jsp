<%-- 
    Document   : crear_circuito
    Created on : 06-dic-2017, 21:15:43
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crea tu circuito</title>
        <script>
            function vueltas(val) {
                if (val < 40 || val > 80) {
                    alert("Los valores han de estar comprendidos entre 40 y 80");
                    location.reload(true);
                }

            }

            function longitud(val) {
                if (val < 3000 || val > 9000) {
                    alert("Los valores han de estar comprendidos entre 3.000 y 9.000");
                    location.reload(true);
                }

            }

            function curva(val) {
                if (val < 6 || val > 20) {
                    alert("Los valores han de estar comprendidos entre 6 y 20");
                    location.reload(true);
                }

            }
        </script>



    </head>
    <body>
    <center><H1>Simulador de ganancia de potencia en circuitos de F1</H1></center><hr>
    <form action="c_circuito" id="formulario" method="POST">

        <table align="center">
            <tr>
                <td>
                    <p>Nombre del circuito: </p>
                </td>
                <td>
                    <input type="text" name="Nombre" placeholder="Introduce aqui el nombre" required maxlength="30"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Ciudad: </p>
                </td>
                <td>
                    <input type="text" name="Ciudad" placeholder="Introduce aqui la ciudad" required maxlength="30"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Pais: </p>
                </td>
                <td>
                    <input type="text" name="Pais" placeholder="Introduce el país" required maxlength="30"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Numero de vueltas: </p>   
                </td>
                <td>
                    <input type="number" name="n_vueltas" placeholder="Nº Vueltas" required onchange="vueltas(this.value)" maxlength="3"><br>
                </td>

            </tr>
            <tr>
                <td>
                    <p>Longitud de vuelta: </p> 
                </td>
                <td>            
                    <input type="number" name="l_vuelta"  placeholder="Longitud de vuelta" required onchange="longitud(this.value)" maxlength="4"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Numero de curvas por vuelta: </p>
                </td>
                <td>
                    <input type="number" name="c_vuelta" placeholder="Curva por vuelta" required onchange="curva(this.value)" maxlength="3"><br>
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
