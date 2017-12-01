package modelo;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

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

    public ArrayList<HashMap> selectCircuitos() {
        ArrayList<HashMap> response = new ArrayList<>();
        try {
            set = con.createStatement();
            rs = set.executeQuery("SELECT * FROM \"CIRCUITO\";");
            while (rs.next())
            {
                HashMap<String, String> row = new HashMap<>();
                ResultSetMetaData rsmd = rs.getMetaData();
                for (int i = 1; i < rsmd.getColumnCount() + 1; i++) {
                    String column = rsmd.getColumnName(i);
                    row.put(column, rs.getString(column));
                }
                response.add(row);
            }
            rs.close();
            set.close();
        } catch (SQLException e) {
            System.out.println("No lee de la tabla");
        }
        return response;
    }

    public ArrayList<HashMap> selectCoches() {
        ArrayList<HashMap> response = new ArrayList<>();
        try {
            set = con.createStatement();
            rs = set.executeQuery("SELECT * FROM \"COCHE\";");
            while (rs.next())
            {
                HashMap<String, String> row = new HashMap<>();
                ResultSetMetaData rsmd = rs.getMetaData();
                for (int i = 1; i < rsmd.getColumnCount() + 1; i++) {
                    String column = rsmd.getColumnName(i);
                    row.put(column, rs.getString(column));
                }
                response.add(row);
            }
            rs.close();
            set.close();
        } catch (SQLException e) {
            System.out.println("No lee de la tabla");
        }
        return response;
    }

    public void insertCircuito(String nombre, String ciudad, String pais, Integer num_vueltas, Integer longitud_vuelta, Integer num_curvas_vuelta) {
        try {
            set = con.createStatement();
            set.executeUpdate("INSERT INTO \"CIRCUITO\"(nombre, ciudad, pais, num_vueltas, longitud_vuelta, num_curvas_vuelta)" 
                    + "VALUES ('" + nombre + "', '" + ciudad + "', " + pais + "', " + num_vueltas + ", " + longitud_vuelta + ", " + num_curvas_vuelta + ");");
            rs.close();
            set.close();
        } catch (SQLException e) {
            System.out.println("No inserta en la tabla");
        }
    }
    
    public void insertCoche(String nombre, Integer ganancia_vuelta) {
        try {
            set = con.createStatement();
            set.executeUpdate("INSERT INTO \"COCHE\"(nombre, ganancia_vuelta)" 
                    + "VALUES ('" + nombre + "', " + ganancia_vuelta + ");");
            rs.close();
            set.close();
        } catch (SQLException e) {
            System.out.println("No inserta en la tabla");
        }
    }

    public void cerrarConexion() {
        try {
            con.close();
            System.out.println("Se ha cerrado");
        } catch (SQLException e) {
            System.out.println("No se ha cerrado");
        }
    }

}
