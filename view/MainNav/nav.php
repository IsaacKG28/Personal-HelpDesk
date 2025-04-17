<?php
	if ($_SESSION["rol_id"]==1){

		?>
	<nav class="side-menu">
	    <ul class="side-menu-list">

	        <li class="red">
	            <a href="../home/">
	                <i class="font-icon glyphicon glyphicon-send"></i>
	                <span class="lbl">Inicio</span>
	            </a>
	        </li>
            <li class="red">
	            <a href="../NuevoTicket/">
	                <i class="font-icon glyphicon glyphicon-send"></i>
	                <span class="lbl">Nuevo Ticket</span>
	            </a>
	        </li>
            <li class="red">
	            <a href="../ConsultarTicket/">
	                <i class="font-icon glyphicon glyphicon-send"></i>
	                <span class="lbl">Consultar Ticket</span>
	            </a>
	        </li>
	    </ul>
	</nav><!--.side-menu-->
<?php
	}else{
?>
	<nav class="side-menu">
	    <ul class="side-menu-list">

	        <li class="red">
	            <a href="../home/">
	                <i class="font-icon glyphicon glyphicon-send"></i>
	                <span class="lbl">Inicio Sistemas</span>
	            </a>
	        </li>
            <li class="red">
	            <a href="../NuevoTicket/">
	                <i class="font-icon glyphicon glyphicon-send"></i>
	                <span class="lbl">Nuevo Ticket</span>
	            </a>
	        </li>
            <li class="red">
	            <a href="../ConsultarTicket/">
	                <i class="font-icon glyphicon glyphicon-send"></i>
	                <span class="lbl">Consultar Ticket</span>
	            </a>
	        </li>
			<li class="red">
	            <a href="../MntUsuario/">
	                <i class="font-icon glyphicon glyphicon-send"></i>
	                <span class="lbl">Usuarios del sistema</span>
	            </a>
	        </li>
	    </ul>
	</nav><!--.side-menu-->
<?php	
	}
?>

