<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ver_Clientes.aspx.cs" Inherits="Sistema_de_Prestamos.Ver_Clientes" %>

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

    <title>Ver Clientes</title>
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
                    <div class="col-md-8">
                     <h2>Ver Cliente </h2>   

                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              <div class="row">  
            <div class="col-md-8" id="prueba"> 
    <form id="form_Table" runat="server">
        <div>
            <asp:Label Text="Listado de clientes" ID="txtHola" runat="server"></asp:Label>
         </div>
       
               
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCliente" DataSourceID="SqlDataSource1" CssClass="table table-hover table-responsive table-striped table-bordered" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="idCliente" HeaderText="idCliente" InsertVisible="False" ReadOnly="True" SortExpression="idCliente" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" ReadOnly="True" />
                        <asp:BoundField DataField="Residencia" HeaderText="Residencia" SortExpression="Residencia" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" readonly="true" />
                        <asp:BoundField DataField="Empresa" HeaderText="Empresa" SortExpression="Empresa" />
                        <asp:BoundField DataField="Telefono_Empresa" HeaderText="Telefono_Empresa" SortExpression="Telefono_Empresa" />
                        <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
                        <asp:BoundField DataField="Ingreso" HeaderText="Ingreso" SortExpression="Ingreso" />
                        <asp:BoundField DataField="Supervisor" HeaderText="Supervisor" SortExpression="Supervisor" />
                        <asp:BoundField DataField="Otro_Ingreso" HeaderText="Otro_Ingreso" SortExpression="Otro_Ingreso" />
                        <asp:CommandField ButtonType="Button" HeaderText="Seleccionar" ShowHeader="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaDePrestamosConnectionString %>" DeleteCommand="DELETE FROM [Clietes] WHERE [idCliente] = @idCliente" InsertCommand="INSERT INTO [Clietes] ([Nombre], [Telefono], [Celular], [Cedula], [Residencia], [Correo], [Sexo], [Empresa], [Telefono_Empresa], [Puesto], [Ingreso], [Supervisor], [Otro_Ingreso]) VALUES (@Nombre, @Telefono, @Celular, @Cedula, @Residencia, @Correo, @Sexo, @Empresa, @Telefono_Empresa, @Puesto, @Ingreso, @Supervisor, @Otro_Ingreso)" SelectCommand="SELECT * FROM [Clietes]" UpdateCommand="UPDATE [Clietes] SET [Nombre] = @Nombre, [Telefono] = @Telefono, [Celular] = @Celular, [Cedula] = @Cedula, [Residencia] = @Residencia, [Correo] = @Correo, [Sexo] = @Sexo, [Empresa] = @Empresa, [Telefono_Empresa] = @Telefono_Empresa, [Puesto] = @Puesto, [Ingreso] = @Ingreso, [Supervisor] = @Supervisor, [Otro_Ingreso] = @Otro_Ingreso WHERE [idCliente] = @idCliente">
                    <DeleteParameters>
                        <asp:Parameter Name="idCliente" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Residencia" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                        <asp:Parameter Name="Empresa" Type="String" />
                        <asp:Parameter Name="Telefono_Empresa" Type="String" />
                        <asp:Parameter Name="Puesto" Type="String" />
                        <asp:Parameter Name="Ingreso" Type="String" />
                        <asp:Parameter Name="Supervisor" Type="String" />
                        <asp:Parameter Name="Otro_Ingreso" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />         
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Residencia" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                        <asp:Parameter Name="Empresa" Type="String" />
                        <asp:Parameter Name="Telefono_Empresa" Type="String" />
                        <asp:Parameter Name="Puesto" Type="String" />
                        <asp:Parameter Name="Ingreso" Type="String" />
                        <asp:Parameter Name="Supervisor" Type="String" />
                        <asp:Parameter Name="Otro_Ingreso" Type="String" />
                        <asp:Parameter Name="idCliente" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
              
    </form>
         
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
    <script src="assets/js/miScript.js"></script>

    
<script>
    $(document).ready(function () {
        prueba();
        function prueba() {
        var div = document.getElementById("prueba")
        var trs = div.getElementsByTagName("a");
        var num = parseInt(trs.length);
            for (var i = 0; i < num; i++) {
                if (trs[i].text == 'Delete') {
                    trs[i].style.background = "blue";
                    trs[i].style.color = "black";
                    trs[i].text = "Borrar";
                    trs[i].style.fontSize = "15px";
                    trs[i].style.fontWeight = "bold";
                    trs[i].style.padding = "4px";
                    trs[i].style.borderRadius = "5px"
                    trs[i].style.textDecoration = "none";

                } else if (trs[i].text == 'Cancel'){
                    trs[i].style.background="red";
                    trs[i].style.color = "black";
                    trs[i].text = "Cacelar";
                    trs[i].style.fontSize = "15px";
                    trs[i].style.fontWeight= "bold"; 
                    trs[i].style.padding = "6px";
                    trs[i].style.borderRadius="6px"
                     trs[i].style.textDecoration= "none";
                }else if (trs[i].text == 'Update'){
                    trs[i].style.background="yellow";
                    trs[i].style.color = "black";
                    trs[i].text = "Actualizar";
                    trs[i].style.fontSize = "15px";
                    trs[i].style.fontWeight= "bold"; 
                    trs[i].style.padding = "6px";
                    trs[i].style.borderRadius="6px"
                     trs[i].style.textDecoration= "none";
                }else if (trs[i].text == 'Edit'){
                    trs[i].style.background="orange";
                    trs[i].style.color = "black";
                    trs[i].text = "Editar";
                    trs[i].style.fontSize = "15px";
                    trs[i].style.fontWeight= "bold"; 
                    trs[i].style.padding = "6px";
                    trs[i].style.borderRadius="6px"
                     trs[i].style.textDecoration= "none";
                }

            }
        

          
	}
 
});
</script>


</body>
</html>
