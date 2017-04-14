<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<title>Home test</title>

<!-- MAIN CONTAINER -->
<div class="col-lg-8 col-lg-offset-2 contenedor-principal">

	<div>
		<c:if test="${!empty listUsers}">
			<table class="table table-striped custab">
				<thead>
					<tr>
						<th>idUser</th>
						<th>nickname</th>
						<th>password</th>
						<th>email</th>
						<th>dateCreated</th>
						<th>loggued</th>
						<th>name</th>
						<th>surname</th>
						<th>birthdate</th>
						<th>photo</th>
						<th>role</th>
						<th>rankeBy</th>
					</tr>
				</thead>
				<c:forEach items="${listUsers}" var="user">
					<tr>
						<td>${user.idUser}</td>
						<td>${user.nickname}</td>
						<td>${user.password}</td>
						<td>${user.email}</td>
						<td>${user.dateCreated}</td>
						<td>${user.loggued}</td>
						<td>${user.name}</td>
						<td>${user.surname}</td>
						<td>${user.birthdate}</td>
						<td>${user.photo}</td>
						<td>${user.role.name}</td>
						<td>${user.user.nickname}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>





	<br />

	<!-- CAROUSEL -->
	<div id="myCarousel"
		class="carousel slide anuncio-principal col-centered"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img
					src="<spring:url value='/resources/img/carousel1.jpg'></spring:url>"
					alt="Chania" />
				<div class="carousel-caption">
					<h3>Nebulosa</h3>
					<p>Las nubes que no llueven.</p>
				</div>
			</div>

			<div class="item">
				<img
					src="<spring:url value='/resources/img/carousel2.jpg'></spring:url>"
					alt="Chania">
				<div class="carousel-caption">
					<h3>Galaxia</h3>
					<p>Que bonito es todo.</p>
				</div>
			</div>

			<div class="item">
				<img
					src="<spring:url value='/resources/img/carousel3.jpg'></spring:url>"
					alt="Flower">
				<div class="carousel-caption">
					<h3>Planetas</h3>
					<p>Orbitan y también oscilan.</p>
				</div>
			</div>

			<div class="item">
				<img
					src="<spring:url value='/resources/img/carousel4.jpg'></spring:url>"
					alt="Flower">
				<div class="carousel-caption">
					<h3>Meteorito</h3>
					<p>¿No es precioso?</p>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<hr>

	<h1>Últimas quedadas</h1>

	<div>

		<c:if test="${!empty listEvents}">
			<c:forEach items="${listEvents}" var="event">
				<div class="tarjeta">
					<div class="tarjeta-fecha">
						<span class="glyphicon glyphicon-calendar"></span> <span>${event.date}</span>
					</div>
					<div class="tarjeta-titulo">${event.title}</div>
					<div class="tarjeta-cuerpo">
						<div class="tarjeta-img">
							<img class="image"
								src="<spring:url value='/resources/img/img.jpg'></spring:url>"
								alt="Imagen" align="left" />
						</div>
						<div class="tarjeta-info">
							<div class="tarjeta-descripcion">${event.description}</div>
							<hr class="tarjeta-hr" />
							<p class="tarjeta-anotacion">
								Autor: <a href="#">${event.user.nickname}</a>
							</p>
							<p class="tarjeta-anotacion">${event.userhaseventses.size() }
								Apuntados</p>
							<hr class="tarjeta-hr" />
							<div>
								<p class="tarjeta-tags">
									<c:forEach items="${event.eventhasinterestses }"
										var="interestses">
										<span class="label label-info">${interestses.interest.name}</span>
									</c:forEach>
								</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>

	</div>

	<hr>

	<h1>Welcome</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
		eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
		minim veniam, quis nostrud exercitation ullamco laboris nisi ut
		aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est
		laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt
		ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
		nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat.</p>
	<hr>
	<h3>Test</h3>
	<p>Lorem ipsum...</p>
</div>
