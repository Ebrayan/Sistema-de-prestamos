<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuevoUsuario.aspx.cs" Inherits="Sistema_de_Prestamos.nuevoUsuario" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
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
    <form id="form1" runat="server">
    div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />
                    </a>
                </div>
              
                 <span class="logout-spn" >
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
                        <a href="Nuevo_cobro.aspx"><i class="fa fa-money "></i>Cobro</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-money "></i>Datos de Cobro</a>
                    </li>

                     <li class="active-link">
                        <a href="Expedientes.aspx"><i class="fa fa-user "></i>Expedientes</a>
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
        <div id="page-wrapper" >
            <div id="page-inner">   
                <div class="row">
                    <div class="col-md-12">
                     <h2>Nuevo Empleado </h2>   
                    </div>
                    <hr />
                           <br />
                            <div class="row">
                                            <div class="col-sm-4">
                                        <label for="email">Nombre</label>
                                        <asp:TextBox  runat="server" class="form-control" ID="txtnombre" placeholder="Escriba su Nombre"></asp:TextBox>
                                      </div>
                                <div class="col-sm-4">
                                        <label for="email">Apellido:</label>
                                        <asp:TextBox runat="server" type="text" class="form-control" ID="txtApellido" placeholder="Escriba Apellido"></asp:TextBox>
                                      </div>
                            </div>

                            
                            <div class="form-group">
                                    <label for="email">Numero Telefonico:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtTelefono" placeholder="Escriba  Numero de celular"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="email"> Sueldo:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtSueldo" placeholder="Escriba Sueldo"></asp:TextBox>
                                  </div>
                               <div class="form-group">
                                    <label for="email"> Correo:</label>
                                    <asp:TextBox runat="server" type="email" class="form-control" id="txtUser" placeholder="Escriba Correo"></asp:TextBox>
                                  </div>
                       <div class="form-group">
                                    <label for="email"> Contrasena:</label>
                                    <asp:TextBox runat="server" type="password" class="form-control" id="txtContra" placeholder="Escriba Contrasena"></asp:TextBox>
                                  </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->  
                <h5>Categoria</h5>
                <asp:DropDownList class="form-control" ID="cajaCategoria" runat="server">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Administrador</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="txtError" runat="server" ForeColor="White" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Button runat="server" Text="Registrar" Class="form-control" ID="btnRegistrarEmpleado" BackColor="#99FF66" OnClick="btnRegistrarEmpleado_Click"/>
    </div>
             <!-- /. <P></P>AGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                    &copy;  2014 yourdomain.com | Design by: <a href="http://binarytheme.com" style="color:#fff;"  target="_blank">www.binarytheme.com</a>
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
    
    </form>
    
</body>
</html>
