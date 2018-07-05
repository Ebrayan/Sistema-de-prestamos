using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class salir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Aplicacion.usuarioActive = null;
            Response.Redirect("IniciarSesion.aspx");

        }
    }
}