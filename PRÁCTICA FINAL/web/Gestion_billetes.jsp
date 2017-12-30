<%-- 
    Document   : Gestion_billetes
    Created on : 30-dic-2017, 18:45:37
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
							<li><a href="#">Gestion de billetes</a></li>
							<li><a href="Gestion_subastas.jsp">Gestion de subastas</a></li>
							<li><a href="elements.html">Gestion de Informes</a></li>
						</ul>
					</nav>

                                <!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<h1>Gestion de billetes</h1>
                                                                <span class="image main"><img src="images/banner_billetes.png" alt="" /></span>
							</header>
							<section class="tiles">
								<article class="style5">
									<span class="image">
										<img src="images/insertar_billete.jpg" alt="" />
									</span>
									<a href="Gestion_billetes_insertar.jsp">
										<h2>Insertar</h2>
										<div class="content">
											<p>Accede a esta sección para insertar un billete</p>
										</div>
									</a>
								</article>
								<article class="style6">
									<span class="image">
										<img src="images/borrar_billete.jpg" alt="" />
									</span>
									<a href="Gestion_billetes_borrar.jsp">
										<h2>Borrar</h2>
										<div class="content">
											<p>Accede a esta sección para borrar un billete</p>
										</div>
									</a>
								</article>
                                                        </section>
                                                        <section class="tiles">
								<article class="style1">
									<span class="image">
										<img src="images/modificar_billete.jpg" alt="" />
									</span>
									<a href="Gestion_billetes_modificar_1.jsp">
                                                                                    <h2>Modificar</h2>
										<div class="content">
											<p>Accede a esta sección para modificar un billete</p>
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="images/consultar_billete.jpg" alt="" />
									</span>
									<a href="Gestion_billetes_consultar.jsp">
										<h2>Consultar</h2>
										<div class="content">
											<p>Accede a esta sección para consultar todos los billetes</p>
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