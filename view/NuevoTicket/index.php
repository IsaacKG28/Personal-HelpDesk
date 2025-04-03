<?php
	require_once("../../config/conexion.php");
	if (isset($_SESSION["usu_id"])) {
?>
<!DOCTYPE html>
<html>
<head lang="es">
    <?php require_once("../MainHead/head.php"); ?>
    <title>Buytiti-HelpDesk-Nuevo Ticket</title>
</head>
<body class="with-side-menu">

<?php require_once("../MainHeader/header.php");	?>

	<div class="mobile-menu-left-overlay"></div>

<?php require_once("../MainNav/nav.php");	?>


	<div class="page-content">
		<div class="container-fluid">
			<header class="section-header">
					<div class="tbl">
						<div class="tbl-row">
							<div class="tbl-cell">
								<h3>Nuevo Ticket</h3>
								<ol class="breadcrumb breadcrumb-simple">
									<li><a href="#">Home</a></li>
									<li class="active">Nuevo Ticket</li>
								</ol>
							</div>
						</div>
					</div>
			</header>
			<div class="box-typical box-typical-padding">
				<p>
					Descripción pendiente.
				</p>
				<h5 class="m-t-lg with-border">Por favor recuerda que la prioridad del ticket no siempre será la misma que nosotros le daremos.</h5>

				<div class="row">
					<form method="post" id="ticket_form" enctype="multipart/form-data">
					<input type="hidden" id="usu_id" name="usu_id" value="<?php echo $_SESSION["usu_id"] ?>">
						<div class="col-lg-3">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">Categoría</label>
								<select id="cat_id" name="cat_id" class="form-control">
								</select>
							</fieldset>
						</div>
						<div class="col-lg-3">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">Prioridad</label>
								<select id="tick_prioridad" name="tick_prioridad" class="form-control">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</fieldset>
						</div>
						<div class="col-lg-6">
							<fieldset class="form-group">
								<label class="form-label " for="tick_titulo">Título</label>
								<input type="text" class="form-control" id="tick_titulo" name="tick_titulo" placeholder="Ingrese el Título">
							</fieldset>
						</div>
						<div class="col-lg-12">
							<fieldset class="form-group">
								<label class="form-label " for="tick_descrip">Descripción del problema</label>
								<div class="summernote-theme-1">
									<textarea class="summernote" id="tick_descrip" name="tick_descrip" name="name"></textarea>
								</div>
							</fieldset>
						</div>
						<div class="col-lg-12">
							<button type="submit" name="action" value="add" class="btn btn-rounded btn-inline btn-primary">Enviar Ticket</button>
						</div>
					</form>
				</div><!--.row-->
			</div>
		</div>
	</div>

    <?php require_once("../MainJs/js.php"); ?>
	<script type="text/javascript" src="nuevoticket.js"></script>

</body>

</html>
<?php
	}else{
		$conectar = new Conectar();
		header("Location:".$conectar->ruta()."index.php");

	}

?>