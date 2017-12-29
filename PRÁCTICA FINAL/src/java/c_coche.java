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

/**
 *
 * @author javier
 */
public class c_coche extends HttpServlet {

    private ModeloDatos bd;

    public void init(ServletConfig cfg) throws ServletException {
        bd = new ModeloDatos();
        bd.abrirConexion();
    }

    public void service(HttpServletRequest req,
            HttpServletResponse res) throws ServletException, IOException {
        HttpSession s = req.getSession(true);
        String nombre = (String) req.getParameter("Nombre");
        String ganancia = (String) req.getParameter("Ganancia");

//if (nombre.equals("Otros")) nombre=(String)req.getParameter("txtOtros");
        
            bd.insertarcoche(nombre, ganancia);
        
//s.setAttribute("nombreCliente", nombreP);
// Llamada a la página jsp que nos da las gracias
        res.sendRedirect(res.encodeRedirectURL("creado.jsp"));
    }

    public void destroy() {
        bd.cerrarConexion();
        super.destroy();
    }
}
