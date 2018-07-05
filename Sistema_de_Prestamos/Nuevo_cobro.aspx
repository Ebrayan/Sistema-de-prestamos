<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nuevo_cobro.aspx.cs" Inherits="Sistema_de_Prestamos.Nuevo_cobro" %>

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
    <title>Sistema  de prestamos</title>
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

                    <li ">
                        <a href="Prestamos.aspx"><i class="fa fa-table "></i>Datos de Prestamos </a>
                    </li>

                    <li class="active-link">
                        <a href="Nuevo_cobro.aspx""><i class="fa fa-money "></i>Cobro</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-money "></i>Datos de Cobro</a>
                    </li>

                     <li >
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
                        <form runat="server">
                            
                            

                        <h1><strong>Cobranza  </strong> de Prestamos</h1>
                                 <h1>
                                     <asp:ListBox ID="ListBox1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="id_solicitud" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Height="194px" Width="717px" AutoPostBack="True"></asp:ListBox>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaDePrestamosConnectionString %>" SelectCommand="select * from solicitud_prestamo  inner join Clietes on Clietes.idCliente= solicitud_prestamo.cliente where aprobacion =1"></asp:SqlDataSource>
                                 </h1> 
                        <!--Formulario-->
                            
                                <h4>Datos de Prestamos</h4>
                                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ver Datos" />
                            <br />
                            <br />
                            <div class="row">
                                            <div class="col-sm-4">
                                        <label for="email"> Cantidad de cuotas</label>
                                        <asp:TextBox  ReadOnly="true"  runat="server" class="form-control" ID="txtCCuota" placeholder="Escriba su Nombre"></asp:TextBox>
                                      </div>
                                <div class="col-sm-4">
                                        <label for="email">Interes</label>
                                        <asp:TextBox ReadOnly="true" runat="server" type="text" class="form-control" ID="txtInteres" placeholder="Escriba Apellido"></asp:TextBox>
                                      </div>
                            </div>

                            
                            <div class="form-group">
                                    <label for="email">Cantidad Solicitada:</label>
                                    <asp:TextBox ReadOnly="true"  runat="server" type="text" class="form-control" id="txtCSolisitada" placeholder="Numero de celular"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="email"> Aprobacion:</label>
                                    <asp:TextBox  ReadOnly="true" runat="server" type="text" class="form-control" id="txtAprobacion" placeholder="Numero de celular"></asp:TextBox>
                                  </div>
                            <div class="form-group">
                                    <label for="email">Forma de pago:</label>
                                    <asp:TextBox  ReadOnly="true" runat="server" type="text" class="form-control" id="txtFormaPago" ></asp:TextBox>
                                  </div>
                            <br />
                            <h4>Datos personales</h4>
                            <br />
                            <br />
                            <div class="row">
                                            <div class="col-sm-4">
                                        <label for="email">Nombre</label>
                                        <asp:TextBox  ReadOnly="true"  runat="server" class="form-control" ID="txtnombre" placeholder="Escriba su Nombre"></asp:TextBox>
                                      </div>
                                <div class="col-sm-4">
                                        <label for="email">Monto  Total a pagar:</label>
                                        <asp:TextBox runat="server" type="text" class="form-control" ID="txtApellido" placeholder="Escriba Apellido"></asp:TextBox>
                                        
                                        <br />
                                      </div>

                            </div>
                            <br />
                                        <asp:GridView ID="grid" runat="server" CssClass="table table-condensed table-bordered " >
                                        </asp:GridView>
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" Height="71px" Width="321px">
                                        </asp:DropDownList>

                                 <br />

                                 <asp:Button runat="server" ID="btnAprobar" Text="Pago Cuota" class="btn btn-success" OnClick="btnAprobar_Click" />
                                 <asp:Button runat="server" ID="btnNoAprobar" Text="Anadir Mora" class="btn btn-danger" OnClick="btnNoAprobar_Click"/>
                                 <asp:Button runat="server" ID="btnPendiente" Text="Hacer descuento" class="btn btn-warning" />
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

