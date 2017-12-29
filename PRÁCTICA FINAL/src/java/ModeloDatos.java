
import static java.lang.Integer.parseInt;
import java.util.*;
import java.sql.*;

public class ModeloDatos {

    private Connection con;
    private Statement set;
    private ResultSet rs;

        public void abrirConexion() {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://ec2-54-228-235-198.eu-west-1.compute.amazonaws.com:5432/d8u3d530u8fkto?sslmode=require",
                    "jjaffgqzirsrnb", "15141bd0b6d5bdfaa482cf1b114ec0158f6b85a630988ef6c816a247307966fd");
            System.out.println("Se ha conectado");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("No se ha conectado");
        }
    }

    public boolean existecircuito(String nombre,String pais,String ciudad) {
        boolean existe = false;
        String cad;
        String c;
        String p;
        try {
            set = con.createStatement();
            rs = set.executeQuery("SELECT * FROM \"CIRCUITO\";");
            while (rs.next()) {
                cad = rs.getString("Nombre");
                c = rs.getString("ciudad");
                p = rs.getString("pais");
                cad = cad.trim();
                if ((cad.compareTo(nombre.trim()) == 0) && (c.compareTo(ciudad.trim()) == 0) && (p.compareTo(pais.trim()) == 0)) {
                    existe = true;
                }
            }
            rs.close();
            set.close();
        } catch (Exception e) {
            System.out.println("No lee de la tabla");
        }
        return (existe);
    }

   

    public void insertarcircuito(String nombre, String ciudad, String pais, String num_vueltas, String longitud_vuelta, String num_curvas_vuelta) {
        try {
            set = con.createStatement();
            set.executeUpdate("INSERT INTO \"CIRCUITO\"(nombre, ciudad, pais, num_vueltas, longitud_vuelta, num_curvas_vuelta)" 
                    + " VALUES ('" + nombre + "', '" + ciudad + "', '" + pais + "', " + num_vueltas + ", " + longitud_vuelta + ", " + num_curvas_vuelta + ");");
            rs.close();
            set.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertarcoche(String nombre, String ganancia_vuelta) {
        try {
            set = con.createStatement();
            set.executeUpdate("INSERT INTO \"COCHE\"(nombre, ganancia_vuelta)" 
                    + " VALUES ('" + nombre + "', " + ganancia_vuelta + ");");
            rs.close();
            set.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void buscarcoches() {
        try {
            set = con.createStatement();
             set.executeUpdate("SELECT nombre FROM \"CIRCUITO\";");
            rs.close();
            set.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int calculo(String circuito, String coche) {
        String n = "";
        String l = "";
        String c = "";
        String g = "";
        String cad = "";
        Integer resultado = 0;

        try {
            set = con.createStatement();
            rs = set.executeQuery("SELECT * FROM \"CIRCUITO\";");
            while (rs.next()) {
                cad = rs.getString("nombre");
                cad = cad.trim();
                if (cad.compareTo(circuito.trim()) == 0) {
                    n = rs.getString("num_vueltas");
                    l = rs.getString("longitud_vuelta");
                    c = rs.getString("num_curvas_vuelta");

                }

            }
            rs.close();
            set.close();
        } catch (Exception e) {
            System.out.println(e);
        }

        try {
            set = con.createStatement();
            rs = set.executeQuery("SELECT * FROM \"COCHE\";");
            while (rs.next()) {
                cad = rs.getString("nombre");
                cad = cad.trim();
                if (cad.compareTo(coche.trim()) == 0) {
                    g = rs.getString("ganancia_vuelta");
                    System.out.println(g);

                }

            }

            resultado = parseInt(n) * parseInt(c) * parseInt(g);

            rs.close();
            set.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return resultado;
    }

    public void cerrarConexion() {
        try {
            con.close();
        } catch (Exception e) {
        }
    }

}
