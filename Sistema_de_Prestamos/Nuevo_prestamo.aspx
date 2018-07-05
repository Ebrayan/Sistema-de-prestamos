    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nuevo_prestamo.aspx.cs" Inherits="Sistema_de_Prestamos.Prestamo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <title>Solicitud de prestamos</title>
    <style type="text/css">
        .tab-content {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         
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
                     <li >
                        <a href="inicio.aspx"><i class="fa fa-desktop "></i>Menu Principal </a>

                    </li>
                    <li class="active-link">
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

                     <li>
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
                     <h2>Nuevo Prestamos </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                            <div class="form-group">
                            <label for="email">Cliente</label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaDePrestamosConnectionString %>" SelectCommand="SELECT * FROM [Clietes]"></asp:SqlDataSource>
                                  <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="idCliente" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                    <label for="email">Cantiad Solicitada</label>
                                    <asp:TextBox  runat="server" type="text" class="form-control" id="txtCantidad"></asp:TextBox> 
                            </div>
                            <div class="form-group">
                                    <label for="email">Cantiad de cuotas</label>
                                    <asp:TextBox  runat="server" type="text" class="form-control" id="txtCuotas"></asp:TextBox> 
                            </div>
                            <div class="input-group">
                               <span class="input-group-addon">%</span>
                              <asp:TextBox type="text" class="form-control"  ID="txtInteres" placeholder="Tasa de Interes" runat="server" />
                            </div>
      

                            <div class="form-group">
                                    <label for="email">Forma de Pago</label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                        <asp:ListItem>Diario</asp:ListItem>
                                        <asp:ListItem>Semanal</asp:ListItem>
                                        <asp:ListItem>Quicenal</asp:ListItem>
                                        <asp:ListItem>Mensual</asp:ListItem>
                                    </asp:DropDownList>
                                    
                            </div>
                            
                  <hr />
                    &nbsp;<br />
                <hr />
                Fechas de pago
                <asp:GridView ID="grid" runat="server" CssClass="table table-condensed"></asp:GridView>
                <br />

                    <asp:Button runat="server" Text="Verificar" ID="btnVerificar" CssClass="btn-success" OnClick="btnVerificar_Click"/>
 
                        <h3>Sobre su garantia</h3>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Garante</a>
                            </li>
                            <li class=""><a h   ref="#profiles" data-toggle="tab">Propiedad</a>
                            </li>
                            <li class=""><a href="#messages" data-toggle="tab">Objetos</a>
                            </li>

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="home">
                                <h4>Persona</h4>
                                <div>
                            <div class="form-group">
                                    <label for="email">Nombre de Garante:</label>
                                    <asp:TextBox  runat="server" type="text" class="form-control" id="txtGarante"></asp:TextBox>
                                  </div>
                                    <div class="form-group">
                                    <label for="email">Residencia:</label>
                                    <asp:TextBox  runat="server" type="text" class="form-control" id="txtResidenciaG"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="text">Cedula:</label>
                                    <asp:TextBox  runat="server" type="text" class="form-control" id="txtCedulaG"></asp:TextBox> 
                                  </div>
                            <div class="form-group">
                                    <label for="text">Empresa :</label>
                                    <asp:TextBox  runat="server"  type="text" class="form-control" id="txtEmpresaG"></asp:TextBox>
                                  </div>
                                   <div class="form-group">
                                       <label for="text">Sueldo:</label>
                                    <asp:TextBox  runat="server" type="text" class="form-control" id="txtSueldoG"></asp:TextBox>
                                  </div>

                                  <div class="form-group">
                                    <label for="text">Contacto:</label>
                                    <asp:TextBox  runat="server" type="text" class="form-control" id="txtContactoG"></asp:TextBox>
                                  </div>
                                  <div class="form-group">
                                    <label for="pwd">Correo:</label>
                                    <asp:TextBox  runat="server" type="email" class="form-control" id="txtCorreoG"></asp:TextBox>
                                      <br />
                                      <asp:Button  runat="server" Text="Registrar Garante"  ID="btnPrestamo" CssClass="btn btn-success" OnClick="btnPrestamo_Click"/>
                                      <br />
                                      <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="idGarante" Width="545px"></asp:ListBox>
                                      `<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaDePrestamosConnectionString %>" SelectCommand="SELECT * FROM [garante]"></asp:SqlDataSource>
        </div>
            </div>

                            </div>
                            <div class="tab-pane fade" id="profiles">
                                <h4>Propiedad</h4>
                                <p style="color:aquamarine">
                                      
                                         NO DISPONIBLE POR AHORA 
                                </p>

                            </div>
                            <div class="tab-pane fade" id="messages">
                                <h4>Otra Garantia</h4>
                                <p style="color:aquamarine"> 
                                        NO DISPONIBLE POR AHORA 
                                </p>

                            </div>

                        </div>
                  <asp:Button  runat="server" Text="Registrar Solicitud de prestamos"  ID="btnRalizarPrestamo" CssClass="btn btn-success" OnClick="btnRalizarPrestamo_Click"/>

                 <!-- /. ROW  -->           
    **  </div>
           
         &nbsp;&nbsp;&nbsp;
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                    &copy;  2018 EbryanSistem.com | Design by: <a href="http://binarytheme.com" style="color:#fff;"  target="_blank">Elis Brayan Valdez M.</a>
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
