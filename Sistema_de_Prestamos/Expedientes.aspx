<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expedientes.aspx.cs" Inherits="Sistema_de_Prestamos.Expedientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inicio - Sistema de Prestamos</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
     <div id="wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo1.png" />

                    </a>

                </div>

                <span class="logout-spn">
                    <a href="salir.aspx" style="color:#fff;">Salir</a>

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">



                    <li>
                        <a href="inicio.aspx"><i class="fa fa-desktop "></i>Menu Principal </a>

                    </li>
                    <li>
                        <a href="Nuevo_prestamo.aspx"><i class="fa fa-edit "></i>Nuevo prestamos  </a>
                    </li>

                    <li>
                        <a href="Prestamos.aspx"><i class="fa fa-table "></i>Datos de Prestamos </a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-money "></i>Cobro</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-money "></i>Datos de Cobro</a>
                    </li>

                     <li class="active-link">
                        <a href="#"><i class="fa fa-users 2x "></i>Expedientes</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table "></i>Ajustes de Tasa %</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-gear "></i>Ajustes</a>
                    </li>

                </ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-10   ">
                        <h2>Menu Principal</h2>
                    </div>
                    <div class="col-lg-2">
                       <img src="assets/img/logo1.png" alt="..." class="img-circle">
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                            <asp:Label ID="txtSaludo" runat="server"></asp:Label>
                        </div>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row text-center pad-top">
                    


                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-8">
                        <div class="div-square">
                            <a href="Nuevo_usuario.aspx">
                                <i class="fa fa-users fa-5x"></i>
                                <h4>Nuevo Cliente</h4>
                            </a>
                        </div>


                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-8"">
                        <div class="div-square">
                            <a href="Ver_Clientes.aspx">
                                <i class="fa fa-users fa-5x"></i>
                                <h4>Ver Clientes</h4>
                            </a>
                        </div>


                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-8"">
                        <div class="div-square">
                            <a href="nuevoUsuario.aspx">
                                <i class="fa fa-users fa-5x"></i>
                                <h4>Nuevo Usuarios</h4>
                            </a>
                        </div>
                            
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-8"">
                        <div class="div-square">
                            <a href="ver_empleado.aspx">
                                <i class="fa fa-users fa-5x"></i>
                                <h4>Ver Usuarios </h4>
                            </a>
                        </div>

                    </div>
                  
                </div>
                <!-- /. ROW  -->
            
                <div class="row">
                    <div class="col-lg-12 ">
                        <br />


                    </div>
                </div>
                <!-- /. ROW  -->
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <div class="footer">


        <div class="row">
            <div class="col-lg-12">
                &copy;  2018 bryanSystem.com | Design by: <a href="#" style="color:#fff;" target="_blank">SomeBody</a>
            </div>
        </div>
    </div>


    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>
</html>
