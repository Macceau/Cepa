<?php
    include('lib/Tools.php');
    $link=DbConnect();
    session_start();
    $manage=$_SESSION['usuario'];
    if($manage==""){
      header("Location: index.php?usuario=$manage");
      exit();
    }else{
         $sql="select t.id_tercero,concat(t.nombre,' ',p.apellido) AS nombre ,t.documento,u.nivel_acceso,u.estado,u.nombre as users,
           AES_DECRYPT(u.contrasena,'llave')as pswd from usuario u left join tercero t on t.id_tercero=u.id_tercero
           left join persona p on p.id_tercero=t.id_tercero where u.nombre='".$manage."'";
         $res=SendQuery($sql,$link);
         $row=BringRow($res);
         $unlock=$row['pswd'];
         $id=$row['id_tercero'];
         $nombre=$row['nombre'];
         $doc=$row['documento'];


    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="images/logos.ico" rel="icon">
        <title>CEPA|Menu </title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="menu.php"><img src="images/logos.jpg"/> </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav pull-right">
                            <li><a href="#"><?php echo "Bienvenido ".$nombre;?> </a></li>
                        </ul>
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                            <input type="hidden" id="idparam" value="<?php echo $id; ?>">
                            <input type="hidden" id="nombreparam" value="<?php echo $nombre; ?>">
                            <input type="hidden" id="docparam" value="<?php echo $doc; ?>">
                            <?php include('includes/leftmenu.php');?>
                             <?php
                                //include('includes/modal/testmodal.php');
                                include('includes/modal/employer.php');
                              //  include('includes/modal/cliente.php');
                               // include('includes/modal/usuario.php');
                             ?>
                        <!--/.sidebar-->
                    </div>
                    <!--/.span3-->
                    <div class="span9">
                           <?php include('includes/main.php');?>
                        <!--/.content-->
                    </div>
                    <!--/.span9-->
                </div>
            </div>
            <!--/.container-->
        </div>
        <!--/.wrapper-->
        <div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2018 CEPA - SOFTMATECH </b> Todos Derechos Reservados.
            </div>
        </div>
        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="scripts/common.js" type="text/javascript"></script>
        <script src="scripts/push.min.js"></script>
        <script src="scriptfile/autorefresh.js"></script>
        <script src="scriptfile/employer.js"></script>
      
    </body>
