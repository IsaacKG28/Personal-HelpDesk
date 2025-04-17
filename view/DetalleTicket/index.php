<?php
	require_once("../../config/conexion.php");
	if(isset($_SESSION{"usu_id"})){
?>
<!DOCTYPE html>
<html>
<head lang="es">
    <?php require_once("../MainHead/head.php"); ?>
    <title>Buytiti-HelpDesk-Detalle Ticket</title>
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
									<h3 id="lblnomidticket">Detalle de Ticket</h3> 
									
									<span class="" id="lblestado"></span>
									<span class="label label-pill label-primary" id="lblnomusuario"></span>
									<span class="label label-pill label-default" id="lblfechcrea"></span>
									<ol class="breadcrumb breadcrumb-simple">
										<li><a href="#">Home</a></li>
										<li class="active">Detalle de Ticket</li>
									</ol>
								</div>
							</div>
						</div>
				</header>
				<div class="box-typical box-typical-padding">
					<div class="row">

						<div class="col-lg-6">
							<fieldset class="form-group">
							<label class="form-label semibold" for="cat_nom">Categoria</label>
							<input type="text" class="form-control" id="cat_nom" name="cat_nom" readonly>
							</fieldset>
						</div>

						<div class="col-lg-6">
							<fieldset class="form-group">
							<label class="form-label semibold" for="tick_titulo">Titulo</label>
							<input type="text" class="form-control" id="tick_titulo" name="tick_titulo" readonly>
							</fieldset>
						</div>
						<div class="col-lg-12">
							<fieldset class="form-group">
								<label class="form-label semibold" for="tickd_descripusu">Descripción</label>
								<div class="summernote-theme-1">
									<textarea id="tickd_descripusu" name="tickd_descripusu" class="summernote" name="name"></textarea>
								</div>

							</fieldset>
						</div>
					</div>
				</div>
			<section class="activity-line" id="lbldetalle">
					
			</section>
			
			<div class="box-typical box-typical-padding" id="pnldetalle">
				<p class="m-t-lg with-border" style="margin-top: 0 !important;">Ingresa respuesta</p>
				<div class="row">
					<div class="col-lg-12">
						<fieldset class="form-group">
							<label class="form-label semibold" for="tickd_descrip"></label>
							<div class="summernote-theme-1">
								<textarea class="summernote" id="tickd_descrip" name="tickd_descrip"></textarea>
							</div>
						</fieldset>
					</div>
					<div class="col-lg-12">
						<button type="button" id="btnenviar" class="btn btn-rounded btn-inline btn-primary">Enviar</button>
						<button type="button" id="btncerrarticket" class="btn btn-rounded btn-inline btn-danger">Cerrar Ticket</button>

					</div>
				</div><!--.row-->
			</div>	
		</div>
	</div>

    <?php require_once("../MainJs/js.php"); ?>
	<script type="text/javascript" src="detalleticket.js"></script>
</body>
</html>
<?php
	}else{
		$conectar = new Conectar();
		header("Location:".$conectar->ruta()."index.php");

	}

?>