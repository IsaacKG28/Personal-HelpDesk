<?php
	require_once("../../config/conexion.php");
	if(isset($_SESSION{"usu_id"})){

?>
<!DOCTYPE html>
<html>
<head lang="es">
    <?php require_once("../MainHead/head.php"); ?>
    <title>Buytiti-HelpDesk-Home</title>
</head>
<body class="with-side-menu">

<?php require_once("../MainHeader/header.php");	?>

	<div class="mobile-menu-left-overlay"></div>

<?php require_once("../MainNav/nav.php");	?>


	<div class="page-content">
		<div class="container-fluid">
			Blank page.
		</div>
	</div>

    <?php require_once("../MainJs/js.php"); ?>
	<script>type="text/javascript" src="home.js"</script>

</body>
</html>
<?php
	}else{
		$conectar = new Conectar();
		header("Location:".$conectar->ruta()."index.php");

	}
?>