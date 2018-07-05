using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtError.ForeColor = System.Drawing.Color.White;
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            
            if(Conexion.iniciarSesion(txtContra.Text, "select * from Empleado where usuario='" + txtUser.Text + "'"))
            {
            Server.Transfer("inicio.aspx", true);
                txtError.ForeColor = System.Drawing.Color.White;

            }
            else
            {
                txtError.Text = "Error al Iniciar sesion";
                txtError.ForeColor = System.Drawing.Color.Red;
            }
            
        }
    }
}