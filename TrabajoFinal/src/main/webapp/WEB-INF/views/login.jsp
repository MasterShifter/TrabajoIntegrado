<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<title>Iniciar sesión</title>

<!-- MAIN CONTAINER -->
<div class="col-lg-5 col-lg-offset-5 contenedor-principal">

	<form class="form-horizontal" action="./checklogin" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend>Iniciar sesión</legend>

			<%
				String error = request.getParameter("error");
				if (error != null) {
			%>
			<div class="row">
				<div class="col-md-6 col-md-offset-2">
					<div class="alert alert-warning alert-dismissable">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">×</button>
						<strong>Aviso!</strong>
						<%=error%>
					</div>
				</div>
			</div>
			<%
				}
			%>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="login">Apodo o
					correo electrónico</label>
				<div class="col-md-4">
					<input id="login" name="login" placeholder=""
						class="form-control input-md" required type="text">
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Contraseña</label>
				<div class="col-md-4">
					<input id="password" name="password" placeholder=""
						class="form-control input-md" required type="password">
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<div class="col-md-4">
					<input type="submit" class="btn btn-primary" value="Iniciar sesión" />
				</div>
			</div>
		</fieldset>
	</form>

</div>

