<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title><decorator:title default="Spring XLM hungry!" /></title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/micss.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/bootstrap-datepicker.min.css'/>">
</head>
<body>
	<div id="custom-bootstrap-menu" class="navbar navbar-default "
		role="navigation">
		<div class="container-fluid">
			<div class="col-lg-8 col-lg-offset-2">
				<div class="navbar-header">
					<a class="navbar-brand" href="/trabajoFinal">Planizator</a>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-menubuilder">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse navbar-menubuilder">
					<ul class="nav navbar-nav navbar-left">
						<li><a href="#">Inicio</a></li>
						<li><a href="#">Actividades</a></li>
						<li><a href="#">Anuncios</a></li>
						<li><a href="#">Grupos</a></li>
						<li><a href="#">Usuarios</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
						<c:choose>
								<c:when test="${!empty userLogged}">
									<a href="perfil"><span class="glyphicon glyphicon-user"></span> ${userLogged.name}</a>
								</c:when>
								<c:otherwise>
									<a href="login"><span class="glyphicon glyphicon-log-in"></span>Iniciar sesión</a>
								</c:otherwise>
							</c:choose></li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<div class="container-fluid text-center">

		<div class="row">
			<!--
      <div class="col-sm-2 sidenav">
        <p><a href="#">Link</a></p>
        <p><a href="#">Link</a></p>
        <p><a href="#">Link</a></p>
      </div>
    -->

			<decorator:body />


			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		</div>
		<!-- row -->
	</div>
	<!-- container -->

	<!-- FOOTER -->
	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<spring:url value='/resources/js/jquery-3.2.0.min.js'/>"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<spring:url value='/resources/js/bootstrap.min.js'/>"></script>
	<!-- Mi script -->
	<script src="<spring:url value='/resources/js/mijs.js'/>"></script>

	<script
		src="<spring:url value='/resources/js/bootstrap-datepicker.js'/>"></script>
	<script
		src="<spring:url value='/resources/locales/bootstrap-datepicker.es.min.js'/>"></script>
	<script src="<spring:url value='/resources/js/datepicker.js'/>"></script>
</body>

</html>
