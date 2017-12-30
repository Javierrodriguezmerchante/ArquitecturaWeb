<%-- 
    Document   : Gestion_billetes_modificar_2
    Created on : 29-dic-2017, 14:43:19
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>Insertar billete</title>

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
							<h1>Modificación de Billetes</h1>
							<span class="image main"><img src="images/banner_billetes.png" alt="" /></span>
							
                                                        <form action="c_circuito" id="formulario" method="POST">

        <section>
									<h2>Rellena todos los campos para modificar el billete cuyo lote has introducido</h2>
									<form method="post" action="#">
										<div class="row uniform">
											<div class="6u 12u$(xsmall)">
												<input type="text" id="lote" value="valor que haya en la base de datos(lote)" placeholder="Lote" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
												<input type="text" id="valor" value="valor que haya en la base de datos(valor)" placeholder="Valor" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
												<input type="text" id="lugar" value="valor que haya en la base de datos(lugar)" placeholder="Lugar de Emisión" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
												<input type="text" id="serie" value="valor que haya en la base de datos(serie)" placeholder="Serie" required/>
											</div>
                                                                                        <div class="12u$">
												<div class="select-wrapper">
													<select name="demo-category" id="demo-category" required>
														<option value="BC">Buena conservación</option>
														<option value="MBC">Muy Buena conservación</option>
														<option value="EBC">Excelente buena conservacion</option>
														<option value="SC">Sin circular</option>
													</select>
												</div>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
                                                                                            <label>Introduce un año (1939-1975)</label>
												<input style="border:0" type="number" id="fecha" value="" placeholder="Fecha" min="1939" max="1975" required/>
											</div>
                                                                                        <div class="6u 12u$(xsmall)">
                                                                                            <label>Introduce un precio</label>
												<input style="border:0" type="number" id="precio" value="" placeholder="Precio" min="0.00" max="10000.00" step="0.01" required/>
											</div>
                                                                                        
											<div class="12u$">
												<ul class="actions">
													<li><input type="submit" value="Modificar billete" class="special" /></li>
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
