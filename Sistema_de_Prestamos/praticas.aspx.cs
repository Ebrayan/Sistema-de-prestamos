using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class praticas : System.Web.UI.Page
    {
        public static int suma;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void cargarImagen_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            suma = suma + 10;
            DateTime otroDia = date.AddDays(suma);
            Int32 dia = otroDia.Day;
            Int32 mes = otroDia.Month;
            Int32 anio= otroDia.Year;
        }
    }
}

