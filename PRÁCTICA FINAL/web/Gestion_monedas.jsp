<%-- 
    Document   : Gestion_monedas
    Created on : 30-dic-2017, 19:22:53
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>Insertar moneda</title>

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
							<li><a href="#">Gestion de monedas</a></li>
							<li><a href="Gestion_billetes.jsp">Gestion de billetes</a></li>
							<li><a href="Gestion_subastas.jsp">Gestion de subastas</a></li>
							<li><a href="elements.html">Gestion de Informes</a></li>
						</ul>
					</nav>

                                <!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<h1>Gestion de monedas</h1>
                                                                <span class="image main"><img src="images/banner_monedas.png" alt="" /></span>
							</header>
							<section class="tiles">
								<article class="style5">
									<span class="image">
										<img src="images/insertar_monedas.jpg" alt="" />
									</span>
									<a href="Gestion_monedas_insertar.jsp">
										<h2>Insertar</h2>
										<div class="content">
											<p>Accede a esta sección para insertar un moneda</p>
										</div>
									</a>
								</article>
								<article class="style6">
									<span class="image">
										<img src="images/borrar_monedas.jpg" alt="" />
									</span>
									<a href="Gestion_monedas_borrar.jsp">
										<h2>Borrar</h2>
										<div class="content">
											<p>Accede a esta sección para borrar un moneda</p>
										</div>
									</a>
								</article>
                                                        </section>
                                                        <section class="tiles">
								<article class="style1">
									<span class="image">
										<img src="images/modificar_monedas.jpg" alt="" />
									</span>
									<a href="Gestion_monedas_modificar_1.jsp">
                                                                                    <h2>Modificar</h2>
										<div class="content">
											<p>Accede a esta sección para modificar un moneda</p>
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="images/consultar_monedas.jpg" alt="" />
									</span>
									<a href="Gestion_monedas_consultar.jsp">
										<h2>Consultar</h2>
										<div class="content">
											<p>Accede a esta sección para consultar todos los monedas</p>
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