using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Prestamos.Modelos
{
   

    public class Notificacio
    {

   public int idNotificacion { get; set; }
        public int tipo { get; set; }
        public String empleado { get; set; }
        public String cliente { get; set; }
        public int cantidad { get; set; }
        public String descripcion { get; set; }
        public String fecha { get; set; }

        public string generaString()
        {
            string resul = null;
            switch (tipo)
            {
                case 1:
                    resul = "El usuario " + this.empleado + " registro una solicitud de prestamo a " + cliente + " de " + cantidad + "$ </br>" + fecha;
                    break;
                case 2:
                    resul = "El usuario " + this.empleado + " aprobo una solicitud de prestamo a " + cliente + " de " + cantidad + "$ </br>" + fecha;
                    break;
                case 3:
                    resul = "El usuario " + this.empleado + " cobro   cuota  " + descripcion+ " a" + cliente+ "$ </br>" + fecha;
                    break;
                case 4:
                    resul = "El usuario " + this.empleado + " registro a" + cliente+ "$ </br>" + fecha;
                    break;
            }
            return resul;
        }

    }

}