<%-- 
    Document   : Gestion_monedas_consultar
    Created on : 30-dic-2017, 17:27:12
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>Consultar Monedas</title>

		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    </head>
   <body>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a href="inicio_admin.jsp" class="logo">
									<span class="symbol"><img src="images/logo.svg" alt="" /></span><span class="title">Bar-Subastas</span>
								</a>

							<!-- Nav -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						<ul>
							<li><a href="inicio_admin.jsp">Página principal</a></li>
							<li><a href="Gestion_monedas.jsp">Gestion de monedas</a></li>
							<li><a href="Gestion_billetes.jsp">Gestion de billetes</a></li>
							<li><a href="Gestion_subastas.jsp">Gestion de subastas</a></li>
							<li><a href="elements.html">Gestion de Informes</a></li>
						</ul>
					</nav>

                                <!-- Main -->
					<div id="main">
						<div class="inner">
							<h1>Aqui podras ver todas las monedas existentes</h1>
							<span class="image main"><img src="images/banner_monedas.png" alt="" /></span>
													
                                                        <form action="c_circuito" id="formulario" method="POST">

                                                                    <section>
									<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>Lote</th>
													<th>Valor</th>
													<th>Año</th>
                                                                                                        <th>Estrellas</th>
                                                                                                        <th>Lugar de emisión</th>                                               
                                                                                                        <th>Conservación</th>
                                                                                                        <th>Precio</th>
                                                                                                        <th>Imagen</th>
												</tr>
											</thead>
											<tbody>
                                                                                            
                                                                                            <%-- 
                                                                                                
                                                                                                for(int i=0; i<lista.size();i++)
                                                                                                {
                                                                                                    out.println("<tr>");
                                                                                                    out.println("<td>"+lista.get(i).getLote()+"</td>");
                                                                                                    out.println("<td>"+lista.get(i).getValor()+"</td>");
                                                                                                    out.println("<td>"+lista.get(i).getAnno()+"</td>");
                                                                                                    out.println("<td>"+lista.get(i).getEstrellas()+"</td>");
                                                                                                    out.println("<td>"+lista.get(i).getLugar()+"</td>");
                                                                                                    out.println("<td>"+lista.get(i).getConservacion()+"</td>");
                                                                                                    out.println("<td>"+lista.get(i).getPrecio()+"</td>");
                                                                                                    out.println("<td>"+lista.get(i).getImagen()+"</td>");
                                                                                                    out.println("</tr>");
                                                                                                }

                                                                                                
                                                                                           --%>
											</tbody>
										</table>
                                                                                <div class="12u$">
												<ul class="actions">
                                                                                                        <li><a href="Gestion_monedas.jsp" class="special">Volver</a></li>
												</ul>
										</div>
									</div>
								</section>
                                                </div>
					</div>
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>