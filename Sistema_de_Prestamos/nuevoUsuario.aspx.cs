using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class nuevoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtError.ForeColor = System.Drawing.Color.White;
            if (Aplicacion.GetEmpleadoActivo().Nombre == "") Response.Redirect("IniciarSesion.aspx");

        }

        protected void btnRegistrarEmpleado_Click(object sender, EventArgs e)
        {
            String Nombre = txtnombre.Text;
            String Apellido = txtApellido.Text;
            String Celular = txtTelefono.Text;
            String sueldo = txtSueldo.Text;
            string user = txtUser.Text;
            string contrasena = txtContra.Text;
            string categoria = cajaCategoria.Text;
            if (Nombre != "" && Apellido != "" && Celular != "" && sueldo != "" && user != "" && contrasena != "")
            {
                Conexion.insertar("insert into Empleado values ('" + Nombre +"  "+ Apellido + "','" + Celular + "','" + sueldo + "','" + user + "','" + contrasena + "','" + categoria + "' )");
                txtnombre.Text="";
                txtApellido.Text = "";
                txtTelefono.Text = "";
                txtSueldo.Text = "";
                txtUser.Text = "";
                txtContra.Text = "";
                txtError.Text = "Empleado Registrado correctamente";
                txtError.ForeColor = System.Drawing.Color.Blue;

            }
            else
            {
                txtError.Text = "Asegurese de no dejar ningun campo Vacio";
                txtError.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}