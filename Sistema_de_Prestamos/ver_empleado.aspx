<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ver_empleado.aspx.cs" Inherits="Sistema_de_Prestamos.ver_empleado" %>

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

    <title>ver Empleados</title>
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
            <asp:Label Text="Listado de Cuentas de usuarios" ID="txtHola" runat="server"></asp:Label>
         </div>
       
               
            <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idEmpleado" DataSourceID="SqlDataSource1" CssClass="table table-responsive table-bordered table-hover">
                
                <Columns>
                  
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  
                    <asp:BoundField DataField="idEmpleado" HeaderText="idEmpleado" InsertVisible="False" ReadOnly="True" SortExpression="idEmpleado" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                    <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                    <asp:BoundField DataField="Contra" HeaderText="Contra" SortExpression="Contra" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaDePrestamosConnectionString %>" SelectCommand="SELECT * FROM [Empleado]" DeleteCommand="DELETE FROM [Empleado] WHERE [idEmpleado] = @idEmpleado" InsertCommand="INSERT INTO [Empleado] ([Nombre], [Celular], [Sueldo], [Usuario], [Contra], [Categoria]) VALUES (@Nombre, @Celular, @Sueldo, @Usuario, @Contra, @Categoria)" UpdateCommand="UPDATE [Empleado] SET [Nombre] = @Nombre, [Celular] = @Celular, [Sueldo] = @Sueldo, [Usuario] = @Usuario, [Contra] = @Contra, [Categoria] = @Categoria WHERE [idEmpleado] = @idEmpleado">
                <DeleteParameters>
                    <asp:Parameter Name="idEmpleado" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Celular" Type="String" />
                    <asp:Parameter Name="Sueldo" Type="String" />
                    <asp:Parameter Name="Usuario" Type="String" />
                    <asp:Parameter Name="Contra" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Celular" Type="String" />
                    <asp:Parameter Name="Sueldo" Type="String" />
                    <asp:Parameter Name="Usuario" Type="String" />
                    <asp:Parameter Name="Contra" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="idEmpleado" Type="Int32" />
                </UpdateParameters>

            </asp:SqlDataSource>
        </div>
              
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
        $("#btnprueba").click(prueba);

});
</script>

 
</body>
</html>
