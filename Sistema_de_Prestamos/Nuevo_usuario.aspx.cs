using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Aplicacion.GetEmpleadoActivo().Nombre == "") Response.Redirect("IniciarSesion.aspx");

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

            Clientes NuevoCliente = new Clientes();
            NuevoCliente.Nombre = txtnombre.Text +"  "+txtApellido.Text;
            NuevoCliente.Telefono = txtTelefono.Text;
            NuevoCliente.Celular= txtCelular.Text;
            NuevoCliente.Cedula = txtCedula.Text;
            NuevoCliente.Residencia= txtResidencia.Text;
            NuevoCliente.Correo= txtemail.Text;
            NuevoCliente.Sexo = radioList.Text;
            NuevoCliente.Empresa= txtEmpresa.Text;
            NuevoCliente.Telefono_Empresa = txtTEmpresa.Text;
            NuevoCliente.Puesto= txtPuesto.Text;
            NuevoCliente.Ingreso = txtIngreso.Text;
            NuevoCliente.Supervisor = txtSupervisor.Text;
            NuevoCliente.Otro_Ingreso = txtOtroIngreso.Text;
            NuevoCliente.insertarCliente();
            
        }
    }
}