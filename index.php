<?php
    include('lib/Tools.php');
    $link=DbConnect();
    session_start();
    ob_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="images/logos.ico" rel="icon">
	<title>CEPA|Session</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="index.php">
			  		<img src="images/logos.jpg"/>
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
				
					<ul class="nav pull-right">
						<li><a href="#">
							Contraseña Olvidada?
						</a></li>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->



	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="module module-login span4 offset4">
					<form class="form-vertical" method="POST">
						<div class="module-head">
							<h3>Conectarse</h3>
						</div>
						<div class="module-body">
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="inputEmail" id="inputEmail" placeholder="Usuario">
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="password" name="inputPassword" id="inputPassword" placeholder="Contraseña">
								</div>
							</div>
						</div>
						<div class="module-foot">
							<div class="control-group">
								<div class="controls clearfix">
									<button type="submit" name="connect" class="btn btn-primary pull-right">Conectar</button>
									<?php
									    if(isset($_POST['connect'])){
									     if(empty($_POST['inputEmail']) || empty($_POST['inputPassword'])){
									     echo "Nombre o Contraseña Vacia.";
									     }else{
									         $sql="select t.id_tercero,concat(t.nombre,' ',p.apellido) AS nombre ,t.documento,u.nivel_acceso,u.estado,u.nombre as users,
                                                   AES_DECRYPT(u.contrasena,'llave')as pswd from usuario u left join tercero t on t.id_tercero=u.id_tercero
                                                   left join persona p on p.id_tercero=t.id_tercero where u.nombre='".$_POST['inputEmail']."'";
                                             $res=SendQuery($sql,$link);
                                             $row=BringRow($res);
                                             if($_POST['inputPassword']==$row["pswd"]){
                                                session_start();
                                                $_SESSION['usuario'] = $_POST['inputEmail'];
                                                header("Location: menu.php");
                                             }else{
                                                 echo "Nombre o Contraseña Incorrecta.";
                                             }
									     }
									    }
									?>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2018 CEPA - SOFTMATECH </b> Todos Derechos Reservados.
		</div>
	</div>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>