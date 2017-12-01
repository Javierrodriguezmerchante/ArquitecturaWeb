package modelo;

import java.util.ArrayList;
import java.util.HashMap;

public class ModeloDatosTest {

    public static void main(String[] args) {
        ModeloDatos modeloDatos = new ModeloDatos();
        modeloDatos.abrirConexion();
        
        ArrayList<HashMap> circuitos = modeloDatos.selectCircuitos();
        ArrayList<HashMap> coches = modeloDatos.selectCoches();
        
        modeloDatos.insertCoche("demo", 0);
        modeloDatos.insertCircuito("demo", "demo", "demo", 0, 0, 0);
        
        modeloDatos.cerrarConexion();
    }
    
}
