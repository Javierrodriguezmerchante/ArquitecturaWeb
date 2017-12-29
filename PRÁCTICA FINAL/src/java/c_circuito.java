/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class c_circuito extends HttpServlet {

    private ModeloDatos bd;

    public void init(ServletConfig cfg) throws ServletException {
        bd = new ModeloDatos();
        bd.abrirConexion();
    }

    public void service(HttpServletRequest req,
            HttpServletResponse res) throws ServletException, IOException {
        HttpSession s = req.getSession(true);
        String nombre = (String) req.getParameter("Nombre");
        String ciudad = (String) req.getParameter("Ciudad");
        String pais = (String) req.getParameter("Pais");
        String n_vueltas = (String) req.getParameter("n_vueltas");
        String l_vuelta = (String) req.getParameter("l_vuelta");
        String c_vuelta = (String) req.getParameter("c_vuelta");
//if (nombre.equals("Otros")) nombre=(String)req.getParameter("txtOtros");
        System.out.println(n_vueltas);
        System.out.println(l_vuelta);
        System.out.println(c_vuelta);
        if (bd.existecircuito(nombre,pais,ciudad)) {
            res.sendRedirect(res.encodeRedirectURL("existe.jsp"));
        } else {
            bd.insertarcircuito(nombre, ciudad, pais, n_vueltas, l_vuelta, c_vuelta);
            res.sendRedirect(res.encodeRedirectURL("creado.jsp"));
        }
// Llamada a la página jsp que nos da las gracias
        
    }

    public void destroy() {
        bd.cerrarConexion();
        super.destroy();
    }
}
