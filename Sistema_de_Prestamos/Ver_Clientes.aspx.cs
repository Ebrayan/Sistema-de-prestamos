using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class Ver_Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Aplicacion.GetEmpleadoActivo().Nombre == "") Response.Redirect("IniciarSesion.aspx");

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton del = (LinkButton)e.Row.FindControl("LinkButton1");
                del.Attributes.Add("onclick", "return confirm('Esta seguro de que quiere borrar este elemento?');");
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void nuec(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton del = (LinkButton)e.Row.FindControl("LinkButton2");
                del.Attributes.Add("onclick", "return confirm('Esta seguro de que quiere borrar este elemento?');");
            }
        }
    }
}