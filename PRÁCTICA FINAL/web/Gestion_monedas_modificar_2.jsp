<%-- 
    Document   : Gestion_monedas_insertar
    Created on : 29-dic-2017, 14:43:19
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>Insertar Moneda</title>

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
							<h1>Modificación de monedas</h1>
							<span class="image main"><img src="images/banner_monedas.png" alt="" /></span>
							<dip>En este apartado podran insertarse todo tipo de Moneda entre las fechas 1939 y 1975, en las que tiene lugar los fundamentos idelológicos, solciales y políticos del franquismo. En cuya época aumentaron las dificultades de aprovisionamiento de Monedas, que llevo al gobierno a crear una dabrica de billetes y monedas con capital privado</p>
							
                                                        <form action="c_circuito" id="formulario" method="POST">

        <section>
									<h2>Rellena todos los campos para registrar una moneda</h2>
									<form method="post" action="#">
										<div class="row uniform">
											<div class="6u 12u$(xsmall)">
												<input type="text" id="lote" value="valor que haya en la base de datos(lote)" placeholder="Lote" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
												<input type="text" id="valor" value="valor que haya en la base de datos(valor)" placeholder="Valor" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
												<input type="text" id="anno" value="valor que haya en la base de datos(año)" placeholder="Año" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
												<input type="text" id="estrellas" value="valor que haya en la base de datos(estrellas)" placeholder="Estrellas" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
												<input type="text" id="lugar" value="valor que haya en la base de datos(lugar)" placeholder="Lugar de Emisión" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
												<input type="text" id="precio" value="valor que haya en la base de datos(precio)" placeholder="Precio" required/>
											</div>
                                                                                        <div class="12u$">
												<div class="select-wrapper">
													<select name="demo-category" id="demo-category" required>
														<option value="">Elija un estado</option>
														<option value="BC">Buena conservación</option>
														<option value="MBC">Muy Buena conservación</option>
														<option value="EBC">Excelente buena conservacion</option>
														<option value="SC">Sin circular</option>
													</select>
												</div>
											</div>

                                                                                        
											<div class="12u$">
												<ul class="actions">
													<li><input type="submit" value="Registrar Moneda" class="special" /></li>
												</ul>
											</div>
										</div>
									</form>
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