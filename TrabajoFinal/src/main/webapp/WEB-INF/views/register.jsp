<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<title>Registrar usuario</title>

<!-- MAIN CONTAINER -->
<div class="col-lg-8 col-lg-offset-2 contenedor-principal">

	<h1>Registrar nuevo usuario</h1>

	<form class="form-horizontal" action="./registeruser" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend>Formulario de registro</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="apodo">Apodo</label>
				<div class="col-md-4">
					<input id="apodo" name="apodo" placeholder=""
						class="form-control input-md" required type="text"> <span
						class="help-block">Debe ser único y no puede contener
						carácteres especiales.</span>
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Contraseña</label>
				<div class="col-md-4">
					<input id="password" name="password" placeholder=""
						class="form-control input-md" required type="password">
					<span class="help-block">Debe tener al menos 6 carácteres.</span>
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password2">Repite
					tu contraseña</label>
				<div class="col-md-4">
					<input id="password2" name="password2" placeholder=""
						class="form-control input-md" required type="password">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Email</label>
				<div class="col-md-4">
					<input id="email" name="email" placeholder=""
						class="form-control input-md" required type="email">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Nombre</label>
				<div class="col-md-4">
					<input id="name" name="name" placeholder=""
						class="form-control input-md" type="text"> <span
						class="help-block">Tu nombre. Opcional.</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="apellidos">Apellidos</label>
				<div class="col-md-4">
					<input id="apellidos" name="apellidos" placeholder=""
						class="form-control input-md" type="text"> <span
						class="help-block">Tus apellidos. Opcionales.</span>
				</div>
			</div>
			<!-- Date input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="fechaNac">Fecha
					de nacimiento</label>
				<div class="col-md-4 input-group date">
					<input type="text" class="form-control datepicker" name="fechaNac" readonly><span
						class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
				</div>
			</div>


			<div class="well col-md-10 col-md-offset-1">
				<h2>Terminos y condiciones:</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Praesent rutrum tellus vel enim vehicula, sit amet imperdiet dolor
					eleifend. Phasellus tempor, libero vel porttitor malesuada, mi
					libero pharetra lectus, eget ornare elit arcu sed justo.
					Pellentesque aliquet risus nisi, eget accumsan ex ornare non.
					Quisque vitae dui nec sapien convallis lobortis. Maecenas viverra,
					tortor non lacinia gravida, enim est dictum nisi, sit amet
					vestibulum orci risus congue leo. Phasellus hendrerit varius
					dictum. Proin quis nisi augue. Pellentesque vitae placerat ex.
					Curabitur commodo dolor a justo venenatis accumsan. Etiam ante est,
					efficitur sed auctor non, hendrerit sed nisi. Aliquam elementum,
					mauris a pellentesque varius, neque ex imperdiet nisi, vitae
					imperdiet orci felis ultrices arcu. Donec egestas pulvinar tellus,
					et euismod nulla commodo ac. Vestibulum accumsan condimentum
					euismod. Maecenas in gravida elit, at rutrum velit. Fusce pulvinar
					eu tortor placerat mollis. Nullam eget ultrices nisl, a placerat
					lorem. Nam sit amet massa at nibh tempus pellentesque ac in quam.
					Phasellus posuere elementum lectus, a cursus sem. Curabitur nisi
					lorem, dictum at elementum eu, venenatis in lectus. Sed sit amet
					sem eu tellus convallis venenatis. In vitae nisl tortor. Interdum
					et malesuada fames ac ante ipsum primis in faucibus. Nullam eget
					arcu ante. Sed consectetur turpis metus, eget mattis nisl dapibus
					eget. In hac habitasse platea dictumst. Suspendisse neque ante,
					sagittis quis scelerisque vitae, sodales quis orci. Vivamus ac
					auctor augue. In lacinia orci eget libero molestie, ut efficitur
					dui viverra. Vivamus at est vitae mauris blandit condimentum a eu
					nisi. Pellentesque habitant morbi tristique senectus et netus et
					malesuada fames ac turpis egestas. Praesent sit amet eros tortor.
					Pellentesque malesuada augue eget justo consectetur, ac egestas
					ligula viverra. Sed at sem tincidunt, tristique ex semper, sagittis
					turpis. Ut pretium, dolor ac molestie semper, lorem erat suscipit
					turpis, sit amet sodales enim ipsum dictum nibh. Proin mollis,
					lectus ut congue malesuada, lectus est auctor nulla, et interdum
					arcu nunc in mi. Morbi in erat quis lacus convallis tristique.
					Etiam eget justo ac turpis suscipit aliquam vel sit amet erat.
					Quisque pretium dui tortor, sed luctus risus commodo non. Nulla
					metus erat, placerat ac erat vel, tempor commodo turpis. Donec in
					suscipit diam. Maecenas vel commodo lorem. Nulla facilisi. Fusce et
					elit semper libero tincidunt elementum. Sed consectetur purus
					dolor, ac euismod diam posuere a. Pellentesque commodo egestas
					ultrices. Maecenas elementum est nec lobortis molestie. In congue
					fermentum nisi non congue. Nunc ut mattis massa. Nullam fermentum
					efficitur eros. Donec tincidunt tellus at nisl tincidunt, a gravida
					lectus ornare. Suspendisse lobortis fringilla tellus, non dapibus
					nunc convallis vitae. Nullam sodales tortor augue, ac mollis nibh
					convallis eget. Mauris sit amet tempus libero. Mauris aliquet metus
					vel leo imperdiet, eu elementum turpis vulputate. Aenean vitae arcu
					risus. Curabitur in metus ac nibh bibendum venenatis luctus quis
					nibh. Nulla sagittis mattis augue, sed posuere mauris laoreet
					gravida. Class aptent taciti sociosqu ad litora torquent per
					conubia nostra, per inceptos himenaeos. Duis vulputate vestibulum
					turpis eget pretium. Lorem ipsum dolor sit amet, consectetur
					adipiscing elit. Phasellus pharetra, massa ut suscipit finibus,
					odio purus sagittis lacus, id tincidunt nisi elit auctor nisl.
					Fusce neque felis, egestas vitae accumsan et, ultricies a magna.
					Aenean eu varius nunc, a tempor erat. Nulla tempor pharetra mollis.
					Duis purus mi, consequat quis pellentesque non, faucibus quis quam.
					Nulla facilisi. Etiam in turpis nunc. Nullam sed arcu auctor,
					interdum ex et, aliquam purus. Vivamus at nunc quam. Suspendisse
					nec purus tellus. Suspendisse non tellus ipsum. Vivamus laoreet
					nisi sit amet nunc aliquam, et dictum erat tempor. Duis at placerat
					enim. Donec dolor quam, varius ut nulla sit amet, ultrices
					ullamcorper lorem. Nam leo ligula, accumsan vitae neque ac, maximus
					accumsan lectus. Nunc pharetra non leo eget venenatis. Curabitur
					sollicitudin quis nunc in hendrerit. Nulla non tincidunt sapien.
					Sed feugiat risus id gravida maximus. Etiam semper ac elit nec
					tincidunt. Phasellus viverra efficitur ultricies. Curabitur sapien
					augue, bibendum quis iaculis a, commodo sed libero. Ut rhoncus nisi
					sed felis ultricies venenatis. Aenean et massa at elit ullamcorper
					malesuada consequat sed tortor. Etiam molestie metus et erat luctus
					rhoncus. Aenean a volutpat quam. Maecenas consectetur dolor lectus,
					quis luctus massa fermentum eget. Nullam molestie, velit a
					tincidunt vestibulum, est nisl iaculis nulla, id vulputate arcu
					libero a tortor. Proin porttitor mi sapien, sed porta elit
					consequat at. Curabitur pellentesque ut quam ac fringilla. Proin
					hendrerit dictum luctus. Curabitur vel gravida nisi. Nulla non
					bibendum nunc. Donec imperdiet cursus urna ac tristique. Nulla
					dictum tellus eget mauris ultrices interdum. Donec non ligula
					iaculis, faucibus nibh in, tincidunt mi. Quisque tempor euismod mi
					vel malesuada. Nulla ut luctus tellus. Maecenas maximus urna nec
					lorem congue, sit amet imperdiet purus dignissim. Fusce eget neque
					risus. Vivamus convallis, tellus ut posuere rhoncus, sapien leo
					imperdiet arcu, in consectetur velit risus sed ligula. Aliquam
					hendrerit turpis ut sodales lacinia. Pellentesque luctus enim vel
					ante bibendum, quis aliquam nisl blandit. Vestibulum at pretium ex,
					ut tempus augue. Proin et vehicula nulla. Etiam id ultrices arcu.
					Ut mattis, felis ut fringilla luctus, elit dolor pharetra ex, a
					sollicitudin urna purus eleifend ex. Phasellus a nibh libero. Ut
					vitae leo id tortor porttitor pellentesque. Integer convallis nisi
					arcu, sed accumsan purus aliquet eu. Curabitur tempor at purus
					rhoncus blandit. Fusce pulvinar ligula id sodales consequat. Nulla
					fringilla erat interdum, semper lectus eget, blandit neque. Nam
					justo justo, dignissim non tempus vel, cursus molestie quam. Donec
					vehicula ex id ipsum maximus iaculis. Curabitur laoreet tincidunt
					interdum. Nulla viverra a elit consequat tincidunt. Sed dui tellus,
					placerat et augue quis, congue semper ante. Aenean quis erat vel
					sapien sollicitudin ullamcorper. Maecenas vehicula erat at lorem
					varius eleifend. In eu egestas orci. In ligula tellus, elementum
					nec elit non, tempor vulputate nunc. Cras pulvinar, arcu et
					ultricies ornare, arcu sapien gravida ligula, non bibendum quam
					nibh gravida dui. Donec massa augue, porttitor vel lacinia vel,
					egestas vitae sem. Nunc accumsan sed turpis nec facilisis.
					Vestibulum quis convallis diam. Fusce ac ante sed ante porttitor
					dignissim et at elit. Quisque varius, lacus at pharetra eleifend,
					quam mauris aliquet est, eu porttitor ante ex sed nunc. Suspendisse
					ultricies cursus est eu pellentesque. Sed ac velit placerat,
					faucibus leo eu, sodales velit. Nullam gravida augue quis purus
					blandit, et scelerisque nunc placerat. Fusce pretium ullamcorper
					aliquet. Morbi ac turpis dolor. Suspendisse potenti. Cras hendrerit
					tellus et massa commodo, ac volutpat leo tincidunt. Pellentesque
					habitant morbi tristique senectus et netus et malesuada fames ac
					turpis egestas. Fusce vel sem diam.</p>
			</div>

			<!-- Multiple Checkboxes (inline) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="terminos"></label>
				<div class="col-md-4">
					<label class="checkbox-inline" for="terminos-0"> <input
						name="terminos" id="terminos-0" value="acepto" type="checkbox">
						Acepto los términos y condiciones.
					</label>
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="registro"></label>
				<div class="col-md-4">
					<input type="submit" class="btn btn-primary"
						value="Registrar nuevo usuario" />
				</div>
			</div>
		</fieldset>
	</form>

</div>

