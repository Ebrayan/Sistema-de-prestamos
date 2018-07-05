using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Aplicacion.GetEmpleadoActivo().Nombre == "") { Response.Redirect("IniciarSesion.aspx"); }
            else
            {
                ArrayList lista = Conexion.buscarNotificaciones("select * from Notificacion order by fecha desc");
                String[] notis = (String[]) lista.ToArray(typeof(String));
                for (int i = 0; i < notis.Length; i++)
                {
                    HtmlGenericControl row2 = new HtmlGenericControl("div");
                    HtmlGenericControl row = new HtmlGenericControl("div");
                    HtmlGenericControl item = new HtmlGenericControl("div");

                    row2.Attributes.Add("class", "col-lg-12" );
                    item.Attributes.Add("class", "alert alert-info");
                    row.Attributes.Add("class", "row");
                    Label label = new Label();
                    label.Text = "<strong>"+notis[i]+"</strong>";
                    item.Controls.Add(label);
                    row2.Controls.Add(item);
                    row.Controls.Add(row2);
                    contenedor.Controls.Add(row);

                }
                txtSaludo.Text = "<strong>Welcome " + Aplicacion.GetEmpleadoActivo().Nombre + " ! </strong> You Have No pending Task For Today.";

            }
        }
    }
}