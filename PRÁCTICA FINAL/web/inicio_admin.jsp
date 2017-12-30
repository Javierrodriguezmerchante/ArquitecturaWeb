<%-- 
    Document   : inicio_admin
    Created on : 30-dic-2017, 17:58:37
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Área administrador</title>
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
								<a href="#" class="logo">
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
							<li><a href="#">Página principal</a></li>
							<li><a href="Gestion_monedas.jsp">Gestion de monedas</a></li>
							<li><a href="Gestion_billetes.jsp">Gestion de billetes</a></li>
							<li><a href="Gestion_subastas.jsp">Gestion de subastas</a></li>
							<li><a href="elements.html">Gestion de Informes</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<h1>Plataforma de gestion para administradores</h1>
								<p>En este apartado, podrá gestionar toda la pagina, ya sea insertando, borrando, modificando o consultando el estado de monedas, billetes o subastas. Ademas de poseer un apartado de generación de informes para estar al corriente de lo que sucede</p>
							</header>
							<section class="tiles">
								<article class="style1">
									<span class="image">
										<img src="images/monedas.jpg" alt="" />
									</span>
									<a href="Gestion_monedas.jsp">
										<h2>Monedas</h2>
										<div class="content">
											<p>Accede a esta sección para insertar, borrar, consultar o modificar una moneda</p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="images/billete.jpg" alt="" />
									</span>
									<a href="Gestion_billetes.jsp">
										<h2>Billetes</h2>
										<div class="content">
											<p>Accede a esta sección para insertar, borrar, consultar o modificar un billete</p>
										</div>
									</a>
								</article>
                                                        </section>
                                                        <section class="tiles">
								<article class="style3">
									<span class="image">
										<img src="images/subasta.jpg" alt="" />
									</span>
									<a href="Gestion_subastas.jsp">
                                                                                    <h2>Subastas</h2>
										<div class="content">
											<p>Accede a esta sección para insertar, borrar, consultar o modificar una subasta</p>
										</div>
									</a>
								</article>
								<article class="style4">
									<span class="image">
										<img src="images/informe.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>Informes</h2>
										<div class="content">
											<p>En este apartado podra ver un resumen de la progresión de su negocio.</p>
										</div>
									</a>
								</article>
								
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