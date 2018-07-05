<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nuevo_usuario.aspx.cs" Inherits="Sistema_de_Prestamos.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <title></title>
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
                        <h2>Nuevo Cliente</h2> 
                        <!--Formulario-->
                        <form runat="server">
                            <br />
                            <br />
                            <h4>Datos personales</h4>
                            <br />
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
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtTelefono" placeholder="Numero de celular"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="email"> Celular:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtCelular" placeholder="Numero de celular"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="email">Cedula:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtCedula" placeholder=" Escriba No. de cedula"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="email">Direccion de Residencia:</label>
                                    <asp:TextBox runat="server"  type="text" class="form-control" id="txtResidencia" placeholder="Direccion de vivienda"></asp:TextBox>

                                  </div>
                            <div class="form-group">
                                    <label for="email">Email address:</label>
                                    <asp:TextBox runat="server"  type="email" class="form-control" id="txtemail" placeholder="E-Mail"></asp:TextBox>
                                  
                            </div>
                            
                            
                          <br />
                            
                            <asp:RadioButtonList ID="radioList" runat="server" CssClass="form-control">
                                <asp:ListItem>Hombre</asp:ListItem>
                                <asp:ListItem>Mujer</asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            <h4>Datos Laborales</h4>
                            <br />
                            <br />

                            <div class="form-group">
                                    <label for="email"> Empresa:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="txtEmpresa"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="email">Telefono de la Empresa:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="txtTEmpresa"></asp:TextBox>
                                  </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="email">Puesto :</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtPuesto"></asp:TextBox>
                                  </div>
                            <div class="col-sm-6">
                                    <label for="email">Ingreso:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtIngreso"></asp:TextBox>
                                  </div>
                            </div>
                            
                            <div class="form-group">
                                    <label for="email">Nombre Supervisor:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtSupervisor"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="email">Otros Ingreso:</label>
                                    <asp:TextBox runat="server" type="text" class="form-control" id="txtOtroIngreso"></asp:TextBox>
                                  </div>

                            <br />
                            <br />
                                  <asp:Button runat="server" ID="btnAceptar" Text="Entrar Cliente" class="btn btn-success" OnClick="btnAceptar_Click"/>
                        </form>

                       
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
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
    
</body>
</html>
